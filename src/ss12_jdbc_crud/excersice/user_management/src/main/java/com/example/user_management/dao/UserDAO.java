package com.example.user_management.dao;

import com.example.user_management.model.User;

import java.math.BigDecimal;
import java.sql.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class UserDAO implements IUserDAO {
    private static final String SQL_INSERT = "INSERT INTO EMPLOYEE (NAME, SALARY, CREATED_DATE) VALUES (?,?,?)";

    private static final String SQL_UPDATE = "UPDATE EMPLOYEE SET SALARY=? WHERE NAME=?";

    private static final String SQL_TABLE_CREATE = "CREATE TABLE EMPLOYEE"

            + "("

            + " ID serial,"

            + " NAME varchar(100) NOT NULL,"

            + " SALARY numeric(15, 2) NOT NULL,"

            + " CREATED_DATE timestamp,"

            + " PRIMARY KEY (ID)"

            + ")";

    private static final String SQL_TABLE_DROP = "DROP TABLE IF EXISTS EMPLOYEE";
    private static final String PROCEDURE_SELECT_ALL_USERS = "call get_all_user()";
    private static final String PROCEDURE_UPDATE_USER = "call edit_user_by_id(?,?,?,?)";
    private static final String PROCEDURE_DELETE_USER_BY_ID = "call delete_user_by_id(?)";
    private static final String INSERT_USERS_SQL = "insert into users(name,email,country)values(?,?,?)";
    private static final String SELECT_USER_BY_ID = "select id,name,email,country from users where id =?";
    private static final String SELECT_ALL_USERS = "select * from users";
    private static final String DELETE_USERS_SQL = "delete from users where id = ?";
    private static final String UPDATE_USERS_SQL = "update users set name = ?,email= ?, country =? where id = ?";

    public UserDAO() {

    }

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String jdbcURL = "jdbc:mysql://localhost:3306/user?useSSL=false";
            String jdbcUsername = "root";
            String jdbcPassword = "123456cc";
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    @Override
    public void insertUser(User user) throws SQLException {
        System.out.println(INSERT_USERS_SQL);
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getCountry());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    @Override
    public User selectUser(int id) {
        User user = null;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                user = new User(id, name, email, country);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return user;
    }

    @Override
    public List<User> selectAllUser() {
        List<User> users = new ArrayList<>();
        try (
                Connection connection = getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS)) {
            System.out.println(preparedStatement);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                users.add(new User(id, name, email, country));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return users;
    }

    @Override
    public List<User> selectAllUserProcedure() {
        List<User> userList = new ArrayList<>();
        Connection connection = getConnection();
        try {
            CallableStatement prepareCall = connection.prepareCall(PROCEDURE_SELECT_ALL_USERS);
            ResultSet resultSet = prepareCall.executeQuery();
            int id;
            String name;
            String email;
            String country;
            while (resultSet.next()) {
                id = resultSet.getInt("id");
                name = resultSet.getString("name");
                email = resultSet.getString("email");
                country = resultSet.getString("country");
                userList.add(new User(id, name, email, country));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return userList;
    }

    @Override
    public boolean deleteUser(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(DELETE_USERS_SQL);) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    @Override
    public boolean deleteUserProcedure(int id) throws SQLException {
        boolean rowDeleted;
        Connection connection = getConnection();
        CallableStatement callableStatement = connection.prepareCall(PROCEDURE_DELETE_USER_BY_ID);
        callableStatement.setInt(1, id);
        rowDeleted = callableStatement.executeUpdate() > 0;
        return rowDeleted;
    }

    @Override
    public boolean updateUserProcedure(User user) throws SQLException {
        boolean rowUpdated;
        Connection connection = getConnection();
        CallableStatement callableStatement = connection.prepareCall(PROCEDURE_UPDATE_USER);
        callableStatement.setInt(1, user.getId());
        callableStatement.setString(2, user.getName());
        callableStatement.setString(3, user.getEmail());
        callableStatement.setString(4, user.getCountry());
        rowUpdated = callableStatement.executeUpdate() > 0;
        return rowUpdated;
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        boolean rowUpdated;
        Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_USERS_SQL);
        preparedStatement.setString(1, user.getName());
        preparedStatement.setString(2, user.getEmail());
        preparedStatement.setString(3, user.getCountry());
        preparedStatement.setInt(4, user.getId());
        rowUpdated = preparedStatement.executeUpdate() > 0;
        return rowUpdated;
    }

    @Override
    public List<User> sortAscending(List<User> userList) {
        List<User> userListAscending = userList;
        userListAscending.sort(new ComparatorAscending());
        return userListAscending;
    }

    @Override
    public List<User> sortDescending(List<User> userList) {
        List<User> userListDescending = userList;
        userList.sort(new ComparatorDescending());
        return userListDescending;
    }

    @Override
    public List<User> searchByCountry(String country) {
        List<User> userList = selectAllUser();
        List<User> listUserResult = new ArrayList<>();
        for (User user : userList) {
            if (user.getCountry().equals(country)) {
                listUserResult.add(user);
            }
        }
        return userList;
    }

    @Override
    public User getUserById(int id) {
        User user = null;
        String query = "Call get_user_by_id(?)";

        try (Connection connection = getConnection();
             CallableStatement callableStatement = connection.prepareCall(query)) {
            callableStatement.setInt(1, id);
            ResultSet rs = callableStatement.executeQuery();

            while (rs.next()) {
                String name = rs.getString("name");
                String email = rs.getString("email");
                String country = rs.getString("country");
                user = new User(id, name, email, country);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return user;
    }


    @Override
    public void insertUserStore(User user) throws SQLException {
        String query = "{Call insert_user(?,?,?)}";
        try (Connection connection = getConnection();
             CallableStatement callableStatement = connection.prepareCall(query)) {
            callableStatement.setString(1, user.getName());
            callableStatement.setString(2, user.getEmail());
            callableStatement.setString(3, user.getCountry());
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    @Override
    public void addUserTransaction(User user, int[] permission) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        PreparedStatement pstmtAssignment = null;
        ResultSet resultSet = null;
        try {
            conn = getConnection();
            conn.setAutoCommit(false);
            pstmt = conn.prepareStatement(INSERT_USERS_SQL, Statement.RETURN_GENERATED_KEYS);
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(2, user.getCountry());
            int rowAffected = pstmt.executeUpdate();
            resultSet = pstmt.getGeneratedKeys();
            int useId = 0;
            if (resultSet.next()) {
                useId = resultSet.getInt(1);
            }
            if (true) {
                System.out.println("demo");
            }
            if (rowAffected == 1) {
                String sqlPivot = "insert into user_permission(user_id, permission_id)"
                        + "values(?,?)";
                pstmtAssignment = conn.prepareStatement(sqlPivot);
                for (int permissionId : permission) {
                    pstmtAssignment.setInt(1, useId);
                    pstmtAssignment.setInt(2, permissionId);
                    pstmtAssignment.executeUpdate();
                }
                conn.commit();
            } else {
                conn.rollback();
            }
        } catch (SQLException ex) {
            try {
                if (conn != null) {
                    conn.rollback();
                }
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
            System.out.println(ex.getMessage());
        } finally {
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (pstmt != null) {
                    pstmt.close();
                }
                if (pstmtAssignment != null) {
                    pstmtAssignment.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
    }

    @Override
    public void insertUpdateWithoutTransaction() {
        try (Connection conn = getConnection();
             Statement statement = conn.createStatement();
             PreparedStatement psInsert = conn.prepareStatement(SQL_INSERT);
             PreparedStatement psUpdate = conn.prepareStatement(SQL_UPDATE)) {

            statement.execute(SQL_TABLE_DROP);
            statement.execute(SQL_TABLE_CREATE);

            psInsert.setString(1, "Quynh");
            psInsert.setBigDecimal(2, new BigDecimal(10));
            psInsert.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
            psInsert.execute();

            psInsert.setString(1, "Ngan");
            psInsert.setBigDecimal(2, new BigDecimal(20));
            psInsert.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
            psInsert.execute();

            psUpdate.setBigDecimal(2, new BigDecimal(999.99));
            psUpdate.setString(2, "Quynh");
            psUpdate.execute();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void insertUpdateUseTransaction() throws SQLException {
        Connection conn = getConnection();
        try {
            Statement statement = conn.createStatement();
            PreparedStatement psInsert = conn.prepareStatement(SQL_INSERT);
            PreparedStatement psUpdate = conn.prepareStatement(SQL_UPDATE);
            statement.execute(SQL_TABLE_DROP);
            statement.execute(SQL_TABLE_CREATE);
            conn.setAutoCommit(false);
            psInsert.setString(1, "Quynh");
            psInsert.setBigDecimal(2, new BigDecimal(10));
            psInsert.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
            psInsert.execute();

            psInsert.setString(1, "Ngan");
            psInsert.setBigDecimal(2, new BigDecimal(20));
            psInsert.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
            psInsert.execute();

            psUpdate.setBigDecimal(1, new BigDecimal(999.99));
            psUpdate.setString(2, "Quynh");
            psUpdate.execute();
            conn.commit();
            conn.setAutoCommit(true);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            conn.rollback();
            e.printStackTrace();
        }
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}

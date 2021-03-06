package de.micromata.talks.websecurity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Simple database access
 * For demonstration purpose only !!!!!
 * Don't use this code for a real project. !!!!!
 * @author Sebastian Hardt (s.hardt@micromata.de)
 */
public class DatabaseHandler
{

  /**
   * Singleton instance
   */
  private final static DatabaseHandler INSTANCE = new DatabaseHandler();

  private Connection conn;

  /**
   * Private constructor
   */
  private DatabaseHandler()
  {
    super();

    try {
      Class.forName("org.h2.Driver");
      conn = DriverManager.getConnection("jdbc:h2:mem:");
      initData();
    } catch (ClassNotFoundException | SQLException ex) {
      System.err.println("Could not create h2 database: jdbc:h2:./test reason: " + ex.getMessage());
    }
  }

  /**
   * We need some data for doing evil stuff :)
   */
  private void initData() throws SQLException
  {
    conn.createStatement().execute("CREATE TABLE PUBLIC.USERS"
      + "(pk INTEGER AUTO_INCREMENT,"
      + "name VARCHAR(25) NOT NULL,"
      + "password VARCHAR(25) NOT NULL,"
      + "PRIMARY KEY (pk))");

    conn.createStatement().execute("INSERT INTO PUBLIC.USERS (name,password) VALUES ('seppel','secret')");
    conn.createStatement().execute("INSERT INTO PUBLIC.USERS (name,password) VALUES ('deppel','secret')");
    conn.createStatement().execute("INSERT INTO PUBLIC.USERS (name,password) VALUES ('meppel','secret')");
    conn.createStatement().execute("INSERT INTO PUBLIC.USERS (name,password) VALUES ('alf','secret')");
    conn.createStatement().execute("INSERT INTO PUBLIC.USERS (name,password) VALUES ('horst','secret')");


    conn.createStatement().execute("CREATE TABLE PUBLIC.UBER_SECRET_TABLE"
      + "(pk INTEGER AUTO_INCREMENT,"
      + "data1 VARCHAR(25) NOT NULL,"
      + "data2 VARCHAR(25) NOT NULL,"
      + "PRIMARY KEY (pk))");

    conn.createStatement().execute("INSERT INTO PUBLIC.UBER_SECRET_TABLE (data1,data2) VALUES ('data','more data')");
    conn.createStatement().execute("INSERT INTO PUBLIC.UBER_SECRET_TABLE (data1,data2) VALUES ('data1','more data1')");
    conn.createStatement().execute("INSERT INTO PUBLIC.UBER_SECRET_TABLE (data1,data2) VALUES ('data2','more data2')");
  }

  /**
   * Execute a query
   * @param queryToExecute
   * @return
   * @throws SQLException
   */
  public ResultSet executeQuery(final String queryToExecute) throws SQLException {
    final ResultSet resultSet = conn.createStatement().executeQuery(queryToExecute);
    return resultSet;
  }


  /**
   * Executes a prepared statement
   * @param queryToExecute
   * @param params
   * @return
   * @throws SQLException
   */
  public ResultSet executePreparedStmt(final String queryToExecute, final String ... params) throws SQLException {
    final PreparedStatement preparedStatement = conn.prepareStatement(queryToExecute);
    for (int idx=1; idx <= params.length; idx++) {
       preparedStatement.setString(idx,params[idx-1]);
    }
    return preparedStatement.executeQuery();
  }

  /**
   * To access the singleton instance call this.
   *
   * @return the instance of the {@link DatabaseHandler}
   */
  public static DatabaseHandler get()
  {
    return INSTANCE;
  }

}

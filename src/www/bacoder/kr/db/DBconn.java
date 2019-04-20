package www.bacoder.kr.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Properties;
import java.util.logging.Logger;

public class DBconn {
	Logger logger = Logger.getLogger(DBconn.class.getSimpleName());
	
	private String userName 	= "admin";
	private String password 	= "1111";
	private String dbms 		= "oracle";
	private String serverName 	= "localhost";
	private int portNumber 		= 1521;
	
	public Connection getConnection() throws SQLException {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	    Connection conn = null;
	    Properties connectionProps = new Properties();
	    connectionProps.put("user", this.userName);
	    connectionProps.put("password", this.password);

	    if (this.dbms.equals("oracle")) {
	    	final String connectionInfo = "jdbc:" + this.dbms + ":thin:@" +
	                   this.serverName +
	                   ":" + this.portNumber + ":xe";
	    	
	        conn = DriverManager.getConnection(connectionInfo , connectionProps);
	    }
	    return conn;
	}
}
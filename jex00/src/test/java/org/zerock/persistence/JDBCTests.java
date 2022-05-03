package org.zerock.persistence;

import static org.junit.Assert.fail;

import java.sql.*;

import org.junit.*;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTests {
	
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void testConnection() {
		
		try(Connection conn = DriverManager.getConnection(
				"jdbc:oracle:thin:@10.211.55:1521:XE",
				"test","1234")){
			log.info(conn);
		}catch (Exception e) {
			fail(e.getMessage());
		}
	}
	
}

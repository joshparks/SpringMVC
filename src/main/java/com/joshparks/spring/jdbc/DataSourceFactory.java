package com.joshparks.spring.jdbc;

import java.io.IOException;
import java.util.Properties;

import javax.sql.DataSource;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;

public class DataSourceFactory {

	public static DataSource getMySQLDataSource() {
		
		Properties props = new Properties();
		MysqlDataSource mysqlDS = null;
		
		try {

			props.load(DataSourceFactory.class.getResourceAsStream("/db.properties"));
			mysqlDS = new MysqlDataSource();
			mysqlDS.setURL(props.getProperty("MYSQL_DB_URL"));
			mysqlDS.setUser(props.getProperty("MYSQL_DB_USERNAME"));
			mysqlDS.setPassword(props.getProperty("MYSQL_DB_PASSWORD"));
		
		} catch (IOException e) {
			
			e.printStackTrace();
			
		}
		
		return mysqlDS;
	}

}

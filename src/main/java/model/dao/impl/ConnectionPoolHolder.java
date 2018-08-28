package model.dao.impl;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;

import controller.resource.DatabaseManager;

public class ConnectionPoolHolder {
	private static volatile DataSource dataSource;

	public static DataSource getDataSource() {

		if (dataSource == null) {
			synchronized (ConnectionPoolHolder.class) {
				if (dataSource == null) {
					BasicDataSource ds = new BasicDataSource();
					ds.setUrl(DatabaseManager.getProperty("db.url"));
					ds.setUsername(DatabaseManager.getProperty("db.username"));
					ds.setPassword(DatabaseManager.getProperty("db.password"));
					ds.setConnectionProperties("useUnicode=" + DatabaseManager.getProperty("db.useUnicode") + ";characterEncoding=" + DatabaseManager.getProperty("db.encoding"));
					ds.setMinIdle(5);
					ds.setMaxIdle(10);
					ds.setMaxOpenPreparedStatements(100);
					dataSource = ds;
				}
			}
		}
		return dataSource;
	}
}

package com.jspider.musicplayerjsp.jdbc;


import java.io.File;
import java.io.FileReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;
import java.util.Scanner;

public class Jdbc {
	public static Connection connection;
	public static PreparedStatement preparedStatement;
	public static ResultSet resultSet;
	public static FileReader fileReader;
	public static Properties properties;
	public static int result;
	public static String query;
	public static Scanner scanner = new Scanner(System.in);
	public static String filePath = "D:/J2EE - WEJA1/musicplayerjsp/resources/db_info.properties";
	
	public static void openConnection() {
		try {
			fileReader = new FileReader(filePath);
			File file=new File(filePath);
			System.out.println(file.exists());
			properties = new Properties();
			properties.load(fileReader);
			Class.forName(properties.getProperty("driverPath"));
			connection = DriverManager.getConnection(properties.getProperty("dburl"), properties);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public static void closeConnection() {
		try {
			if (connection != null) {
				connection.close();
			}
			if (preparedStatement != null) {
				preparedStatement.close();
			}
			if (resultSet != null) {
				resultSet.close();
			}
			if (fileReader != null) {
				fileReader.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

package br.edu.una.tidir4.RotativoDigital.BD;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConectaBanco {
	/*
	 *Conectar ao Bando de dados 
	 */
	public Connection getConnection(){
		try{
			return DriverManager.getConnection("jdbc:mysql://localhost/db_RotativoDigital","root","");
			
		}
		catch(SQLException e){
			throw new RuntimeException(e);
		}	
	}

}

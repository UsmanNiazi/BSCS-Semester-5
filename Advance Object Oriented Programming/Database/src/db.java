/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Usman
 */
import java.sql.*;
import net.ucanaccess.jdbc.*;
public class db {

    /**
     *
     * @param args
     */
    public static void main(String[] args){
          try {
             
              Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");//Loading Driver
              Connection connection= DriverManager.getConnection("jdbc:ucanaccess://D://test.accdb");//Establishing Connection
              System.out.println("Connected Successfully");
 
          }catch(Exception e){
              System.out.println("Error in connection");
 
          }}}
    


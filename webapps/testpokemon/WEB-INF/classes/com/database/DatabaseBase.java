package com.database;
import java.sql.*;
public class DatabaseBase{
  private Connection con =null;
  private Statement stmt= null;//what is going on now
  private ResultSet rs=null;//something return
  private String ip = "";
  private String port ="";
  private String url="";
  private String db="";
  private String user="";
  private String password="";
  private String driver="com.mysql.jdbc.Driver";

  public DatabaseBase(){

  }
  //means the connect with
  public void connectDB(){
    try{
      url="jdbc:mysql://" + ip +":" + port +"/"+db+"?useUnicode=true&characterEncoding=utf-8";
      Class.forName(driver);
      con=DriverManager.getConnection(url,user,password);
      stmt=con.createStatement();
    }catch(Exception ex){
      System.out.println(ex);
    }
  }
  public void query(String sql){
    try{
      rs=stmt.executeQuery(sql);
    }catch(Exception ex){
      System.out.println(ex);
    }
  }
  public void insertData(String products_id, String numbers){
    try{
      String sql="insert into orders(products_id,numbers) values (?,?)";
      PreparedStatement ps=con.prepareStatement(sql);
      ps.setString(1,products_id);
      ps.setString(2,numbers);
      int a = ps.executeUpdate();
    }catch(Exception ex){
      System.out.println(ex);
    }
  }

  // public void editData(String  products_id,String  numbers){
  //   try{
  //     String sql = "update orders products_id = '" + products_id + "' ,  numbers = '" + numbers + "' where id = " + id;
  //     int a = stmt.executeUpdate(sql);
  //   }catch(Exception ex){
  //     System.out.println(ex);
  //   }
  // }

  public void deleteData(String id){
    try{
      String sql = "delete from orders where id = "+ id;
      int a =stmt.executeUpdate(sql);
    }catch(Exception ex){
      System.out.println(ex);
    }
  }

  public Connection getCon(){
    return con;
  }
  public ResultSet getRS(){
    return rs;
  }
  public void setIp(String ip){
    this.ip=ip;
  }
  public void setPort(String port){
    this.port=port;
  }
  public void setUrl(String ip , String port){
    this.url="jdbc:mysql://" + ip +":" + port +"/";
  }
  public void setDb(String dbName){
    this.db=dbName;
  }
  public void setUser(String username){
    this.user=username;
  }
  public void setPassword(String password){
    this.password=password;
  }
  public void setDriver(String driver){
    this.driver=driver;
  }
}

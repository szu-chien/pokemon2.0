package com.database;
import java.sql.*;
public class Database{
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

  public Database(){

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
  public void insertData(String name, String logo, String price, String image){
    try{
      String sql="insert into products(name, logo, price, image) values (?,?,?,?)";
      PreparedStatement ps=con.prepareStatement(sql);
      ps.setString(1,name);
      ps.setString(2,logo);
      ps.setString(3,price);
      ps.setString(4,image);
      int a = ps.executeUpdate();
    }catch(Exception ex){
      System.out.println(ex);
    }
  }

  public void editData(String id,String name, String logo, String price, String image, String inventory){
    try{
      String sql = "update products set name = '" + name + "' , logo = '" + logo + "' , price = '" + price + "' , image = '" + image + "' , inventory = '" + inventory+ "' where id = " + id;
      int a = stmt.executeUpdate(sql);
    }catch(Exception ex){
      System.out.println(ex);
    }
  }

  public void deleteData(String id){
    try{
      String sql = "delete from products where id = "+ id;
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

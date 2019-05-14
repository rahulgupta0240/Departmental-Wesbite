
package database.app;
import database.util.DatabaseProvider;
import java.sql.*;
public class Database {
   private DatabaseProvider databaseProvider;
   private Statement statement;
    private ResultSet resultSet;
    
        Connection connection;
    
     public Database() throws Exception
    {
        databaseProvider=new DatabaseProvider();
        databaseProvider.initialize();
        try {
            connection= databaseProvider.connect("root", "");
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    
    }
     public boolean check(String user,String pass) throws Exception
    {
     resultSet=null;
    statement=connection.createStatement();
 
        
    try {
            resultSet=statement.executeQuery("select * from admin where user='" + user + "' && pass='" + pass + "'");
        } catch (Exception e) {
            throw e;
        }
        if (resultSet.next()){
       return true;
       
    }
        
         return false;
    }
      public void addUpdate(String title,String des,String file) throws SQLException
    {
    statement =connection.createStatement();
        try {
            statement.execute("insert into updates (title,description,file) values('" +title + "','"+des +"', '"+file +"')");
       statement.close();
       
        
        } catch (Exception e) {
            throw e;
        }
    }
    public void addGallery(String name) throws SQLException
    {
    statement =connection.createStatement();
        try {
            statement.execute("insert into gallery (img) values('" +name + "')");
       statement.close();
       
        
        } catch (Exception e) {
            throw e;
        }
    }
      public void addStaff(String name,String quali,String file) throws SQLException
    {
    statement =connection.createStatement();
        try {
            statement.execute("insert into staff (name,qualification,file) values('" +name + "','"+quali +"', '"+file +"')");
       statement.close();
       
        
        } catch (Exception e) {
            throw e;
        }
    }
      public void addPlacement(String name,String cname,String salary,String file) throws SQLException
    {
    statement =connection.createStatement();
        try {
            statement.execute("insert into placement (name,company,salary,file) values('" +name + "','"+cname +"','"+salary +"', '"+file +"')");
       statement.close();
       
        
        } catch (Exception e) {
            throw e;
        }
    }
      public void addEvent(String title,String des,String date ,String file) throws SQLException
    {
    statement =connection.createStatement();
        try {
            statement.execute("insert into event (title,description,date,file) values('" +title + "','"+des +"','"+date +"', '"+file +"')");
       statement.close();
       
        
        } catch (Exception e) {
            throw e;
        }
    }
    public ResultSet getAllFeedback() throws Exception
    {
    resultSet=null;
    statement=connection.createStatement();
        try {
            resultSet=statement.executeQuery("select * from feedback");
        } catch (Exception e) {
            throw e;
        }
        return resultSet;
    }
    public ResultSet getUpdate() throws Exception
    {
    resultSet=null;
    statement=connection.createStatement();
        try {
            resultSet=statement.executeQuery("select * from updates");
        } catch (Exception e) {
            throw e;
        }
        return resultSet;
    }
     public ResultSet getStaff() throws Exception
    {
    resultSet=null;
    statement=connection.createStatement();
        try {
            resultSet=statement.executeQuery("select * from Staff");
        } catch (Exception e) {
            throw e;
        }
        return resultSet;
    }
    public ResultSet getGallery() throws Exception
    {
    resultSet=null;
    statement=connection.createStatement();
        try {
            resultSet=statement.executeQuery("select * from gallery");
        } catch (Exception e) {
            throw e;
        }
        return resultSet;
    }
    public ResultSet getPlacement() throws Exception
    {
    resultSet=null;
    statement=connection.createStatement();
        try {
            resultSet=statement.executeQuery("select * from placement");
        } catch (Exception e) {
            throw e;
        }
        return resultSet;
    }
    public ResultSet getEvent() throws Exception
    {
    resultSet=null;
    statement=connection.createStatement();
        try {
            resultSet=statement.executeQuery("select * from event");
        } catch (Exception e) {
            throw e;
        }
        return resultSet;
    }
   
 public ResultSet updateUpdates(int id) throws Exception
    {
        
    resultSet=null;
    statement=connection.createStatement();
 
        
   
       
        try {
            resultSet=statement.executeQuery("select * from updates where id='" + id + "'");
        } catch (Exception e) {
            throw e;
        }
       
    
        
         return resultSet;
    }   
 public ResultSet updateGallery(int id) throws Exception
    {
        
    resultSet=null;
    statement=connection.createStatement();
 
        
   
       
        try {
            resultSet=statement.executeQuery("select * from gallery where id='" + id + "'");
        } catch (Exception e) {
            throw e;
        }
       
    
        
         return resultSet;
    }   
 
 public ResultSet updatePlacement(int id) throws Exception
    {
        
    resultSet=null;
    statement=connection.createStatement();
 
        
   
       
        try {
            resultSet=statement.executeQuery("select * from placement where id='" + id + "'");
        } catch (Exception e) {
            throw e;
        }
       
    
        
         return resultSet;
    }   
 public ResultSet updateStaff(int id) throws Exception
    {
        
    resultSet=null;
    statement=connection.createStatement();
 
        
   
       
        try {
            resultSet=statement.executeQuery("select * from staff where id='" + id + "'");
        } catch (Exception e) {
            throw e;
        }
       
    
        
         return resultSet;
    }   
 public ResultSet updateEvent(int id) throws Exception
    {
        
    resultSet=null;
    statement=connection.createStatement();
 
        
   
       
        try {
            resultSet=statement.executeQuery("select * from event where id='" + id + "'");
        } catch (Exception e) {
            throw e;
        }
       
    
        
         return resultSet;
    }   
 
   public boolean updateUpdates(String id,String title,String description,String file) throws SQLException
    {
       
    statement =connection.createStatement();
        try {
            if(statement.execute("update updates set title='" +title + "',description= '"+description +"', file='"+file +"' where id='"+ id +"'")){
            
                
                return true;
            }
       statement.close();
        
        } catch (Exception e) {
            throw e;
            
       
        }
       
        return false;
         
    }
   public void updateEvent(String id,String title,String description,String date,String file) throws SQLException
    {
       
    statement =connection.createStatement();
        try {
            statement.execute("update event set title='" +title + "',description= '"+description +"', date='"+date +"', file='"+file +"' where id='"+ id +"'");
       statement.close();
        
        } catch (Exception e) {
            throw e;
        }
         
    }
   public void updatePlacement(String id,String name,String company,String salary,String file) throws SQLException
    {
       
    statement =connection.createStatement();
        try {
            statement.execute("update placement set name='" +name + "',company= '"+company +"', salary='"+salary +"', file='"+file +"' where id='"+ id +"'");
       statement.close();
        
        } catch (Exception e) {
            throw e;
        }
         
    }
     public void updateGallery(String id,String name) throws SQLException
    {
       
    statement =connection.createStatement();
        try {
            statement.execute("update gallery set img='" +name + "' where id='"+ id +"'");
       statement.close();
        
        } catch (Exception e) {
            throw e;
        }
         
    }
   public void updateStaff(String id,String name,String quali,String file) throws SQLException
    {
       
    statement =connection.createStatement();
        try {
            statement.execute("update staff set name='" +name + "',qualification= '"+quali +"', file='"+file +"' where id='"+ id +"' ");
       statement.close();
        
        } catch (Exception e) {
            throw e;
        }
         
    }
   public void deleteUpdate(String id) throws SQLException
    {
       
    statement =connection.createStatement();
        try {
            statement.execute("delete from updates where id='" +id + "'");
       statement.close();
        
        } catch (Exception e) {
            throw e;
        }
         
    }
     public void deleteStaff(String id) throws SQLException
    {
       
    statement =connection.createStatement();
        try {
            statement.execute("delete from staff where id='" +id + "'");
       statement.close();
        
        } catch (Exception e) {
            throw e;
        }
         
    }
     public void deletePlacement(String id) throws SQLException
    {
       
    statement =connection.createStatement();
        try {
            statement.execute("delete from placement where id='" +id + "'");
       statement.close();
        
        } catch (Exception e) {
            throw e;
        }
         
    }
     public void deleteEvent(String id) throws SQLException
    {
       
    statement =connection.createStatement();
        try {
            statement.execute("delete from event where id='" +id + "'");
       statement.close();
        
        } catch (Exception e) {
            throw e;
        }
         
    }
      public void deleteGallery(String id) throws SQLException
    {
       
    statement =connection.createStatement();
        try {
            statement.execute("delete from gallery where id='" +id + "'");
       statement.close();
        
        } catch (Exception e) {
            throw e;
        }
         
    }
   
 }

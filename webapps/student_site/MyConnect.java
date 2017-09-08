import java.sql.*;

public class MyConnect
{
public static Connection myConnection()
{
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection
("jdbc:mysql://localhost/sis?user=root&password=");
return con;
}
catch(Exception e)
{
return null;
}
}
}
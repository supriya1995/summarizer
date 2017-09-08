package mypack;

import java.sql.*;
import java.text.*;

import javax.servlet.*;
import javax.servlet.http.*;




import jxl.Cell;
import jxl.CellType;
import jxl.DateCell;
import jxl.Sheet;
import jxl.Workbook;

public class DataImport {
    private HttpServletRequest request = null;
    public String myPrint()
{
return "helllllllllllllllllll";
}
    // column names of the MySQL table
    // which should be in the same order as the excel columns


    private String[] columnNames = null;
    
    // table name to import to

    private String tableName = null;
    
    static Connection conn = null;
    
    static PreparedStatement pst = null;
public DataImport()
{}    
    public void setColumnNames(String[] columnNames)
 {

        this.columnNames = columnNames;
    }
    
    public void setRequest(HttpServletRequest request) 
{
        this.request = request;
    }
    
    public void setTableName(String tableName) 
{
        this.tableName = tableName;
    }
    
    // import data from excel to mysql

    public boolean importdata() 
{
        boolean result = false;
        try 
{
        	System.out.println("check1");
Class.forName("com.mysql.jdbc.Driver");            
conn = DriverManager.getConnection("jdbc:mysql://localhost/sis?user=root&password=");
System.out.println("check2");

            ServletInputStream is = request.getInputStream();
            byte[] junk = new byte[1024];
            int bytesRead = 0;
        	System.out.println("check3");
            // strip off the HTTP information from input stream
            // the first four lines are request junk

            bytesRead = is.readLine(junk, 0, junk.length);
            bytesRead = is.readLine(junk, 0, junk.length);
            bytesRead = is.readLine(junk, 0, junk.length);
            bytesRead = is.readLine(junk, 0, junk.length);
        	System.out.println("check4");
            // create the workbook object from the ServletInputStream

            Workbook workbook = Workbook.getWorkbook(is);
            Sheet sheet = workbook.getSheet(0); 
            Cell cell = null;
        	System.out.println("check5");
            // prepare the insert sql statement

            StringBuffer sql = new StringBuffer("INSERT INTO ").append(tableName).append("(");
            StringBuffer params = new StringBuffer("VALUES(");
            int cols = columnNames.length;
            for (int i = 0; i < cols; i++) 
{
                sql.append(columnNames[i]).append(",");
                params.append("?,");
            }          
        	System.out.println("check6");
            sql = sql.deleteCharAt(sql.length() - 1).append(")").append(params.deleteCharAt(params.length() - 1)).append(")");
            System.out.println("check7");
            
            // get database connection
            //conn = DBConn.getConnection();
            
conn.setAutoCommit(false);

   pst = conn.prepareStatement(sql.toString()); 
   SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");

   // read data from the excel spreadsheet
   // the code here assumes that the data begin in row 2 [A2]
   System.out.println("check8");
   
   int rows = sheet.getRows();
System.out.println("No of rows are "+rows);
   for (int i = 1; i < rows; i++) 
{
       for (int j = 0; j < cols ; j++) 
{
           cell = sheet.getCell(j, i);
           System.out.print("VALUEOF CELL IS\t\t"+cell);
           if (cell.getType() == CellType.DATE) 
{
                    DateCell datecell = (DateCell)cell;
                    pst.setString(j + 1, df.format(datecell.getDate()));
           } else 
{
                    pst.setString(j + 1, cell.getContents());
           }       
           
       }
       System.out.println();
       pst.executeUpdate();
       
}
       System.out.println("check9");
       
       System.out.println("check10");
return true;       
   }
   catch(Exception e)
   {
	System.out.println(e);   
  return false;
   }
}
}
  
   /*conn.commit();
  // conn.setAutoCommit(true);
   result = true;

   // close the workbook and free up memory 
            workbook.close();
        } catch (Exception e)
 {
             try 
{
       //         conn.rollback();
            } 
catch (Exception ex) 
{
	System.out.println(ex);
            }
            result = false;
        } 
finally 
{
            closeDB();
        }
System.out.println("hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh");      
return result;
     }
    
    private static void closeDB()
 {
     try
 {
         if (pst != null)
 {
             pst.close();
             pst = null;
         }
         if (conn != null) 
{
          conn.close();
          conn = null;
         }
     } 
catch (Exception e) 
{
System.out.println(e);
}
 }
}*/
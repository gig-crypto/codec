
import java.sql.*;

public class try1 {
    
    Connection con;
    Statement st;
    ResultSet rs;
    
    public try1()
    {
    try
    {
       Class.forName("com.mysql.jdbc.Driver");
       con=DriverManager.getConnection("jdbc:mysql://localhost:3306/customer","root","root");
       st=con.createStatement();
    }
    catch(Exception ae)
    {
        System.out.println("Error!!"+ae);
    }
    
    }
    public void getData()
    {
        try
        {
            String query=("select * from customer.custdata");
            rs=st.executeQuery(query);
            System.out.println("Records : ");
            while(rs.next())
            {
                String id=rs.getString("CustID");
                String fn=rs.getString("First_Name");
                String ln=rs.getString("Last_Name");
                String ph=rs.getString("Cust_Password");
                String e=rs.getString("Email");
                
                System.out.println("id: "+id);
                System.out.println("Customer name: "+ fn+" "+ln);
                System.out.println("password: "+ph);
                System.out.println("Email: "+e);
                
                
            }
            
        }
        catch(Exception ae)
        {
            System.out.println(ae);
        }
 
    }
           

   
    public static void main(String[] args) {
        
        try1 d=new try1();
        d.getData();
        
    }
    
}

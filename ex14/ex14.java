package ip;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import java.sql.*;
@WebService(serviceName = "ex14")
public class ex14 {
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }

    @WebMethod(operationName = "Check")
    public Boolean Check(@WebParam(name = "Username") String Username, @WebParam(name = "Password") String Password){
        //TODO write your implementation code here:
        try{
            Connection c=DriverManager.getConnection("jdbc:derby://localhost:1527/users");
            Statement st=c.createStatement();
            ResultSet rs=st.executeQuery("Select * from USERS");
            while(rs.next())
            {
                if(Username.equals(rs.getString(1)) && Password.equals(rs.getString(2)))
                {
                    System.out.println("true");
                }
            }
        }
        catch(SQLException e)
        {
            
        }
        
        
        return true;
    }
}

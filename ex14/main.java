
package javaapplication2;
class JavaApplication2 {
    public static void main(String[] args) {
        // TODO code application logic here
       if(check("Harsha","123")==true)
       {
           System.out.println("true");
       }
    }

    private static Boolean check(java.lang.String username, java.lang.String password) {
        demo.Ex14_Service service = new demo.Ex14_Service();
        demo.Ex14 port = service.getEx14Port();
        return port.check(username, password);
    }
    
}

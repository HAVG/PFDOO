package PF.Controllers;
import PF.Models.DAONexus;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class AccountController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String iD=request.getParameter("ID");
        String pass=request.getParameter("Password");
        String userType=request.getParameter("UserType");
        String action=request.getParameter("Action");
        DAONexus dN=new DAONexus();
        if(null!=action)switch(action){
            case "login":
                
                break;
            //case "logOut":
                //break;
            //case "createTeacher":
                //break;
            //case "createGroup":
                //break;
            //case "createStudent":
                //break;
            //case "createSubject":
            //default:
                //break;
        }else
            response.sendRedirect("login.jsp");
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    public String getServletInfo() {
        return "Short description";
    }
}
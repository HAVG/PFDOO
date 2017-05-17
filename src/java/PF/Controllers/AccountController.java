package PF.Controllers;
import PF.Models.DAONexus;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import PF.Utils.Logger;
public class AccountController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Logger logger=Logger.getInstance("logs.txt","error.jsp");
        String username=request.getParameter("user");
        String password=request.getParameter("pass");
        DAONexus dN=new DAONexus();
        if("alumno".equals((String)request.getParameter("origin"))||
            "maestro".equals((String)request.getParameter("origin"))||
            "administrador".equals((String)request.getParameter("origin"))){
            String action=request.getParameter("Action");
            if(null!=action)switch(action){
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
        }else{}
        }
            response.sendRedirect("login.jsp");
        String materia="Matematicas";
        String fecha="/01/02/2017";
        boolean seExpiro=true;
        if(username.equals("hola")&&password.equals("mundo")){
            HttpSession session=request.getSession();
            logger.commitEvent("Se ha iniciado sesion",null,request,response);
            /**
             * REFERENCE 1 -- Tomese como ejemplo las siguientes 3 lineas, las cuales
             * serviran para declarar las variables que iran dentro de las celdas del
             * dashboard del alumno.jsp
             */
            session.setAttribute("materia","Matematicas");
            session.setAttribute("fecha","01/02/2017");
            session.setAttribute("seExpiro","true");
            request.getRequestDispatcher("alumno.jsp").forward(request,response);
        }
        else{
            /**
             * REFERENCE 2 -- Si no se autentica correctamente, entonces se ha de crear una variable llamada
             *  loginError, se le asignara el valor de true, y entonces se reenviara la variable
             *  al index.jsp
             */
            HttpSession session=request.getSession();
            session.setAttribute("loginError","true");
            request.getRequestDispatcher("index.jsp").forward(request,response);
            logger.commitEvent("Se han ingresado las credenciales erroneas:" +
                             username+" "+password);
            session.invalidate();
        }
    }
    protected void doGet(HttpServletRequest request,HttpServletResponse response)
        throws ServletException,IOException{
        processRequest(request,response);
    }
    protected void doPost(HttpServletRequest request,HttpServletResponse response)
        throws ServletException,IOException{
        processRequest(request,response);
    }
    public String getServletInfo(){
        return "Short description";
    }
}
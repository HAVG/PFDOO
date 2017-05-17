package PF.Utils;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
public class Logger{
    private final String fileName;
    private final String errorPath;
    private static Logger instance;
    private Logger(String fileName, String errorPath) {this.fileName=fileName;this.errorPath=errorPath;}
    public static Logger getInstance(String fileName){
        if(instance==null)
            return new Logger(fileName,null);
        return instance;
    }
    public static Logger getInstance(String fileName,String errorPath){
        if(instance==null)
            return new Logger(fileName,errorPath);
        return instance;
    }
    public void commitEvent(String debugString)throws IOException{
        BufferedWriter bw=new BufferedWriter(new FileWriter(fileName,true));
        DateFormat dateFormat=new SimpleDateFormat("yyyy-mm-dd HH:mm:ss");
        Calendar cal=Calendar.getInstance();
        String log="\n\n"+dateFormat.format(cal.getTime())+" - (II): ";
        log+=debugString;
        bw.write(log);
    }
    public void commitevent(String debugString,Throwable error)throws IOException{
        BufferedWriter bw=new BufferedWriter(new FileWriter(fileName,true));
        DateFormat dateFormat=new SimpleDateFormat("yyyy-mm-dd HH:mm:ss");
        Calendar cal=Calendar.getInstance();
        String log="\n\n"+dateFormat.format(cal.getTime())+" - (EE): ";
        log+=debugString+": "+error;
        bw.write(log);
        throw new RuntimeException(error);
    }
    public void commitEvent(String debugString,Throwable error,HttpServletRequest
        request,HttpServletResponse response)throws IOException{
        BufferedWriter bw=new BufferedWriter(new FileWriter(fileName, true));
        DateFormat dateFormat=new SimpleDateFormat("yyyy-mm-dd HH:mm:ss");
        Calendar cal=Calendar.getInstance();
        if(error==null){
            String log="\n\n"+dateFormat.format(cal.getTime())+" - (II): ";
            log+=debugString;
            bw.write(log);
        }
        else{
            String log="\n\n"+dateFormat.format(cal.getTime())+" - (EE): ";
            log+=debugString+": "+error;
            bw.write(log);
            HttpSession session=request.getSession();
            session.setAttribute("debugString",debugString);
            response.sendRedirect(errorPath);
            throw new RuntimeException(error);
        }
    }
}
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import static conn.SQLServerConnUtils_JTDS.getSQLServerConnection_JTDS;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.UserAccount;
import utils.DBUtils;
import utils.MyUtils;

/**
 *
 * @author HuuVong
 */
@WebServlet(urlPatterns = {"/signup"})
public class SignUpServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public SignUpServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher //
                = this.getServletContext().getRequestDispatcher("/WEB-INF/view/signUp.jsp");
 
        dispatcher.forward(request, response);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        
        
        UserAccount user = null;
        boolean hasError = false;
        String errorString = null;
 
        if (gender ==null ||name ==null ||userName == null || password == null|| name.length() == 0|| userName.length() == 0 || password.length() == 0||gender.length() == 0) {
            hasError = true;
            errorString = "Required name, username and password!";
        } else {
            Connection conn = null;
            try {
                conn = getSQLServerConnection_JTDS();
            } catch (SQLException ex) {
                Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            try {
                // T??m user trong DB.
                user = DBUtils.findUser(conn, userName);
 
                if (user != null) {
                    hasError = true;
                    errorString = "Username already exists";
                }
            } catch (SQLException e) {
                e.printStackTrace();
                hasError = true;
                errorString = e.getMessage();
            }
            
        }
        if (hasError) {
            // L??u c??c th??ng tin v??o request attribute tr?????c khi forward.
            request.setAttribute("errorString", errorString);
 
            // Forward (Chuy???n ti???p) t???i trang /WEB-INF/view/login.jsp
            RequestDispatcher dispatcher //
                    = this.getServletContext().getRequestDispatcher("/WEB-INF/view/signUp.jsp");
 
            dispatcher.forward(request, response);
        }
        // Tr?????ng h???p kh??ng c?? l???i.
        // L??u th??ng tin ng?????i d??ng v??o Session.
        // V?? chuy???n h?????ng sang trang userInfo.
        else {
            Connection conn = null;
            try {
                conn = getSQLServerConnection_JTDS();
            } catch (SQLException ex) {
                Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            UserAccount account= new UserAccount(userName, gender, password, name);
            try {
                utils.DBUtils.insertAccount(conn, account);
            } catch (SQLException ex) {
                Logger.getLogger(SignUpServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            
            response.sendRedirect(request.getContextPath() + "/login");
        }
    }
    
    

}

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
import model.UserAccount;
import utils.DBUtils;

/**
 *
 * @author HuuVong
 */
@WebServlet(urlPatterns = {"/changepass"})
public class ChangePassServlet extends HttpServlet{
     private static final long serialVersionUID = 1L;

    public ChangePassServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher //
                = this.getServletContext().getRequestDispatcher("/WEB-INF/view/userInfoView.jsp");
 
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("username");
        String pass_old = request.getParameter("pass_old");
        String pass_new = request.getParameter("pass_new");
        
        UserAccount user = null;
        boolean hasError = false;
        String errorString = null;
        if (pass_old ==null ||pass_new ==null || pass_new.length() == 0||pass_old.length() == 0) {
            hasError = true;
            errorString = "Required password!";
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
                // Tìm user trong DB.
                user = DBUtils.findUser(conn, userName, pass_old);
 
                if (user == null) {
                    hasError = true;
                    errorString = "old password is not correct ";
                }
            } catch (SQLException e) {
                e.printStackTrace();
                hasError = true;
                errorString = e.getMessage();
            }
            
        }
        if (hasError) {
            // Lưu các thông tin vào request attribute trước khi forward.
            request.setAttribute("errorString", errorString);
 
            // Forward (Chuyển tiếp) tới trang /WEB-INF/view/login.jsp
            RequestDispatcher dispatcher //
                    = this.getServletContext().getRequestDispatcher("/WEB-INF/view/userInfoView.jsp");
 
            dispatcher.forward(request, response);
        }
        // Trường hợp không có lỗi.
        // Lưu thông tin người dùng vào Session.
        // Và chuyển hướng sang trang userInfo.
        else {
            Connection conn = null;
            try {
                conn = getSQLServerConnection_JTDS();
            } catch (SQLException ex) {
                Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            try {
                utils.DBUtils.updatePassUser(conn, userName, pass_new);
            } catch (SQLException ex) {
                Logger.getLogger(SignUpServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            
            response.sendRedirect(request.getContextPath() + "/userInfo");
        }
    }
    
     
     
    
}

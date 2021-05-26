package utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Category;
import model.Product;
import model.UserAccount;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author HuuVong
 */
public class DBUtils {

    public static UserAccount findUser(Connection conn, //
            String userName, String password) throws SQLException {

        String sql = "Select a.User_Name, a.Password, a.Gender from USER_ACCOUNT a " //
                + " where a.User_Name = ? and a.Password= ?";

        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, userName);
        pstm.setString(2, password);
        ResultSet rs = pstm.executeQuery();

        if (rs.next()) {
            String gender = rs.getString("Gender");
            UserAccount user = new UserAccount();
            user.setUserName(userName);
            user.setPassword(password);
            user.setGender(gender);
            return user;
        }
        return null;
    }

    public static UserAccount findUser(Connection conn, String userName) throws SQLException {

        String sql = "Select a.User_Name, a.Password, a.Gender, a.Name from USER_ACCOUNT a "//
                + " where a.User_Name = ? ";

        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, userName);

        ResultSet rs = pstm.executeQuery();

        if (rs.next()) {
            String password = rs.getString("Password");
            String gender = rs.getString("Gender");
            String name = rs.getString("Name");
            UserAccount user = new UserAccount();
            user.setUserName(userName);
            user.setPassword(password);
            user.setGender(gender);
            user.setName(name);
            return user;
        }
        return null;
    }

    public static List<Product> queryProduct(Connection conn) throws SQLException {
        String sql = "Select * from PRODUCT ";

        PreparedStatement pstm = conn.prepareStatement(sql);
        
        ResultSet rs = pstm.executeQuery();
        List<Product> list = new ArrayList<Product>();
        while (rs.next()) {
            String code = rs.getString("MaSanPham");
            String name = rs.getString("TenSanPham");
            String img = rs.getString("HinhAnh");
            String price = rs.getString("GiaBan");
            String description = rs.getString("MoTa");
            String category = rs.getString("MaDanhMuc");

            Product product = new Product();
            product.setCode(code);
            product.setName(name);
            product.setPrice(price);
            product.setImg(img);
            product.setDescription(description);
            product.setCategory(category);
            list.add(product);
        }
        return list;
    }
    public static List<Product> queryProductName(Connection conn, String search) throws SQLException {
        String sql = "Select * from PRODUCT where TenSanPham LIKE '%"+search+"%' ";

        PreparedStatement pstm = conn.prepareStatement(sql);
        
        ResultSet rs = pstm.executeQuery();
        List<Product> list = new ArrayList<Product>();
        while (rs.next()) {
            String code = rs.getString("MaSanPham");
            String name = rs.getString("TenSanPham");
            String img = rs.getString("HinhAnh");
            String price = rs.getString("GiaBan");
            String description = rs.getString("MoTa");
            String category = rs.getString("MaDanhMuc");

            Product product = new Product();
            product.setCode(code);
            product.setName(name);
            product.setPrice(price);
            product.setImg(img);
            product.setDescription(description);
            product.setCategory(category);
            list.add(product);
        }
        return list;
    }

    public static int getCount(Connection conn) {
        String sql = "SELECT count(MaSanPham) FROM PRODUCT";
        int count = 0;
        try {
            PreparedStatement pstm = conn.prepareStatement(sql);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }

    public static List<Product> queryProductofCategory(Connection conn, String categoryID) throws SQLException {
        String sql = "Select a.MaSanPham, a.TenSanPham, a.HinhAnh, a.GiaBan, a.MoTa, a.MaDanhMuc from PRODUCT a "
                + "where a.MaDanhMuc= ?";

        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, categoryID);

        ResultSet rs = pstm.executeQuery();
        List<Product> list = new ArrayList<Product>();
        while (rs.next()) {
            String code = rs.getString("MaSanPham");
            String name = rs.getString("TenSanPham");
            String img = rs.getString("HinhAnh");
            String price = rs.getString("GiaBan");
            String description = rs.getString("MoTa");
            String category = rs.getString("MaDanhMuc");

            Product product = new Product();
            product.setCode(code);
            product.setName(name);
            product.setPrice(price);
            product.setImg(img);
            product.setDescription(description);
            product.setCategory(category);
            list.add(product);
        }
        return list;
    }

    public static List<Category> queryCategory(Connection conn) throws SQLException {
        String sql = "Select * from category ";

        PreparedStatement pstm = conn.prepareStatement(sql);

        ResultSet rs = pstm.executeQuery();
        List<Category> list = new ArrayList<Category>();
        while (rs.next()) {
            String id = rs.getString("MaDanhMuc");
            String name = rs.getString("TenDanhMuc");

            Category category = new Category();
            category.setCategoryID(id);
            category.setCategoryName(name);
            list.add(category);
        }
        return list;
    }

    public static Product findProduct(Connection conn, String id) throws SQLException {
        String sql = "Select a.MaSanPham, a.TenSanPham, a.HinhAnh, a.GiaBan, a.MoTa, a.MaDanhMuc from PRODUCT a "
                + "where a.MaSanPham= ?";

        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, id);

        ResultSet rs = pstm.executeQuery();

        while (rs.next()) {
            String code = rs.getString("MaSanPham");
            String name = rs.getString("TenSanPham");
            String img = rs.getString("HinhAnh");
            String price = rs.getString("GiaBan");
            String description = rs.getString("MoTa");
            String category = rs.getString("MaDanhMuc");
            Product product = new Product(code, name, price, img, description, category);
            return product;
        }
        return null;
    }

    public static void insertAccount(Connection conn, UserAccount userAccount) throws SQLException {
        String sql = "Insert into USER_ACCOUNT(USER_NAME, GENDER, PASSWORD,Name) values (?,?,?,?)";

        PreparedStatement pstm = conn.prepareStatement(sql);

        pstm.setString(1, userAccount.getUserName());
        pstm.setString(2, userAccount.getGender());
        pstm.setString(3, userAccount.getPassword());
        pstm.setString(4, userAccount.getName());

        pstm.executeUpdate();
    }

    public static void updatePassUser(Connection conn, String user, String pass) throws SQLException {
        String sql = "Update USER_ACCOUNT set PASSWORD =? where USER_NAME=? ";

        PreparedStatement pstm = conn.prepareStatement(sql);

        pstm.setString(1, pass);
        pstm.setString(2, user);
        pstm.executeUpdate();
    }
    public static void deleteProduct(Connection conn, String code) throws SQLException {
        String sql = "Delete From Product where Code= ?";

        PreparedStatement pstm = conn.prepareStatement(sql);

        pstm.setString(1, code);

        pstm.executeUpdate();
    }

}

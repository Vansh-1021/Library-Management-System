package javax.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddBookServlet")
public class AddBookServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int bookId = Integer.parseInt(request.getParameter("book_id"));
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        String publisher = request.getParameter("publisher");
        String status = request.getParameter("status"); 

        try {
            Connection conn = DatabaseConnection.initializeDatabase();
            
            PreparedStatement ps = conn.prepareStatement("INSERT INTO books (book_id, title, author, publisher, status) VALUES (?, ?, ?, ?, ?)");
            ps.setInt(1, bookId); 
            ps.setString(2, title);
            ps.setString(3, author);
            ps.setString(4, publisher);
            ps.setString(5, status); 
            ps.executeUpdate();
            conn.close();
            response.sendRedirect("bookList.jsp"); 
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}


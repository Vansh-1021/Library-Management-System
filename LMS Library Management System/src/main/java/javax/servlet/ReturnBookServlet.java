package javax.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ReturnBookServlet")
public class ReturnBookServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int bookId = Integer.parseInt(request.getParameter("book_id")); // Change to book_id
        String returnDate = request.getParameter("return_date");
        
        try {
            Connection conn = DatabaseConnection.initializeDatabase();

            PreparedStatement ps = conn.prepareStatement("UPDATE issued_books SET return_date=? WHERE book_id=? AND return_date IS NULL");
            ps.setString(1, returnDate);
            ps.setInt(2, bookId);
            ps.executeUpdate();
            

            ps = conn.prepareStatement("UPDATE books SET issued = 0 WHERE book_id = ?");
            ps.setInt(1, bookId);
            ps.executeUpdate();
            
            conn.close();
            response.sendRedirect("bookList.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

package javax.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/IssueBookServlet")
public class IssueBookServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int bookId = Integer.parseInt(request.getParameter("book_id"));
        int issueId = Integer.parseInt(request.getParameter("issue_id"));
        String issueDate = request.getParameter("issue_date");
        
        try {
            Connection conn = DatabaseConnection.initializeDatabase();
            

            PreparedStatement ps = conn.prepareStatement("INSERT INTO issued_books (book_id, user_id, issue_date) VALUES (?, ?, ?)");
            ps.setInt(1, bookId);
            ps.setInt(2, issueId);
            ps.setString(3, issueDate);
            ps.executeUpdate();
            

            ps = conn.prepareStatement("UPDATE books SET issued = 1 WHERE book_id = ?");
            ps.setInt(1, bookId);
            ps.executeUpdate();
            
            conn.close();
            response.sendRedirect("bookList.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

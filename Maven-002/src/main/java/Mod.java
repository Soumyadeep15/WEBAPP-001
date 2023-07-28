import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mod")
public class Mod extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		int age = Integer.parseInt(req.getParameter("age"));
		String role = req.getParameter("role");
		int salary = Integer.parseInt(req.getParameter("sal"));
		PrintWriter pw = resp.getWriter();
		Boolean res = Formcrud.insertForm(name, age, role, salary);
		if (res)
			pw.write("Data Inserted SuccessFully");
		else
			pw.write("Something went wrong mah Nigga");
	}
}

package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.memberDAO;
import Model.memberDTO;


@WebServlet("/loginServiceCon")
public class loginServiceCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
request.getParameter("EUC-KR");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println("id : "+id);
		System.out.println("pw : "+pw);
		
		
		memberDAO dao = new memberDAO();
		memberDTO info = dao.login(id, pw);
		
		if(info !=null) {
			System.out.println("�α��� ����");
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
		}else {
			System.out.println("�α��� ����");
		}
		
		response.sendRedirect("Main.jsp");
	}

}
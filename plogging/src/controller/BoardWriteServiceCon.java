package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.boardDAO;
import Model.boardDTO;

@WebServlet("/BoardWriteServiceCon")
public class BoardWriteServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
request.setCharacterEncoding("EUC-KR");
		
		int num = Integer.parseInt(request.getParameter("num"));
		String id = request.getParameter("id");
		String postDate = request.getParameter("postDate");
		String postPhoto = request.getParameter("postPhoto");
		String postContent = request.getParameter("postContent");
		String postTitle = request.getParameter("postTitle");
		
		System.out.println("num : "+num);
		System.out.println("id : "+id);
		System.out.println("postDate : "+postDate);
		System.out.println("postPhoto : "+postPhoto);
		System.out.println("postContent : "+postContent);
		System.out.println("postTitle : "+postTitle);
		
		boardDTO dto = new boardDTO(num, id, postDate, postPhoto,postContent, postTitle);
		boardDAO dao = new boardDAO();
		
		response.sendRedirect("BoardWrite9.jsp");
		//
		
	}

}

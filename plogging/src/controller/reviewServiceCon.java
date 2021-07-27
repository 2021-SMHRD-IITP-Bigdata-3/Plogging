package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.notic_BoardDAO;
import Model.notic_BoardDTO;
import Model.reviewBoardDAO;
import Model.reviewBoardDTO;

@WebServlet("/reviewServiceCon")
public class reviewServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		int reviewNumber = Integer.parseInt(request.getParameter("reviewNumber"));
		String id = request.getParameter("id");
		String postDate = request.getParameter("postDate");
		String postPhoto = request.getParameter("postPhoto");
		String location = request.getParameter("location");
		String postContent = request.getParameter("postContent");
		String postTitle = request.getParameter("postTitle");
		String checkBox = request.getParameter("checkBox");
		int run = Integer.parseInt(request.getParameter("run"));
		
		System.out.println("reviewNumber : "+reviewNumber);
		System.out.println("id : "+id);
		System.out.println("postDate : "+postDate);
		System.out.println("postPhoto : "+postPhoto);
		System.out.println("location : "+location);
		System.out.println("postContent : "+postContent);
		System.out.println("postTitle : "+postTitle);
		System.out.println("checkBox : "+checkBox);
		System.out.println("run : "+run);
		
		reviewBoardDTO dto = new reviewBoardDTO(reviewNumber,id,postDate,postPhoto,location,postContent,postTitle,checkBox,run);
		reviewBoardDAO dao = new reviewBoardDAO();
		
		response.sendRedirect("reviewMain.jsp");
	}

}

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
		//
		int reviewNumber = Integer.parseInt(request.getParameter("reviewNumber"));
		String memberId = request.getParameter("memberId");
		String noticeNumber = request.getParameter("noticeNumber");
		
		String reviewDate = request.getParameter("reviewDate");
		String reviewImage = request.getParameter("reviewImage");
		String location = request.getParameter("location");
		String contents = request.getParameter("contents");
		String reviewTitle = request.getParameter("reviewTitle");
		String checkBox = request.getParameter("checkBox");
		int run = Integer.parseInt(request.getParameter("run"));
		
		System.out.println("reviewNumber : "+reviewNumber);
		System.out.println("memberId : "+memberId);
		System.out.println("postDate : "+noticeNumber);
		System.out.println("reviewDate : "+reviewDate);
		System.out.println("reviewImage : "+reviewImage);
		System.out.println("location : "+location);
		System.out.println("contents : "+contents);
		System.out.println("reviewTitle : "+reviewTitle);
		System.out.println("checkBox : "+checkBox);
		System.out.println("run : "+run);
		
<<<<<<< HEAD
//		reviewBoardDTO dto = new reviewBoardDTO(reviewNumber,memberId,noticeNumber,noticePost,userBoard,reviewDate,reviewImage,location,contents,reviewTitle,check,run);
=======
		reviewBoardDTO dto = new reviewBoardDTO(reviewNumber,memberId,noticeNumber,reviewDate,reviewImage,location,contents,reviewTitle,checkBox,run);
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-IITP-Bigdata-3/Plogging.git
		reviewBoardDAO dao = new reviewBoardDAO();
		
		response.sendRedirect("reviewMain.jsp");
	}

}

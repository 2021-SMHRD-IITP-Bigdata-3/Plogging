package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.memberDAO;
import Model.memberDTO;
import Model.notic_BoardDAO;
import Model.notic_BoardDTO;


@WebServlet("/inquiryServiceCon")
public class inquiryServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		
		String location = request.getParameter("location");
		String ploggingDate = request.getParameter("ploggingDate");
		String postPhoto = request.getParameter("postPhoto");
		String peopleLimit = request.getParameter("peopleLimit");
		String postNumber = request.getParameter("postNumber");
		String list = request.getParameter("list");
		
		System.out.println("location : "+location);
		System.out.println("ploggingDate : "+ploggingDate);
		System.out.println("postPhoto : "+postPhoto);
		System.out.println("peopleLimit : "+peopleLimit);
		System.out.println("postNumber : "+postNumber);
		System.out.println("list : "+list);
		
		notic_BoardDTO dto = new notic_BoardDTO(location, ploggingDate, postPhoto, peopleLimit,postNumber, list);
		notic_BoardDAO dao = new notic_BoardDAO();
		
		response.sendRedirect("inquiryMain.jsp");
	}

}

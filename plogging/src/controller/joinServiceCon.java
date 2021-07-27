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

@WebServlet("/join")
public class joinServiceCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			request.setCharacterEncoding("EUC-KR");

			String memberId = request.getParameter("id");
			String memberPw = request.getParameter("pass");
			String memberName = request.getParameter("name");
			int memberAge = Integer.parseInt(request.getParameter("age"));
			String memberAddr = request.getParameter("address");
			String memberPlogCount = request.getParameter("exp");

			System.out.println("id : "+memberId);
			System.out.println("pass : "+memberPw);
			System.out.println("name : "+memberName);
			System.out.println("age : "+memberAge);
			System.out.println("address : "+memberAddr);
			System.out.println("exp : "+memberPlogCount);

			memberDTO dto = new memberDTO(memberId, memberPw, memberName, memberAge,memberAddr, memberPlogCount);
			memberDAO dao = new memberDAO();
			int cnt = dao.join(dto);
//

			String moveURL = "";
			if(cnt>0) {
				System.out.println("회원가입성공");
				moveURL = "main.jsp";
				HttpSession session = request.getSession();
				session.setAttribute("id", memberId);
			}else {
				System.out.println("회원가입실패");
				moveURL = "main.jsp";
			}

			response.sendRedirect(moveURL);
		}
	}
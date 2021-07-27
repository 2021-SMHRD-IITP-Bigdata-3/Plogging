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

			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String name = request.getParameter("name");
			String age = request.getParameter("age");
			String addr = request.getParameter("addr");
			String plogging = request.getParameter("plogging");

			System.out.println("id : "+id);
			System.out.println("pw : "+pw);
			System.out.println("name : "+name);
			System.out.println("age : "+age);
			System.out.println("addr : "+addr);
			System.out.println("plogging : "+plogging);

			memberDTO dto = new memberDTO(id, pw, name, age,addr, plogging);
			memberDAO dao = new memberDAO();
			int cnt = dao.join(dto);


			String moveURL = "";
			if(cnt>0) {
				System.out.println("회원가입성공");
				moveURL = "";
				HttpSession session = request.getSession();
				session.setAttribute("id", id);
			}else {
				System.out.println("회원가입실패");
				moveURL = "";
			}

			response.sendRedirect(moveURL);
		}
	}
package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model.boardDAO;
import Model.boardDTO;

@WebServlet("/BoardWriteServiceCon")
public class BoardWriteServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		String savePath = request.getServletContext().getRealPath("img");
		System.out.println(savePath);
		
		int maxSize = 5*1024*1024;
		String encoding = "EUC-KR";
		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());

		
		String title = multi.getParameter("title");
		String textarea = multi.getParameter("textarea");
		String fileName = null;
		if (multi.getFilesystemName("fileName") != null) {			
			fileName = URLEncoder.encode(multi.getFilesystemName("fileName"), "EUC-KR");
		}
		System.out.println(title);
	
		System.out.println(textarea);
		System.out.println(fileName);
		
		boardDTO dto = new boardDTO(title, fileName, textarea);
		boardDAO dao = new boardDAO();
		int cnt = dao.upload(dto);
		
		if(cnt>0) {
			System.out.println("이미지 업로드 성공");
		}else {
			System.out.println("이미지 업로드 실패");
		}
		response.sendRedirect("Board.jsp");

	}

}

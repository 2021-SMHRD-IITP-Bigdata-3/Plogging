package controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model.reportTestDAO;
import Model.reportTestDTO;


@WebServlet("/reportPostServiceCon")
public class reportPostServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
	
		// 1. 이미지 경로
		// getServletContext : 서블릿의 정보
		// getRealPath : 실제 경로
		// 이미지를 저장할 경로를 지정 (상대경로)
		String savePath = request.getServletContext().getRealPath("img");
		System.out.println(savePath);
		
		// 2. 이미지 크기
		// 이미지 크기를 제한 : 이미지 화질이 좋아서 용량이 크니까 서버에 공간을 너무 많이 차지해서 이미지 크기 제한
		// 5MB
		// 1kb = 1024byte
		// 1mb = 1024kb
		int maxSize = 5*1024*1024;
		
		// 3. 이미지명 인코딩 방식
		String encoding = "EUC-KR";
		// request 객체 이미지 저장 경로, 제한할 이미지 크기, 인코딩방식, 중복제거
		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
		
		String title = multi.getParameter("title");
		String lat = multi.getParameter("lat");
		String lng = multi.getParameter("lng");
		String content = multi.getParameter("content");
		
		// 이미지 태그에 경로 작성 시 16진수로 적어줘야 해서 인코딩 진행
		// 그냥 인코딩 하면 파일이 없을 때 오류가 나니까 if문으로
		String fileName = null;
		if (multi.getFilesystemName("fileName") != null) {			
			fileName = URLEncoder.encode(multi.getFilesystemName("fileName"), "EUC-KR");
		}
		System.out.println("title: " + title);
		System.out.println("lat:" + lat);
		System.out.println("lng:" + lng);
		System.out.println("content:" + content);
		System.out.println(fileName);
		
//		// 제보테이블, 제보dto, 제보dao(업로드하는 메소드 만들기)
		reportTestDTO dto = new reportTestDTO(lat, fileName, lng);
		reportTestDAO dao = new reportTestDAO();
		int cnt = dao.upload(dto);
		
		if(cnt>0) {
			System.out.println("이미지 업로드 성공");
		}else {
			System.out.println("이미지 업로드 실패");
		}
		
		response.sendRedirect("reportPostWrite.jsp");
	}

}

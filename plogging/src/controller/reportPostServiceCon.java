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


@WebServlet("/reportPostServiceCon")
public class reportPostServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
	
		// 1. �̹��� ���
		// getServletContext : ������ ����
		// getRealPath : ���� ���
		// �̹����� ������ ��θ� ���� (�����)
		String savePath = request.getServletContext().getRealPath("img");
		System.out.println(savePath);
		
		// 2. �̹��� ũ��
		// �̹��� ũ�⸦ ���� : �̹��� ȭ���� ���Ƽ� �뷮�� ũ�ϱ� ������ ������ �ʹ� ���� �����ؼ� �̹��� ũ�� ����
		// 5MB
		// 1kb = 1024byte
		// 1mb = 1024kb
		int maxSize = 5*1024*1024;
		
		// 3. �̹����� ���ڵ� ���
		String encoding = "EUC-KR";
		// request ��ü �̹��� ���� ���, ������ �̹��� ũ��, ���ڵ����, �ߺ�����
		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
		
		String title = multi.getParameter("title");
		String lat = multi.getParameter("lat");
		String lng = multi.getParameter("lng");
		String content = multi.getParameter("content");
		
		// �̹��� �±׿� ��� �ۼ� �� 16������ ������� �ؼ� ���ڵ� ����
		// �׳� ���ڵ� �ϸ� ������ ���� �� ������ ���ϱ� if������
		String fileName = null;
		if (multi.getFilesystemName("fileName") != null) {			
			fileName = URLEncoder.encode(multi.getFilesystemName("fileName"), "EUC-KR");
		}
		System.out.println("title: " + title);
		System.out.println("lat:" + lat);
		System.out.println("lng:" + lng);
		System.out.println("content:" + content);
		System.out.println(fileName);
		
//		// �������̺�, ����dto, ����dao(���ε��ϴ� �޼ҵ� �����)
//		BoardDTO dto = new BoardDTO(title, writer, fileName, content);
//		BoardDAO dao = new BoardDAO();
//		int cnt = dao.upload(dto);
//		
//		if(cnt>0) {
//			System.out.println("�̹��� ���ε� ����");
//		}else {
//			System.out.println("�̹��� ���ε� ����");
//		}
//		
//		response.sendRedirect("boardMain.jsp");
	}

}

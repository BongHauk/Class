package _09_file;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/delete")
public class Delete extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		
		String saveDirectory = "C:\\Users\\12_web_bhw\\git\\Class\\12_jsp_basic\\WebContent\\chapter09_file\\file_repository\\";
		String deleteFileName = request.getParameter("deleteFileName");
		
		File deleteFile = new File(saveDirectory + deleteFileName);
	
		String jsScript = "";
		if (deleteFile.exists()) { // 파일이 존재하면 
			deleteFile.delete();   // 파일을 삭제한다.
			
			jsScript = "<script>";
			jsScript += "alert('삭제 되었습니다.');";
			jsScript += "location.href='fileMain';";
			jsScript += "</script>";
		}
		else {
			jsScript = "<script>";
			jsScript += "alert('존재하지 않는 파일 입니다.');";
			jsScript += "history.go(-1)";
			jsScript += "</script>";
		}
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();	
		out.print(jsScript);
		
		
	}

}

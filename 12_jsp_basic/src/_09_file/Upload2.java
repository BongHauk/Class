package _09_file;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/upload2")
public class Upload2 extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String saveDirectory = "C:\\Users\\12_web_bhw\\git\\Class\\12_jsp_basic\\WebContent\\chapter09_file\\file_repository\\";
		
		MultipartRequest multipartRequest = new MultipartRequest(request , saveDirectory , 1024 * 1024 * 100 , "utf-8" , new DefaultFileRenamePolicy());
		
		Enumeration<?> files = multipartRequest.getFileNames();
			
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd"); // 업로드된 파일명에 날짜를 추가하기위한 형식 생성
		String now = sdf.format(new Date()); // 현재날짜를 반환
		
		while (files.hasMoreElements()) {
			
			String element = (String)files.nextElement();
			
			// 원본파일명 없지 않으면 > 파일을 업로드 했으면
			if(multipartRequest.getOriginalFileName(element) != null) {
				
				String originalFileName = multipartRequest.getOriginalFileName(element); // 업로드 '한' 파일명을 반환
				
				UUID uuid = UUID.randomUUID(); // UUID.randomUUID(); > 해쉬데이터 생성 메서드
				
				String renameFileName = now + "_" + uuid + "_" + originalFileName;
				
				//System.out.println("originalFileName : " + originalFileName);
				//System.out.println("renameFileName : " + renameFileName);
				
				File file = new File(saveDirectory + originalFileName);     // 기존에 업로드한 파일을 읽어온다.
				File renameFile = new File(saveDirectory + renameFileName); // 변환된 파일명으로 새로운 파일객체 생성
				file.renameTo(renameFile);                                  // renameTo();메서드를 사용하여 기존파일을 새로운 파일로 변경
				
			}
			
			
			
		}
		
		
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String jsScript = "<script>";
				jsScript += "alert('파일을 업로드 하였습니다.');";
				jsScript += "location.href='fileMain';";
				jsScript += "</script>";
		out.print(jsScript);
	
	}

}

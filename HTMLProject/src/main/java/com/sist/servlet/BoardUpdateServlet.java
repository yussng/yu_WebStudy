package com.sist.servlet;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import com.sist.dao.*;
@WebServlet("/BoardUpdateServlet")
public class BoardUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				response.setContentType("text/html;charset=UTF-8");
				String no=request.getParameter("no");
				BoardDAO dao=BoardDAO.newInstance();
				BoardVO vo=dao.boardDetailData(Integer.parseInt(no));
				PrintWriter out=response.getWriter();
				
				out.println("<html>");
				out.println("<head>");
				out.println("<link rel=stylesheet href=html/table.css>");
				out.println("</head>");
				out.println("<body>");
				out.println("<center>");
				out.println("<h1>수정하기</h1>");
				out.println("<form method=post action=BoardUpdateServlet>");
				// 입력된 데이터를 한번에 => action에 등록된 클래스로 전송
				// 메소드 => method=post => doPost()
				out.println("<table class=table_content width=700>");
				out.println("<tr>");
				out.println("<th width=15%>이름</th>");
				out.println("<td width=85%><input type=text name=name size=15 required value=\""+vo.getName()+"\">");
				out.println("<input type=hidden name=no value="+vo.getNo()+"></td>");
				out.println("</tr>");
				out.println("<tr>");
				out.println("<th width=15%>제목</th>");
				out.println("<td width=85%><input type=text name=subject size=50 required value=\""+vo.getSubject()+"\"></td>");
				out.println("</tr>");
				out.println("<tr>");
				out.println("<th width=15%>내용</th>");
				out.println("<td width=85%><textarea rows=10 cols=50 name=content required>"+vo.getContent()+"</textarea></td>");
				out.println("</tr>");
				out.println("<tr>");
				out.println("<th width=15%>비밀번호</th>");
				out.println("<td width=85%><input type=password name=pwd size=10 required></td>");
				out.println("</tr>");
				out.println("<tr>");
				out.println("<td colspan=2 align=center>");
				out.println("<input type=submit value=수정>");
				out.println("<input type=button value=취소 onclick=\"javascript:history.back()\">");
				out.println("</td>");
				out.println("</tr>");
				out.println("</table>");
				out.println("</form>");
				out.println("</center>");
				out.println("</body>");
				out.println("</html>");
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		try
		{
			request.setCharacterEncoding("UTF-8");
		}catch(Exception ex) {}
		String name=request.getParameter("name");
		String subject=request.getParameter("subject");
		String content=request.getParameter("content");
		String pwd=request.getParameter("pwd");
		String no=request.getParameter("no");
		
		BoardVO vo=new BoardVO();
		vo.setName(name);
		vo.setSubject(subject);
		vo.setContent(content);
		vo.setPwd(pwd);
		vo.setNo(Integer.parseInt(no));
		
		// 오라클로 INSERT 요청
		BoardDAO dao=BoardDAO.newInstance();
		boolean bCheck=dao.boardUpdate(vo);
		
		if(bCheck==true)
		{
			response.sendRedirect("BoardDetailServlet?no="+no);
		}
		else
		{
			out.println("<script>");
			out.println("alter(\"비밀번호 틀립니다!\");");
			out.println("history.back()");
			out.println("</script>");
		}
	}

}
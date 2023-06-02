/*
 * request : 사용자 요청값을 받는 경우 => getParameter()
 * response : 전송(브라우저) => html,cookie
 *       	  => 한파일에서 1번만 수행이 가능
 *            => 서버에서 화면 변경 (sendRedirect())
 * cookie : 브라우저에 정보 저장 => 최근 방문
 * session : 서버에 저장 => 예약, 장바구니 ...
 * ---------- JSP/Spring/Spring-boot
 */
package com.sist.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*
 *    WEB
 *      java => jsp/servlet (Spring)
 *      c#   => aspx / asp
 *      python => django
 *      php
 *      nodejs
 *      ---------------------------- request, response, cookie, session
 *      브라우저 => HTML만 인식
 *               Java => 일반 텍스트 
 *               
 */
@WebServlet("/SeoulDetailServlet")
public class SeoulDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}

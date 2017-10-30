package session.stacknum;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class RemoveStackNumberServlet
 */
@WebServlet("/stacknums/removenums")
public class RemoveStackNumberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/*
	 * 누적된 숫자 제거
	 * 기본 흐름
	 * 1. 로그인 여부 체크
	 * 2. 누적된 숫자 제거(Session에 ArrayList안에 있음. ArrayList를 없애야한다.
	 * 3. show_numbers.jsp로 이동
	 * 
	 * 예외흐름
	 * 1-a : 로그인을 하지 않은 경우
	 * 	- login_form.jsp로 이동.
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("loginMember") == null) {
			request.setAttribute("errorMessage", "로그인을 하세요");
			request.getRequestDispatcher("/login/login_form.jsp").forward(request, response);
		}else {
			ArrayList<Integer> list = (ArrayList<Integer>)session.getAttribute("numList");
			list.clear();
			//session.removeAttribute("numberList");// --> 이렇게 적으면 다시 숫자 누적을 하지 않겠다는 의미이다. list를 다시 만들지 않아도 됨.
			request.getRequestDispatcher("/stacknums/show_numbers.jsp").forward(request, response);
		}
		
		
	}

}





















package session.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import exception.LoginFailException;
import vo.Member;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 요청 파라미터 조회하기
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		try {
		//2. Business Logic처리(로그인 처리) - Model을 호출
			Member member = authenticate(id,password);
			//인증 성공 - 로그인 처리 : HttpSession생성 + 로그인체크 속성 추가.
			HttpSession session = request.getSession();//그 사용자의 상태값을 저장하는공간이 있으면 있는것을 주고 , 없으면 새로 만들어준다.
			session.setAttribute("loginMember", member);//로그인멤머를 체크하는것을 속성으로 등록한다. 요청했을때 있으면 로그인된것.
			//3. 처리결과 응답.(로그인 성공페이지/로그인 실패 페이지 보여주기) - view를 호출
			request.getRequestDispatcher("/login/login_success.jsp").forward(request, response);//dispatch방법으로 한번에 요청을 보낸다.
		}catch(LoginFailException e) {
			//인증 실패
			//3. 처리결과(실패결과)응답.
			request.setAttribute("errorMessage", e.getMessage());//에러났을때의 데이터는 보존하지 않고 바로 없어지는 데이터기때문에  setAttribute로 만들어준다.
			request.getRequestDispatcher("/login/login_form.jsp").forward(request, response);
		}
		
	}
	
	/*
	 * 회원인증(로그인)처리하는 메소드
	 *  =>MemberService(Business Service)에 있는 메소드.
	 *  
	 *  기본흐름
	 *  1. 매개변수로 받은 ID와 패스워드가회원데이터베이스에 있는지 확인.
	 *  2. 회원의 정보를 리턴한다.
	 *  
	 *  
	 *  오류흐름
	 *  2-1. 회우너정보가 틀리면 예외를 던진다.
	 */
	public Member authenticate(String id,String password) throws LoginFailException{
		
//			Member member = MemberDao.selectMemberById(id); //select id, password, name, email from member where id=?// 이런식으로 원래 DAO를 구현해서 작동해야한다.
		Member member = null;//없는 아이디이다.
		member = new Member(id, "servlet", "김회원", "kim@naver.com");//id가 있다.
		
		if(member != null) {//있는 id라면
			if(password.equals(member.getPassword())) {
				//인증성공
				return member;
			}else {//ID는 맞는데 Password가 틀린경우(인증실패)
				throw new LoginFailException("패스워드를 확인하세요");
			}
		}else {//없는 id
			throw new LoginFailException("ID를 확인하세요");
		}
	}

}

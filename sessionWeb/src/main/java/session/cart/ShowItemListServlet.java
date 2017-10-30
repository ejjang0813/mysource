package session.cart;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ShowItemListServlet
 */
@WebServlet("/cart/showItems")
public class ShowItemListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 *상품목록보기
	 *	- 상품목록보기 링크 -> ShowItemListServlet -> item_list.jsp로 이동.
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//상품목록을 DB에서 조회. - 상품목록 : request scope에 Attribute로 넣어준다. --> item_list.jsp로 이동해야한다. 이것을 생략하고 구현한다.
		
		request.getRequestDispatcher("/cart/item_list/jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

package fp.mypage.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fp.member.model.vo.Member;
import fp.mypage.model.sevice.MypageService;

/**
 * Servlet implementation class ChangePwServlet
 */
@WebServlet(name = "ChangePw", urlPatterns = { "/changePw" })
public class ChangePwServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePwServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Member m = (Member)session.getAttribute("member");
		RequestDispatcher rd;
		String memberPw = request.getParameter("user_current_password");
		String changePw = request.getParameter("user_password");
		
		if(m != null) {
			if(m.getMemberPw().equals(memberPw)) {
				MypageService service = new MypageService();
				int result = service.changePw(m,changePw);
				if(result == 0) {
					rd = request.getRequestDispatcher("/");
					System.out.println("뭔가 이상함. ChangePwServlet 확인좀요1");
				}
				rd = request.getRequestDispatcher("/views/member/login.jsp");
			}else {
				System.out.println("뭔가 이상함. ChangePwServlet 확인좀요2");
				rd = request.getRequestDispatcher("/");
			}
		}else {
			request.setAttribute("msg", "로그인을 먼저 해주세요");
			rd = request.getRequestDispatcher("/views/member/login.jsp");
		}
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

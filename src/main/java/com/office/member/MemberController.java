package com.office.member;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import javax.print.DocFlavor.STRING;


@WebServlet("*.mem")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public MemberController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String requestURI = request.getRequestURI(); 
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		
		IMemberService memberService = null;
		String nextPage = null;
		
		switch (command) {
		case "/signup_form.mem":
			
			nextPage = generateView("signup_form");
			
			break;

		case "/signup_confirm.mem":
			
			memberService = new MemberServiceForDW(new MemberDaoForMySQL());
			int resultForSignup = memberService.signup(request, response);
			
			if (resultForSignup > 0) {
				nextPage = generateView("signup_ok");
			
			} else {
				nextPage = generateView("signup_ng");
			}
			
			break;
			
		case "/signin_form.mem":
			
			nextPage = generateView("signin_form");
		
			break;
		
		case "/signin_confirm.mem":
			
			memberService = new MemberServiceForDW(new MemberDaoForMySQL());
			MemberDto signinedMemberDto = memberService.signin(request, response);
			
			if (signinedMemberDto != null) {
				nextPage = generateView("signin_ok");
				
			} else {
				nextPage = generateView("signin_ng");
			}
			
			break;
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(nextPage);
		dispatcher.forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}
	
	private String generateView(String viewName) {
		String view = "view/member/" + viewName + ".jsp";
		
		return view;
	}
	
}
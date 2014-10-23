package br.edu.una.tidir4.Rotativo.Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginAndroidServlet
 */
@WebServlet(description = "faz o login quando acessado pela app noAndroid", urlPatterns = { "/LoginAndroidServlet" })
public class LoginAndroidServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/** 
     * Processa requests para GET e POST.
     * @param request servlet solicitação
     * @param response servlet resposta
     * @throws ServletException se um erro de servlet ocorrer
     * @throws IOException se um erro de I/O ocorrer
     */
    protected void processaRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
        String un,pw;
        un=request.getParameter("username");
        pw=request.getParameter("password");
        if(un.equalsIgnoreCase("tidiruna") && pw.equals("12345"))
            out.print(1);
        else
            out.print(0);
        } finally {            
            out.close();
        }
    }

    // Metodos HttpServlet
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processaRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processaRequest(request, response);
    }

    /** 
     * Retorna uma pequena descrição da servlet.
     * @return uma string com a descrição
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }//
}
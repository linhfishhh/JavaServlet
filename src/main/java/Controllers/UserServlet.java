package Controllers;

import Models.User;
import Service.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/Controller",""})
public class UserServlet extends HttpServlet {
    UserService UserS=new UserService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action=req.getParameter("action");
        RequestDispatcher dispatcher = null;
        if (action==null){
            action="";
        }
        switch (action){
            case "create":
                resp.sendRedirect("/view/Create.jsp");
                break;
            case "remove":
                String name=req.getParameter("name");
                UserS.remove(name);
                resp.sendRedirect("/");
                break;
            case "edit":
                String nameedit=req.getParameter("name");
                System.out.println(nameedit);
                for(int i=0;i<UserS.ListUser.size();i++){
                    if(UserS.ListUser.get(i).getName().equals(nameedit)){
                        System.out.println("ass");
                        req.setAttribute("name",UserS.ListUser.get(i));
                        dispatcher=req.getRequestDispatcher("/view/Edit.jsp");
                        dispatcher.forward(req,resp);

                    }
                }
                break;
            default:
                req.setAttribute("ListUser",UserS.ListUser);
                dispatcher=req.getRequestDispatcher("index.jsp");
                dispatcher.forward(req, resp);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action=req.getParameter("action");
        RequestDispatcher dispatcher;
        switch (action){
            case "create":
                int id=Integer.parseInt(req.getParameter("id"));
                String name=req.getParameter("name");
                String username=req.getParameter("username");
                String passwd=req.getParameter("passwd");
                String email=req.getParameter("email");
                User user=new User(id,name,username,passwd,email);
                UserS.add(user);
                req.setAttribute("ListUser",UserS.ListUser);
                dispatcher=req.getRequestDispatcher("/index.jsp");
                dispatcher.forward(req,resp);
                break;
            case "edit":
                String nameedit = req.getParameter("name");
                for(int i=0;i<UserS.ListUser.size();i++){
                    if(UserS.ListUser.get(i).getName().equals(nameedit)){
                        int idedit=Integer.parseInt(req.getParameter("id"));
                        String namee=req.getParameter("nameedit");
                        String usernamee=req.getParameter("username");
                        String passwde=req.getParameter("passwd");
                        String emaile=req.getParameter("email");
                        UserS.edit(nameedit, new User(idedit,namee,usernamee,passwde,emaile));
                        req.setAttribute("ListUser",UserS.ListUser);
                        dispatcher=req.getRequestDispatcher("/index.jsp");
                        dispatcher.forward(req,resp);
                    }
                }
                break;
        }
    }
}

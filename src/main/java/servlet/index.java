package servlet;


import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class index
 */
@WebServlet({"/index","/detproduc"})
public class index extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			// TODO Auto-generated method stub
			//super.doGet(req, resp);


		String uri = req.getRequestURI();
		List<Item> listItem = Arrays.asList(new Item[] {
				new Item(1,"Vien Metal Perdant Light Blue", "light_1.jpg",6000, 0.1),
				new Item(2,"Vien Metal Pendant Light", "lamp_1.jpg",5600, 0.1),
				new Item(3,"Woodern Modern Wall Clock", "lam_2.jpg",4500, 0.1),
				new Item(4,"Beige Lamp With Gold Base", "lamp_3.jpg",1500, 0.1),
				new Item(5,"Dawud Oak Bedside Table", "lamp_1.jpg",8500, 0.1),
				new Item(6,"Coffee Table Lamp From Lucide", "light_1.jpg",9500, 0.1),
				new Item(7,"Scandi-Style Dressing Table", "lam_2.jpg",5450, 0.1),
				new Item(8,"Cantori Bedside Table Tambur", "lamp_3.jpg",2300, 0.1)});
			if(uri.contains("detproduc")) {
				 int index = Integer.parseInt(req.getParameter("id"));
				 req.setAttribute("model", index-1);
				 
				 Item item = listItem.get(index-1);
				 req.setAttribute("item", item);
				 
				 req.getRequestDispatcher("/asmweb/resultproduc.jsp").forward(req, resp);
			}else {
				req.setAttribute("listItem", listItem);
				req.getRequestDispatcher("/asmweb/index.jsp").forward(req, resp);
				
			}
				
			 
		}
	
	
}

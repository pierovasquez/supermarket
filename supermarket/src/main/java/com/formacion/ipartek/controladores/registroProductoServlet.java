package com.formacion.ipartek.controladores;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.formacion.ipartek.clases.Articulo;
import com.formacion.ipartek.dao.ArticuloArrayDao;


public class registroProductoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nombre= request.getParameter("nombreproducto"); 
		
		String marca = request.getParameter("marca");
		
		String precio = request.getParameter("precio");
		
		String descripcion = request.getParameter("descripcion");
		
		Articulo botella =  new Articulo(nombre,marca,descripcion, Double.parseDouble(precio));
		
		ArticuloArrayDao.getInstance().insert(botella);
		
		request.setAttribute("articulos", ArticuloArrayDao.getInstance().getAll());
	
		request.getRequestDispatcher("listado_productos.jsp").forward(request, response);
	}

}

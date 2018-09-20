package com.formacion.ipartek.dao;

import java.util.ArrayList;
import java.util.List;

import com.formacion.ipartek.clases.Articulo;

public class ArticuloArrayDao implements CrudAble<Articulo>{

	private List<Articulo> articulos = new ArrayList<>();

	private static ArticuloArrayDao INSTANCE;
	
	private ArticuloArrayDao() {
		
	}
	
	public static synchronized ArticuloArrayDao getInstance() {
		if (INSTANCE == null) {
			INSTANCE = new ArticuloArrayDao();
		}
		
		return INSTANCE;
	}
	
	@Override
	public List<Articulo> getAll() {
		return articulos;
	}

	@Override
	public boolean insert(Articulo articulo) {
		boolean resul = false;
		
		if (articulo != null) {
			resul = articulos.add(articulo);
		}
		return resul;
	}

	@Override
	public boolean update(Articulo pojo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(long id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Articulo getById(long id) {
		// TODO Auto-generated method stub
		return null;
	}
}

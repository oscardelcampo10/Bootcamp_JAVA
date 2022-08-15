package com.ipartek.formacion.modelo;

public class Usuario {
	
	private static int cont;
	private int id;
	private String nombre;
	private String password;
	private String github;
	private String imagen;
	
	public Usuario(int id, String nombre, String password, String github, String imagen) {
		super();
		cont++;
		this.id = cont;
		this.nombre = nombre;
		this.password = password;
		this.github = github;
		this.imagen = imagen;
	}
	
	public Usuario() {
		super();
		cont++;
		this.id = cont;
		this.nombre = "";
		this.password = "";
		this.github = "";
		this.imagen = "";
	}

	public static int getCont() {
		return cont;
	}

	public static void setCont(int cont) {
		Usuario.cont = cont;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGithub() {
		return github;
	}

	public void setGithub(String github) {
		this.github = github;
	}

	public String getImagen() {
		return imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	@Override
	public String toString() {
		return "Usuario  : id :" + id + ", nombre :" + nombre + ", password :" + password + ", github :" + github
				+ ", imagen :" + imagen;
	}
	
	
	

}

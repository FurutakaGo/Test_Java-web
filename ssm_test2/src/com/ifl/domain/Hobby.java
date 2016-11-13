package com.ifl.domain;

public class Hobby {
	private int id;
	private String hname;
	/**
	 * @return id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id 要设置的 id
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return hname
	 */
	public String getHname() {
		return hname;
	}
	/**
	 * @param hname 要设置的 hname
	 */
	public void setHname(String hname) {
		this.hname = hname;
	}
	/* （非 Javadoc）
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Hobby [id=" + id + ", hname=" + hname + "]";
	}
	
}

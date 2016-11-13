package com.ifl.domain;

public class Person {
	private int id;
	private String name;
	private String sex;
	private int age;
	private int hobby;
	private Hobby hobby1;
	
	/**
	 * @return hobby1
	 */
	public Hobby getHobby1() {
		return hobby1;
	}
	/**
	 * @param hobby1 要设置的 hobby1
	 */
	public void setHobby1(Hobby hobby1) {
		this.hobby1 = hobby1;
	}
	/**
	 * @return hobby
	 */
	public int getHobby() {
		return hobby;
	}
	/**
	 * @param hobby 要设置的 hobby
	 */
	public void setHobby(int hobby) {
		this.hobby = hobby;
	}
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
	 * @return name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name 要设置的 name
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return sex
	 */
	public String getSex() {
		return sex;
	}
	/**
	 * @param sex 要设置的 sex
	 */
	public void setSex(String sex) {
		this.sex = sex;
	}
	/**
	 * @return age
	 */
	public int getAge() {
		return age;
	}
	/**
	 * @param age 要设置的 age
	 */
	public void setAge(int age) {
		this.age = age;
	}
	/* （非 Javadoc）
	 * @see java.lang.Object#toString()
	 */
	/* （非 Javadoc）
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Person [id=" + id + ", name=" + name + ", sex=" + sex + ", age=" + age + ", hobby=" + hobby
				+ ", hobby1=" + hobby1 + "]";
	}
	
	
	
}

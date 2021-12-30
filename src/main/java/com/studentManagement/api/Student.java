package com.studentManagement.api;

public class Student {

	private int id;
	private String name;
	private Long mobile;
	private String country;
	private String email;
	private String college;
	private String degree;
	private String branch;
	private String minor;
	private String minorMarks;
	private String eng;
	private String math;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getMinor() {
		return minor;
	}

	public void setMinor(String minor) {
		this.minor = minor;
	}

	public String getMinorMarks() {
		return minorMarks;
	}

	public void setMinorMarks(String minorMarks) {
		this.minorMarks = minorMarks;
	}

	public String getEng() {
		return eng;
	}

	public void setEng(String eng) {
		this.eng = eng;
	}

	public String getMath() {
		return math;
	}

	public void setMath(String math) {
		this.math = math;
	}

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}

	public Long getMobile() {
		return mobile;
	}

	public void setMobile(Long mobile) {
		this.mobile = mobile;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getCollege() {
		return college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", mobile=" + mobile + ", country=" + country + ", email="
				+ email + ", college=" + college + ", degree=" + degree + ", branch=" + branch + ", minor=" + minor
				+ ", minorMarks=" + minorMarks + ", eng=" + eng + ", math=" + math + "]";
	}
}

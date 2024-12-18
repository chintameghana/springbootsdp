package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Teacher_table")
public class Teacher
{
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int id;
  @Column(name = "Teacher_username",length = 50)
  private String username;
  @Column(name = "Teacher_password",length = 50,nullable = false)
  private String password;
  public int getId() {
	    return id;
	  }
	  public void setId(int id) {
	    this.id = id;
	  }
  public String getUsername() {
    return username;
  }
  public void setUsername(String username) {
    this.username = username;
  }
  public String getPassword() {
    return password;
  }
  public void setPassword(String password) {
    this.password = password;
  }
  @Override
  public String toString() {
    return "Teacher [id=" + id + ",  username=" + username + ", password=" + password + "]";
  }
}
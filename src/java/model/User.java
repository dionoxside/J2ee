/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author novan
 */
public class User {
String username,password,email,role;
Long id;

    public User(Long id2, String username2, String password2, String email2, String role2) {
         this.id=id2;
         this.username=username2;
         this.password=password2;
         this.email=email2;
         this.role=role2;
    }

    public User() {}
public String getUsername(){
    return username;
}
public String getPassword(){
    return password;
}
public String getEmail(){
    return email;
}
public long getId(){
    return id;
}
public String getRole(){
    return role;
}
public void setUsername(String username){
    this.username = username;
}
public void setPassword(String password){
    this.password = password;
}
public void setEmail(String email){
    this.email=email;
}
public void setId(Long id){
    this.id=id;
}
public void setRole(String role){
    this.role=role;
}
public void setId(long i){
    this.id=i;
}
}

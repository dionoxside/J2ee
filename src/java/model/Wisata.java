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
public class Wisata {
    private int id;
    private String nama,deskripsi,gambar;
    
    public String getGambar(){
        return gambar;
    }
    public String getNama(){
        return nama;
    }
    public String getDeskripsi(){
    return deskripsi;
}
    public int getId(){
        return id;
    }
    public void setGambar(String gambar){
        this.gambar =gambar;
    }
    public void setNama(String nama){
        this.nama= nama;
    }
    public void setDeskripsi(String deskripsi){
        this.deskripsi=deskripsi;
    }
    public void setId(int id){
        this.id=id;
    }
}


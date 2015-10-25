/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uk.ac.dundee.computing.aec.instagrim.stores;

/**
 *
 * @author Ross
 */
public class Comment {
    private String comment;
    private java.util.UUID UUID=null;
    
    public void Comment() {

    }
    public void setUUID(java.util.UUID UUID){
        this.UUID =UUID;
    }
    public String getSUUID(){
        return UUID.toString();
    }
    public void setComment(String comment) {
        this.comment = comment;
        
    }
    
    public String getComment(){
        return comment;
    }
}

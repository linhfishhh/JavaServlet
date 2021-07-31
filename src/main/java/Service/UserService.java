package Service;

import Models.User;

import java.util.ArrayList;
import java.util.List;

public class UserService {
    public ArrayList<User> ListUser=new ArrayList<User>();
    public UserService() {
        ListUser.add(new User(1,"Duc","admin","admin","Linhfish2309@gmail.com"));
    }


    public void add(User User){

        ListUser.add(User);
    }
    public void remove(String name){
        for (int  i=0;i< ListUser.size();i++){
            if(ListUser.get(i).getName().equals(name)){
                ListUser.remove(i);
            }
        }
    }
    public void edit(String name,User User){
        for (int i=0;i< ListUser.size();i++){
            if(ListUser.get(i).getName().equals(name)){
                ListUser.set(i,User);
            }
        }
    }
}

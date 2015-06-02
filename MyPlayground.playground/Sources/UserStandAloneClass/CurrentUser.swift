import Foundation

public class CurrentUser{
    
    private static var currentUser:User!
    private static var currentCompany:Company!
    
    // compare current user id with
    public static func isThisCurrentUser(user:User)->Bool{
        var isCurrent:Bool!
        if user.getId() == self.currentUser.getId(){
            isCurrent = true
        }else{
            isCurrent = false
        }
        return isCurrent
    }
    
    // compare current user id and type with
    public static func canIEditThisPost(post:Post)->Bool{
        var editable:Bool!
        
        if post.userID == self.currentUser.getId(){
            editable = true
        }else if post.getType() == self.currentCompany.getType() {
            editable = true
        }else{
            editable = false
        }
        return editable
    }
    
    
}
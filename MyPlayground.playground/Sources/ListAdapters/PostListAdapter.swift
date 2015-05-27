import Foundation

public class PostAdapter{
    var posts:[Post]!
    var list:PostList!
    
    var counter:Int! //(optional)
    
    public init(list:PostList,posts:[Post]){
        self.list = list
        self.posts = posts
        self.counter = posts.count //(optional)
    }
    
    public func insertNewRow(row:Post){
        //set all data from post to current post template
        //tamplate.setName = post.name
        //tamplate.setUserPhoto = post.photo
        //tamplate.setDescription
        
        //posrform builded post to list view
        list.addListRow(row)
    }

    public func buildListView(){
        for post in self.posts {
            
            //set all data from post to current post template 
            //tamplate.setName = post.name
            //tamplate.setUserPhoto = post.photo
            //tamplate.setDescription
            
            //posrform builded post to list view
            list.addListRow(post)
        }
    }
}
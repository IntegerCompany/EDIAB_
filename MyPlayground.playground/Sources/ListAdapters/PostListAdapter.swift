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
    
    //@See MyPostByBuilder(post:post)
    //@See list.addListRow(tamplate)
    //@Params post - current post
    public func insertNewRow(post:Post){
        
        var postBuilder = MyPostByBuilder(post:post)
        var tamplate:PostTemplate = postBuilder.constructThisPost()
        
        //set all data from post to current post template
        //tamplate.setName = post.name
        //tamplate.setUserPhoto = post.photo
        //tamplate.setDescription
        
        //posrform builded post to list view
        
        list.addListRow(tamplate)
    }
    
    //@See MyPostByBuilder(post:post)
    //@See list.addListRow(tamplate)
    //@Params posts - current post array !!!
    public func buildListView(){
        for post in self.posts {
            
            var postBuilder = MyPostByBuilder(post:post)
            var tamplate:PostTemplate = postBuilder.constructThisPost()
            
            //set all data from post to current post template 
            //tamplate.setName = post.name
            //tamplate.setUserPhoto = post.photo
            //tamplate.setDescription
            
            //posrform builded post to list view
            list.addListRow(tamplate)
        }
    }
    
    public func updateList(posts:[Post]){
        
        for post in self.posts {
            
            var postBuilder = MyPostByBuilder(post:post)
            var tamplate:PostTemplate = postBuilder.constructThisPost()
            
            //set all data from post to current post template
            //tamplate.setName = post.name
            //tamplate.setUserPhoto = post.photo
            //tamplate.setDescription
            
            //posrform builded post to list view
            list.addListRow(tamplate)
        }
    }
}
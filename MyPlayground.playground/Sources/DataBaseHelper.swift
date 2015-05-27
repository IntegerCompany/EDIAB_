import Foundation

public class DataBase{
    //some data base
    public init(){}
    
    public func getRowById(_id:Int)->Post{
        //example class that simulate db requst
        return Post()
    }
    //connecting with db and all other functionality
}

public class DataBaseHelper{
    
    public init(){}
    
    public var db:DataBase = DataBase()
    
    public func getAllPosts()->[Post]{
        var allPosts = [Post]()
        
        //this method returns
        //getting post from db and parse it to POST.class format (organize by date)
        //and than adding it to post array
        var post = Post()
        allPosts.append(post)
        //or (and)
        //the most important this is bringing the post to respectively type
        //that will increase feature indicate of post type in UI part
        post = EventPost()
        //adding to array
        allPosts.append(post)
        //returning
        
        return allPosts
    }
    public func getEventPosts()->[EventPost]{
        var allPosts = [EventPost]()
        //same algorithm as getAllPosts()
        return allPosts
    }
    public func getSomeOtherKindOfPosts()->[EventPost]{
        var allPosts = [EventPost]()
        //same algorithm as getAllPosts()
        return allPosts
    }
    public func deleteThisPost(post:Post){
        
        let id = post.getID()
        //DB.deleteByID() from Posts table ...
        //deleting proccess ...
        //update post list
    }
    public func deleteThisComment(comment:Comment){
        let id = comment.getID()
        //DB.deleteByID() from comments table ...
        //deleting proccess...
        //update comments list
    }
    public func getCurrentCompanyById(_id:Int)->Company{
        var company:Company = db.getRowById(_id) as! Company
        return company
    }
    public func getReviewsById(_id:Int)->[Review]{
        var allReview = [Review]()
        //same algorithm as getAllPosts()
        //getting all reviews by id
        return allReview
    }
}
import Foundation

public class UserProfilePage{
    
    var db = DataBaseHelper()
    var allPosts:[Post]!
    var eventPosts:[Post]!
    
    //I have used this method as entry point of this page
    public func pageDidLoad(){
        
        performUserPostList()//as default
        loadUserInfo()
        
    }
    private func loadUserInfo(){
        //perform user photo
        //perform user name and loacation
    }
    private func performUserPostList(){

        //load all posts from database
        allPosts = db.getAllPosts()
        //store counter into UI element
        var allPostsCounter = allPosts.count
        
        eventPosts = db.getEventPosts()
        var eventPostCounter = eventPosts.count
        
        //and so on ... 
        //clone same login into other posts!
    }
    
    //use your onItemListClickListener
    private func onListItemList(item:Int){
        //an example of simple onClick logic
        switch(item){
        case 1:
            showAllPostList()
            break
        case 2:
            showAllEventList()
            break
        default:
            showAllPostList()
            break
        }
    }
    //This method show all posts list
    private func showAllPostList(){
        
        for post in allPosts {
            if(post is EventPost){
                //use eventPostTemplate.
                //set date from this post to currnet views elements
                //add elemet to list view
            }
            else if(post is ProductPost){
                //use productPostTemplate.
                //set date from this post to currnet views elements
                //add elemet to list view
            }else{
                //compare and show into list view
            }
        }
    }
    private func showAllEventList(){
        
        for post in eventPosts{
            //use eventPostTemplate.
            //set date from this post to currnet views elements
            //add elemet to list view
        }
    }
    /*
    * ... modify next show method depending on the goals
    */
    }
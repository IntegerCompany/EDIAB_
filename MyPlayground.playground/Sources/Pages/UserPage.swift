import Foundation

public class UserProfilePage{
    //types of actions
    let SHOW_ALL_POSTS = 1
    let SHOW_EVENTS = 2
    let SHOW_REAL_ESTATES = 3
    
    var reviewListAdapter:PostAdapter!
    
    // and other action from post list
    
    var db = DataBaseHelper()
    var allPosts:[Post]!
    var eventPosts:[Post]!
    
    //I have used this method as entry point of this page
    public func pageDidLoad(){
        
        performUserPostList()//as default
        loadUserInfo()
        
    }
    //use your onItemListClickListener
    private func onListItemList(event:Int){
        //an example of simple onClick logic
        switch(event){
            
        case SHOW_ALL_POSTS:
            performUserPostList()
            break
        case SHOW_EVENTS:
            showAllEventList()
            break
        default:
            break
        }
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
        
        //init you own list from page tamplate
        var list:PostList = PostList()
        
        self.reviewListAdapter = PostAdapter(list: list, posts: allPosts)
        //perform review list
        self.reviewListAdapter.buildListView()
        
        //and so on ... 
        //clone same login into other posts!
    }
    
    private func showAllEventList(){
        
        allPosts = db.getEventPosts()
        
        var list:PostList = PostList()
        
        self.reviewListAdapter = PostAdapter(list: list, posts: allPosts)
        //perform review list
        self.reviewListAdapter.buildListView()
    }
    /*
    * ... modify next show method depending on the goals
    */
}
import Foundation

public class RealEstatePage{
   
    let SEARCH_BUTTON = 1
    let CREATE_NEW_POST = 2
    
    var filter:[String]!
    
    let db:DataBaseHelper = DataBaseHelper()
    
    let list:PostList = PostList()
    var listAdapter:PostAdapter!
    
    // As entry point of this page
    public func pageDidLoad(){
        
    }
    //onSomeButtonPressListener ;)
    public func eventListener(event:Int!){
        switch(event){
        case SEARCH_BUTTON:
            //creating list off real estates posts
            if list.count() == 0{
                self.listAdapter = PostAdapter(list: list,posts: db.getAllRealEstatesByFilter(filter))
            }else{
                self.listAdapter.updateList(db.getAllRealEstatesByFilter(filter))
            }
            break
        case CREATE_NEW_POST:
            //staret create new real estate template
            break
        default:
            break
        }
    }
}
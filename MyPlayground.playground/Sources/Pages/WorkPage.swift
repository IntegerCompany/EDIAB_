import Foundation

public class WorkPage{
    
    let SEARCH = 1
    let CREATE_VACANCY = 2
    let CREATE_RESUME = 3
    let COMPARE_LISTS = 4
    
    var argumets:[String]!
    
    let db = DataBaseHelper()
    /*
    Vacancy form creation
    List of vacancies
    Page of exact vacancy
    Preview of vacancy before posting
    Resume sending
    Related vacancies functionality
    Bookmarks for resume
    Bookmarks for vacancies
    Compare list of vacancies
    Compare list of resume
    Resume form creation
    Search through resumes
    Page of exact resume
    Related resume
    Sending form (connect to employer)
    */
    
    
    // As entry point of this page
    public func pageDidLoad(){
        
        
    }
    //onSomeButtonPressListener ;)
    public func eventListener(event:Int!){
        switch(event){
        case SEARCH:
            buildListByFilter([String]())
            break
        case CREATE_VACANCY:
            // open vacancy builder
            //and attached to user/company
            break
        case CREATE_RESUME:
            // open resume builder
            //and attached to user
            break
        case COMPARE_LISTS:
            //Add one more list
            //View.addList
            buildListByFilter([String]())
            break
        default:
            break
        }
    }
    
    public func buildListByFilter(filter:[String]){
        var list:PostList = PostList()
        var posts:[Post] = db.getAllVacancysByFilter(filter)
        
        var workListAdapter = PostAdapter(list: list, posts: posts)
        
        //perform review list
        workListAdapter.buildListView()
    }

}
import Foundation

public class BusinessPage{
    //event constants : example
    let ADD_COMMENT = 1
    //user clicked on partners list item
    let VIEW_THIS_PARTNER = 2
    //user clicked "Edit" 
    let EDIT_THIS_COMPANY = 3
    
    //current company id
    var companyID:Int!
    var curentCompany:Company!
    var dbHelper:DataBaseHelper!
    
    //Review listAdapter
    var reviewListAdapter:PostAdapter!
    
    //constructor
    public init(_id:Int){
        self.companyID = _id
    }
    //constructor with companyParams
    public init(company:Company){
        self.curentCompany = company
    }
    
    // As entry point of this page
    public func pageDidLoad(){
        
        self.initCurrentCompany()
        self.loadCompanyInfo()
        
    }
    //onSomeButtonPressListener ;)
    public func eventListener(event:Int!){
        switch(event){
        case ADD_COMMENT:
            showCommentTemplate()
            break
        case VIEW_THIS_PARTNER:
            //@params  _id - this method need to be called with selected from list partner id
            viewThisPartner(self.curentCompany.partners.endIndex)
            break
        case EDIT_THIS_COMPANY:
            //
            break
        default:
            break
        }
    }
    /*
    * @See showControllButtons()
    */
    public func initCurrentCompany(){
        self.dbHelper = DataBaseHelper()
        if self.curentCompany == nil {
            self.curentCompany = dbHelper.getCurrentCompanyById(companyID)
        }
        //is this company owner ?
        if getCurrentUser().getId() == curentCompany.ownerId {
            showControllButtons()
        }
    }
    /*
    * @See uploadReviewList()
    * @See uploadGalery()
    * @See updateMap()
    * @See uploadVideo()
    *
    * main functionality - upload contents for current company
    */
    
    public func loadCompanyInfo(){
        self.uploadReviewList()
        self.uploadGalery()
        self.updateMap()
        self.uploadVideo()
    }
    public func showControllButtons(){
        //show editButton:
        //show addNewParnerButton:
        //show deletePartnerButton: actually i`m not sure how to implement this functionality
    }
    public func uploadReviewList(){
        //init you own list from page tamplate
        var list:PostList = PostList()

        self.reviewListAdapter = PostAdapter(list: list, posts: self.curentCompany.reviews)
        //perform review list
        self.reviewListAdapter.buildListView()
    }
    public func uploadGalery(){
        //perform company images
        //self.curentCompany.photos
    }
    public func updateMap(){
        
        //Map.addMarker(self.curentCompany.address)
    }
    public func uploadVideo(){
        //VideoView.setVideoContent(self.curentCompany.video)
    }
    public func uploadListOfPartners(){
        //PartnersList.setPartners = self.curentCompany.partners  //example
    }
    private func openEditPage(){
        //open new window - 
    }
    private func viewThisPartner(_id:Int){
        //openNewPage(BusinessPage(_id))
    }
    private func showCommentTemplate(){
        //set current fields from template to object.
        
        var commentTemplate:CommentTemplate = CommentTemplate(bizPage: self)
        commentTemplate.show()
    }
    private func getCurrentUser()->User{
        //return currentUser
        return User(firstName: "Max",lastName: "Vitruk",email: "MaxVitruk@gmail.com",age: 26,sex: true)
    }
}
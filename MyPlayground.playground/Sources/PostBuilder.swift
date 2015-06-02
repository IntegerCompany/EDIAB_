import Foundation

/**
* This class generate constrains of current post.
* There are several ways how to do this for you. For example use a template!

PostTemplate fields:

var name:String!

var height:Int!
var weight:Int!

var publisherPhoto:Img!
var publishDate:Int!

var publisherName:String!
var descriptionInShort:String!

var tags:[String]!

*/


//THIS IS ABSTRACT CLASS !
public class PostBuilder{
    
    public var template:PostTemplate!
    let db = DataBaseHelper()
    
    public init() {
        self.template = PostTemplate()
    }
    
    public func getBuildedTamplate()->PostTemplate{
        return self.template
    }
    /*
     This method shows or hide controll button
    */
    public func checkEditable(){
        preconditionFailure("Base for all")
    }
    
    public func setName(){
        preconditionFailure("Base for all")
    }
    public func setWeight(){
        preconditionFailure("This method must be overridden")
    }
    public func setHeight(){
        preconditionFailure("This method must be overridden")
    }
    public func setPublisherPhoto(){
        preconditionFailure("Base for all")
    }
    public func setPublishDate(){
        preconditionFailure("Base for all")
    }
    public func setDescription(){
        preconditionFailure("Base for all")
    }
    public func setTags(){
        preconditionFailure("Base for all")
    }
    public func isPhotoBlock(post:Post){
        //add photoBlock
        if post.getPhotos().count < 0 {
           self.template.addPhotoBlock(post.getPhotos())
        }
    }
    public func isVideoBlock(post:Post!){
        if post.getVideos().count < 0 {
            self.template.addVideoBlock(post.getPhotos())
        }
    }
    public func isFileBlock(post:Post!){
        if post.getFiles().count < 0 {
            self.template.addFileBlock(post.getPhotos())
        }
    }
    public func isAttachedToCompany(post:Post){
        let company:Company? = post.getCompany()
        if  company != nil {
            self.template.attachToCompany(company!)
        }
    }
}

public class EventPostBuilder: PostBuilder{
    var post:EventPost!
    
    public init(post:Post){
        super.init()
        self.post = post as! EventPost
    }
    override public func checkEditable() {
        if CurrentUser.canIEditThisPost(post) {
            //show control buttons like:
            // edit / delete
        }
        isPhotoBlock(post)
        isVideoBlock(post)
        isFileBlock(post)
        isAttachedToCompany(post)
    }
    override public func setName() {
        self.template.name = post.name
    }
    override public func setPublishDate() {
        self.template.publishDate = post.date
    }
    override public func setPublisherPhoto() {
        self.template.publisherPhoto = db.getThisUserByID(post.getID()).image
    }
    override public func setDescription() {
        self.template.descriptionInShort = post.description // first 180 charters
    }
    override public func setTags() {
        self.template.tags = post.tag
    }
    override public func setHeight() {
        self.template.height = 200
    }
    override public func setWeight() {
        self.template.weight = 100
    }
    
}
public class ProductPostBuilder: PostBuilder{
    var post:ProductPost!
    
    public init(post:Post){
        super.init()
        self.post = post as! ProductPost
    }
    override public func checkEditable() {
        if CurrentUser.canIEditThisPost(post) {
            //show control buttons like:
            // edit / delete
        }
        isPhotoBlock(post)
        isVideoBlock(post)
        isFileBlock(post)
        isAttachedToCompany(post)
    }
    override public func setName() {
        self.template.name = post.name
    }
    override public func setPublishDate() {
        self.template.publishDate = post.date
    }
    override public func setPublisherPhoto() {
        self.template.publisherPhoto = db.getThisUserByID(post.getID()).image
    }
    override public func setDescription() {
        self.template.descriptionInShort = post.description // first 180 charters
    }
    override public func setTags() {
        self.template.tags = post.tag
    }
    override public func setHeight() {
        self.template.height = 250
    }
    override public func setWeight() {
        self.template.weight = 150
    }
}
public class VacancytPostBuilder: PostBuilder{
    var post:VacancyPost!
    
    public init(post:Post){
        super.init()
        self.post = post as! VacancyPost
    }
    override public func checkEditable() {
        if CurrentUser.canIEditThisPost(post) {
            //show control buttons like:
            // edit / delete
        }
        isPhotoBlock(post)
        isVideoBlock(post)
        isFileBlock(post)
        isAttachedToCompany(post)
    }
    override public func setName() {
        self.template.name = post.name
    }
    override public func setPublishDate() {
        self.template.publishDate = post.date
    }
    override public func setPublisherPhoto() {
        self.template.publisherPhoto = db.getThisUserByID(post.getID()).image
    }
    override public func setDescription() {
        //self.template.descriptionInShort = post.description // first 180 charters
    }
    override public func setTags() {
        self.template.tags = post.tag
    }
    override public func setHeight() {
        self.template.height = 250
    }
    override public func setWeight() {
        self.template.weight = 150
    }
}
public class ResumePostBuilder: PostBuilder{
    var post:ResumePost!
    
    public init(post:Post){
        super.init()
        self.post = post as! ResumePost
    }
    override public func checkEditable() {
        if CurrentUser.canIEditThisPost(post) {
            //show control buttons like:
            // edit / delete
        }
        isPhotoBlock(post)
        isVideoBlock(post)
        isFileBlock(post)
        isAttachedToCompany(post)
    }
    override public func setName() {
        self.template.name = post.name
    }
    override public func setPublishDate() {
        self.template.publishDate = post.date
    }
    override public func setPublisherPhoto() {
        self.template.publisherPhoto = db.getThisUserByID(post.getID()).image
    }
    override public func setDescription() {
        //self.template.descriptionInShort = post.description // first 180 charters
    }
    override public func setTags() {
        self.template.tags = post.tag
    }
    override public func setHeight() {
        self.template.height = 250
    }
    override public func setWeight() {
        self.template.weight = 150
    }
}
public class RealEstatePostBuilder: PostBuilder{
    var post:RealEstatePost!
    
    public init(post:Post){
        super.init()
        self.post = post as! RealEstatePost
    }
    override public func checkEditable() {
        if CurrentUser.canIEditThisPost(post) {
            //show control buttons like:
            // edit / delete
        }
        isPhotoBlock(post)
        isVideoBlock(post)
        isFileBlock(post)
        isAttachedToCompany(post)
    }
    override public func setName() {
        self.template.name = post.name
    }
    override public func setPublishDate() {
        self.template.publishDate = post.date
    }
    override public func setPublisherPhoto() {
        self.template.publisherPhoto = db.getThisUserByID(post.getID()).image
    }
    override public func setDescription() {
        self.template.descriptionInShort = post.description // first 180 charters
    }
    override public func setTags() {
        self.template.tags = post.tag
    }
    override public func setHeight() {
        self.template.height = 250
    }
    override public func setWeight() {
        self.template.weight = 150
    }
}
public class StoryPostBuilder: PostBuilder{
    var post:StoryPost!
    
    public init(post:Post){
        super.init()
        self.post = post as! StoryPost
    }
    override public func checkEditable() {
        if CurrentUser.canIEditThisPost(post) {
            //show control buttons like:
            // edit / delete
        }
        isPhotoBlock(post)
        isVideoBlock(post)
        isFileBlock(post)
        isAttachedToCompany(post)
    }
    override public func setName() {
        self.template.name = post.name
    }
    override public func setPublishDate() {
        self.template.publishDate = post.date
    }
    override public func setPublisherPhoto() {
        self.template.publisherPhoto = db.getThisUserByID(post.getID()).image
    }
    override public func setDescription() {
        self.template.descriptionInShort = post.descriptionShort // first 180 charters
    }
    override public func setTags() {
        self.template.tags = post.tag
    }
    override public func setHeight() {
        self.template.height = 250
    }
    override public func setWeight() {
        self.template.weight = 150
    }
}
public class CommentPostBuilder: PostBuilder{
    var post:Comment!
    
    public init(post:Post){
        super.init()
        self.post = post as! Comment
    }
    override public func checkEditable() {
        if CurrentUser.canIEditThisPost(post) {
            //show control buttons like:
            // edit / delete
        }
        isPhotoBlock(post)
        isVideoBlock(post)
        isFileBlock(post)
        isAttachedToCompany(post)
    }
    override public func setName() {
        self.template.name = post.name
    }
    override public func setPublishDate() {
        self.template.publishDate = post.date
    }
    override public func setPublisherPhoto() {
        self.template.publisherPhoto = db.getThisUserByID(post.getID()).image
    }
    override public func setDescription() {
        self.template.descriptionInShort = post.description // first 180 charters
    }
    override public func setTags() {
        self.template.tags = post.tag
    }
    override public func setHeight() {
        self.template.height = 250
    }
    override public func setWeight() {
        self.template.weight = 150
    }
}

public class MyPostByBuilder {
    var _postBuilder:PostBuilder!
    
    public init(post:Post){
        if(post is EventPost){
            
           _postBuilder = EventPostBuilder(post: post)
        }else if(post is ProductPost){
            
            _postBuilder = ProductPostBuilder(post: post)
        }else if(post is RealEstatePost){
            
            _postBuilder = RealEstatePostBuilder(post: post)
        }else if(post is StoryPost){
            
            _postBuilder = StoryPostBuilder(post: post)
        }else if(post is Comment){
            
            _postBuilder = CommentPostBuilder(post: post)
        }else if(post is VacancyPost){
            
            _postBuilder = VacancytPostBuilder(post: post)
        }else if(post is ResumePost){
            
            _postBuilder = ResumePostBuilder(post: post)
        }
    }
    //todo this method return your cunstructed post with property
    public func constructThisPost()->PostTemplate{
        
        _postBuilder.checkEditable()
        _postBuilder.setHeight()
        _postBuilder.setWeight()
        _postBuilder.setName()
        _postBuilder.setPublishDate()
        _postBuilder.setPublisherPhoto()
        _postBuilder.setTags()
        _postBuilder.setDescription()
        
        return _postBuilder.getBuildedTamplate()
    }
    
}
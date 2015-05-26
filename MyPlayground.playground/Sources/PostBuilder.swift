import Foundation

/**
* This class generate constrains of current post.
* There are several ways how to do this for you. For example use a template!
*/
public class PostBuilder{
    
    public var post:Post!
    
    public func getBuildedPost()->Post{
        return self.post
    }
    
    public func setHeight(){
        preconditionFailure("This method must be overridden")
    }
    public func setWeight(){
        preconditionFailure("This method must be overridden")
    }
    
    
}

public class EventPostBuilder: PostBuilder{
    
    public override init() {
        super.init()
        self.post = EventPost()
    }
    
    override public func setHeight() {
        self.post.height = 200
    }
    override public func setWeight() {
        self.post.weight = 100
    }
    
}
public class ProductPostBuilder: PostBuilder{
    
    public override init() {
        super.init()
        self.post = EventPost()
    }
    
    override public func setHeight() {
        self.post.height = 300
    }
    override public func setWeight() {
        self.post.weight = 150
    }
    
}

public class MyPostByBuilder {
    var _postBuilder:PostBuilder!
    
    public init(post:Post){
        if(post is EventPost){
           _postBuilder = EventPostBuilder()
        }else if(post is ProductPost){
            _postBuilder = ProductPostBuilder()
        }
    }
    //todo this method return your cunstructed post with property
    public func constructThisPost()->Post{
        _postBuilder.setHeight()
        _postBuilder.setWeight()
        
        return _postBuilder.getBuildedPost()
    }
    
}
import Foundation

public class PostTemplate{
    
    var name:String!
    
    var height:Int!
    var weight:Int!
    
    var publisherPhoto:Img!
    var publishDate:String!
    
    var publisherName:String!
    var descriptionInShort:String!
    
    var tags:[String]!
    
    public init(){}
    
    public func addPhotoBlock(photos:[Img]){
        //
    }
    public func addVideoBlock(video:[Img]){
        //
    }
    public func addFileBlock(file:[Img]){
        //
    }
    public func attachToCompany(company:Company){
        //
    }
}

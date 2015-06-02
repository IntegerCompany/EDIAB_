import Foundation

public class Img{
    public init(){}
}
public class Company : Post{
    
    var address:String!
    var phones:[Int]!
    var skype:String!
    var email:String!
    var logo:Img!//(optionally)
    //var tag:[String] = [] //some const. tag
    var video:Int! //(optionally) id from db
    var photos:[Int]! // some photo about this company
    var comments:[Comment]! //company comments (list of this objects)
    var socialLinks:[String] = [] //(optionally)
    var numbersOfWorkers:Int! // (optionally)
    var linkToWebsite:String! //(optionally)
    var partners:[Int]! // array of partners id from db
    var employerId:[Int]! // employers id
    var ownerId:Int! // ...

}
import Foundation

public class Img{
    public init(){}
}
public class Company : Post{
    
    var name:String!
    var address:String!
    var contacts:String!
    var logo:Img!//(optionally)
    //var tag:[String] = [] //some const. tag
    var video:Int! //(optionally) id from db
    var photos:[Int]! // some photo about this company
    var reviews:[Post]! //company reviews (list of this objects)
    var socialLinks:[String] = [] //(optionally)
    var numbersOfWorkers:Int! // (optionally)
    var linkToWebsite:String! //(optionally)

}
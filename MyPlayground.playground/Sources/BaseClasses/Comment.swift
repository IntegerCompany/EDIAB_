import Foundation

public class Comment{
    
    var _id:Int = 1 //hardcode
    var userName:String!
    var userImage:String! //actually is a URL class
    var userID:Int!
    var date:String! //actually is a DataStamp class
    var description:String!
    
    public init(){}
    
    public func getID()->Int{
        return self._id
    }
}
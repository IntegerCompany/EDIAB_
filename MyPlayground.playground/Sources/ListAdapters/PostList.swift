import Foundation

public class PostList{
    //this class simulate listView work processe
    var rowArray:[Post]!
    
    public init(){}
    
    public func addListRow(row:Post){
        //add new row
        self.rowArray.append(row)
    }
    
}

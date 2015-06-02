import Foundation

public class PostList{
    //this class simulate listView work processe
    var rowArray:[PostTemplate]!
    
    public init(){}
    
    public func addListRow(row:PostTemplate){
        //add new row
        self.rowArray.append(row)
    }
    public func clear(){
        self.rowArray.removeAll(keepCapacity: true)
    }
    public func count()->Int{
        return self.rowArray.count
    }
    
}

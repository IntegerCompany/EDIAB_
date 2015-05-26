import Foundation

public protocol UploaderFileDelegate{
    
    func uploadThisFile(filePath:String)->String
    
}

public class FileUploader : UploaderFileDelegate{
    
    var msg:String!
    public init(){
        msg = "Uploading"
    }
    public func uploadThisFile(filePath: String)->String {
        //check of file format and upload to server
        //.doc / .pdf and so on
        return filePath + "/myFile"
    }
}
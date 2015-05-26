import Foundation


public class Post{
    
    var date:String! //for example string , but we neet to change it to normal date format
    var tag:[String]! //some tag const.
}

public class EventPost:Post{
    
    public override init(){
        super.init()
        
    }
    public var description:String!
    
}
public class StoryPost:Post{
    public override init(){
        super.init()
    }
    
}
public class ProductPost:Post{
    
    public override init(){
        super.init()
    }
    var name:String!
    var price:Float!
    var posibleConfiguration:[String]! // need more deatails abut this field
    var category:String! //// need more deatails abut this field
    var photos:[String]! // Galery - array of image ids
    //var tag:[String]! //some tag const.
    var files:[String]! // array of files ids
    public var description:String!
}
public class VacancyPost:Post{
    var category:String!
    var salary:Int!
    var education:String!
    var typeOfEmployment:String! // full time/ part time / can be boolean type - t/f
    var experienceOfWork:String! // may generate one more field with int value -"years" (for example)
    var forStudents:Bool! //checkbox
    var forPupils:Bool! //ceckbox
    var forImigrants:Bool! //cb.
    var contactInfo:String!
    //var tag:[String]! //some tag const.
    var status:Bool! //open/close
    var districtOfCity:String! //(optional)
    var image:Img!
    var file:Int! // resume .doc
    
}
public class ResumePost:Post{
    
    var category:String!
    var salary:Int!
    var education:String!
    var typeOfEmployment:String! // full time/ part time / can be boolean type - t/f
    var experienceOfWork:String! // may generate one more field with int value -"years" (for example)
    var forStudents:Bool! //checkbox
    var forPupils:Bool! //ceckbox
    var forImigrants:Bool! //cb.
    var contactInfo:String!
    //var tag:[String]! //some tag const.
    var status:Bool! //open/close
    var districtOfCity:String!
    var company:Int! // optionaly if vacancy connected to some busieness
    
}
public class RealEstatePost:Post{
    
    var type:String! // buy/ rent by days/ rent for long type
    var photos:[String]! // Galery - array of image ids
    var typeOfPropety:String! // unknown var.
    var square:Int! // m2
    var location:String! // Map location
    var includedServices:[String]! //for rent type // array of constants
    var numberOfFlours:Int! // flour count
    var flour:Int! // current
    //var tag:[String]! //some tag const.
    var name:String!
    var description:String!
    var comments:[Int]! // easy for u!
    var areaOfCity:String!
    var restriction:String! //for example "no dogs" or "w/o party at home"
    
}


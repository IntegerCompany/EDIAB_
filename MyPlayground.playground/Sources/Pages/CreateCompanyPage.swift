import Foundation

public class CreateCompanyPage{
    
    var company:Company!
    let CONFIRM_CHANGES = 1
    let UPLOAD_PHOTOS = 2
    
    let db = DataBaseHelper()
    
    public init(){
        
    }
    public init(company:Company){
        self.company = company
    }
    //endtry point
    public func pageDidLoad(){
        if company != nil {
            //fill content from company class
        }else{
            //empty fields
        }
    }
    //
    //@See db.saveThisCompany(company)
    //@See db.updateThisCompany(company)
    //
    //onSomeButtonPressListener ;)
    public func eventListener(event:Int!){
        switch(event){
        case CONFIRM_CHANGES:
            if company == nil {
                //create new company and set current information from fields
                company = Company()
                company.ownerId = 123
                company.numbersOfWorkers = 12
                //and so on
                db.saveThisCompany(company)
            }else{
                //update company object from current fields
                company.ownerId = 123
                company.numbersOfWorkers = 12
                //and so on
                db.updateThisCompany(company)
            }
            openThisCompany()
            break
        case UPLOAD_PHOTOS:
            //uploading photos func 
            break
        default:
            break
        }
    }
    public func openThisCompany(){
        //openNewPage(BusinessPage(company))
    }

}
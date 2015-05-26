//
//  UserBase.swift
//  EDIAB
//
//  Created by Max Vitruk on 25.05.15.
//
//

import Foundation

public protocol getAbstractProperty {
    
    func getAllPosts()->[Int]
}
public class UserBase:getAbstractProperty{
    
    var firstName:String
    var lastName:String!
    var email:String!
    var age:Int!
    var sex:Bool
    
    public init(firstName:String,lastName:String,email:String,age:Int,sex:Bool){
        self.age = age
        self.lastName = lastName
        self.firstName = firstName
        self.email = email
        self.sex = sex
    }
    
    public func getAllPosts() -> [Int] {
        return [1,2]
    }
}

public class RegisteredUser : UserBase {
    var city:String!
    var phone:Int!
    var neighbors:[String]!
    var location:String!
    var image:String!
    
}
public class User : RegisteredUser{
    var allPosts:[Int]!
    var myVacancies:[Int]!
    var myResumes:[Int]!
    var myProducts:[Int]!
    var myRealEstates:[Int]!
    var myCompanies:[Int]!
    var MyBookmarks:[Int]!
    
    public override func getAllPosts() -> [Int] {
        return [2,4,4]
    }
}

class Admin {
    //todo update this class
}



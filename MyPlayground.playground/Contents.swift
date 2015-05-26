//: Playground - noun: a place where people can play

import Cocoa

var user = UserBase(firstName: "Max",lastName: "Vitruk",email: "MaxVitruk@gmail.com",age: 26,sex: true)

var user2:User?

var user3:UserBase = User(firstName: "Max",lastName: "Vitruk",email: "MaxVitruk@gmail.com",age: 26,sex: true)

user2?.getAllPosts()

user3.getAllPosts()

user.getAllPosts()

var post = ProductPost()
var postEvent = EventPost()


var builder = MyPostByBuilder(post: post)
var postX1 = builder.constructThisPost()

let height = postX1.getHeight()
let weight = postX1.getWight()

var builder2 = MyPostByBuilder(post: postEvent)
var post2 = builder2.constructThisPost()

let height2 = post2.getHeight()
let weight2 = post2.getWight()

var delegate:UploaderFileDelegate? = FileUploader()

let filePath = delegate?.uploadThisFile("c:/doc/doc2")

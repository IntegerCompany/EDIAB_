import Foundation

public class CommentTemplate{
    var bizPage:BusinessPage!
    
    public init(bizPage:BusinessPage){
        self.bizPage = bizPage
    }
    //action from this teplate. succes button
    private func onCommitAndPushButtonPress(){
        var comment:Comment = Comment()
        self.bizPage.reviewListAdapter.insertNewRow(comment)
        self.hide()
    }
    public func show(){
        //show template
    }
    public func hide(){
        //hide template
    }
}
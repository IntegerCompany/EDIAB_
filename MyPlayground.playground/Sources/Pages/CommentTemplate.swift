import Foundation

/*
    This class may be performed like dialog window
*/
public class CommentTemplate{
    var bizPage:BusinessPage!
    
    public init(bizPage:BusinessPage){
        self.bizPage = bizPage
    }
    
    //@See reviewListAdapter()
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
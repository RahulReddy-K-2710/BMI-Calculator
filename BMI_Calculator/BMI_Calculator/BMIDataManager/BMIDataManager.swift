//
//  BMIDataManager.swift
//  BMI_Calculator
//
//  Created by Roja on 14/12/22.
//

import Foundation

struct DataModel {

    static func getshareData() -> [ShareModel] {
        let cell1 = ShareModel(tittle: "Share this App",
                               subTittle: "Share this app with your friends",
                               icon: "square.and.arrow.up")
        let cell2 = ShareModel(tittle: "Rate this App",
                               subTittle: "Review this app on the App Store",
                               icon: "star")
        return [cell1, cell2]
    }
    
    static func getchangeData() -> [ChangeModel] {
        let change = ChangeModel(tittle: "Change Language",
                                 subtittle: "Share this app with your friends",
                                 appearance: "Appearance",
                                 icon: "globe")
        return [change]
    }
    
    static func getSendData() -> [SendFeedBackModel] {
        let feedback = SendFeedBackModel(tittle: "Send FeedBack",
                                         message: "Leave a comment, ask a question, or report an issue. We would love to hear from you!",
                                         icon: "message")
        return [feedback]
    }
}

import Foundation
import SwiftData

@Model
class DiaryItem {
    var tag1: String
    var tag2: String
    var tag3: String
    var tags: [String]
    var tagToAdd: String
    var date: Date
    var content: String
    var image1Name: String
    var image2Name: String
    
    init(
        tag1: String,
        tag2: String,
        tag3: String,
        tags: [String],
        tagToAdd: String,
        date: Date,
        content: String,
        image1Name: String,
        image2Name: String
    ) {
        self.tag1 = tag1
        self.tag2 = tag2
        self.tag3 = tag3
        self.tags = tags
        self.tagToAdd = tagToAdd
        self.date = date
        self.content = content
        self.image1Name = image1Name
        self.image2Name = image2Name
    }
}

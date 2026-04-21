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
    var image1Data: Data?
    var image2Data: Data?

    init(
        tag1: String,
        tag2: String,
        tag3: String,
        tags: [String],
        tagToAdd: String,
        date: Date,
        content: String,
        image1Data: Data? = nil,
        image2Data: Data? = nil
        
        
    ) {
        self.tag1 = tag1
        self.tag2 = tag2
        self.tag3 = tag3
        self.tags = tags
        self.tagToAdd = tagToAdd
        self.date = date
        self.content = content
        self.image1Data = image1Data
        self.image2Data = image2Data
        }
}

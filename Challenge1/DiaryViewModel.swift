//import SwiftData
//import SwiftUI
//
//@Observable
//class DiaryViewModel {
//    var context: ModelContext
//    
//    init(context: ModelContext) {
//        self.context = context
//    }
//    
//    // 저장
//    func save(emotions: [String], content: String) {
//        let entry = DiaryEntry(emotions: emotions, content: content)
//        context.insert(entry)
//        try? context.save()
//    }
//    
//    // 수정
//    func update(_ entry: DiaryEntry, emotions: [String], content: String) {
//        entry.emotions = emotions
//        entry.content = content
//        try? context.save()
//    }
//    
//    // 삭제
//    func delete(_ entry: DiaryEntry) {
//        context.delete(entry)
//        try? context.save()
//    }
//}

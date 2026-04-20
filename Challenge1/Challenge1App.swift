import SwiftUI
import SwiftData

@main
struct Challenge1App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: DiaryItem.self)
    }
}

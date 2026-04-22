import SwiftUI
import SwiftData
import Lottie

@main
struct Challenge1App: App {
    var body: some Scene {
        WindowGroup {
            
                
                ContentView()
            
                
        }
        .modelContainer(for: DiaryItem.self)
    }
}

import SwiftUI
import FirebaseCore

@main
struct TaskWhizApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

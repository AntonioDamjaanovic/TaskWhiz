import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        if viewModel.isSignedIn && !viewModel.currentUserId.isEmpty {
            accountView
        } else {
            LoginView()
        }
    }
    
    @ViewBuilder
    var accountView: some View {
        TabView {
            Tab("Home", systemImage: "house") {
                ToDoListView(userId: viewModel.currentUserId)
            }
            Tab("Profile", systemImage: "person.circle") {
                ProfileView(userId: viewModel.currentUserId)
            }
        }
    }
}

#Preview {
    MainView()
}

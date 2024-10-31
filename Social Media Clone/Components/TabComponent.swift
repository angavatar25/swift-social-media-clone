import SwiftUI

struct CustomTabView: View {
    @State private var selectedTab = 0 // Track selected tab

    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            // Custom Tab Bar
            HStack {
                CustomTabBarButton(iconName: "house.fill", label: "Home", isSelected: selectedTab == 0) {
                    selectedTab = 0
                }
                CustomTabBarButton(iconName: "message", label: "Search", isSelected: selectedTab == 1) {
                    selectedTab = 1
                }
                CustomTabBarButton(iconName: "person.fill", label: "Profile", isSelected: selectedTab == 2) {
                    selectedTab = 2
                }
            }
            .frame(height: 60)
            .background(Color(.systemGray6))
        }
    }
}

struct CustomTabBarButton: View {
    let iconName: String
    let label: String
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            VStack {
                Image(systemName: iconName)
                    .font(.system(size: 24))
                    .foregroundColor(isSelected ? .blue : .gray)
            }
            .padding()
        }
        .frame(maxWidth: .infinity) // Spread buttons evenly
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}

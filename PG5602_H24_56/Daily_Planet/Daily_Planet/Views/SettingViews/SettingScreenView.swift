

import SwiftUI
import SwiftData

struct SettingScreenView: View {
    @Query private var categories: [Category]
    @State private var showBottomSheet: Bool = false
    @Environment(\.modelContext) private var modelContext
    var body: some View {
        NavigationStack {
            VStack {
                    Button("Add Category") {
                        showBottomSheet.toggle()
                    }
                    .sheet(isPresented: $showBottomSheet) {
                        CategoryBottomView()
                            .presentationDetents([.medium])
                    }
                
                    Spacer()
                Text("Your Categories")
                    .font(Font.custom("Poppins-SemiBold", size: 21))
                    List {
                        ForEach(categories) { category in
                            CategoryListView(category: category)
                        }
                        
                       
                    }
                    
            }
            .navigationTitle("Setting")
        }
    }
}

#Preview {
    SettingScreenView()
}

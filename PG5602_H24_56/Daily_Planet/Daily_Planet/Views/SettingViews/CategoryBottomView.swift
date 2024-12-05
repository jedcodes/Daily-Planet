

import SwiftUI

struct CategoryBottomView: View {
    @State private var textInput: String = ""
    @Environment(\.modelContext) private var context
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("Add Category")
                .font(Font.custom("Poppins-SemiBold", size: 20))
                .padding()
            
            TextField("Enter Category", text: $textInput)
                .padding()
                .background(Theme.InputBGColor)
                .cornerRadius(10)
            
            Spacer()
            
            Button("Add") {
                let newCategory = Category( title: textInput)
                context.insert(newCategory)
            }
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    CategoryBottomView()
}

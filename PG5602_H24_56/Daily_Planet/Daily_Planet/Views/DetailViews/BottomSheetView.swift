

import SwiftUI
import SwiftData

struct BottomSheetView: View {
    @Environment(\.modelContext) private var modelContext
    @State private var selectedCategory: Category?
    @Query private var categories: [Category]
    let article: NewsArticle
    var body: some View {
        VStack {
            Picker("Select Category", selection: $selectedCategory) {
                ForEach(categories, id: \.id) { category in
                    Text(category.title).tag(category as Category?)
                        .font(.caption)
                        .foregroundStyle(selectedCategory == category ? .primary : .secondary)
                }
            }
            .pickerStyle(MenuPickerStyle())
            .padding()
            
            Button("Save") {
                let saveArticle: Article = Article(author: article.author, title: article.title, articleDescription: article.description, url: article.url, urlToImage: article.urlToImage, publishedAt: article.publishedAt, source: article.source.name)
                
                modelContext.insert(saveArticle)
            }
        }
    }
}

#Preview {
    BottomSheetView(article: SampleData.MockDataTwo)
}

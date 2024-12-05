import SwiftUI
import SwiftData

struct ArticleScreenView: View {
    @Query private var articles: [Article]
    @Environment(\.modelContext) var modelContext
    var body: some View {
        NavigationStack {
            VStack {
                if articles.isEmpty {
                    EmptyListView(title: "You currently have no saved articles.", subtitle: "Go to search screen to view and save articles.", imageName:"bookmark.slash.fill")
                } else {
                    List {
                        ForEach(articles, id: \.id) { article in
                            NavigationLink(destination: ArticleDetailScreenView(article: article)) {
                                ArticleListView(article: article)
                            }
                        }
                    }
                }
                
            }
            .toolbar {
                Button {
                    addArticle()
                } label: {
                    Image(systemName: "ellipsis.circle.fill")
                        .renderingMode(.original)
                }
            }
        }
    }
    
    func addArticle() {
        let articleOne: Article = SampleData.MockData
        
        modelContext.insert(articleOne)
    }
}

#Preview {
    ArticleScreenView()
}

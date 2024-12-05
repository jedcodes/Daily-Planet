import Foundation
import SwiftData

@Model
final class Category {
    @Attribute(.unique) var id: UUID
    var title: String
    @Relationship(deleteRule: .cascade) var articles: [Article]?

    init(id: UUID = UUID(), title: String, articles: [Article]? = nil) {
        self.id = id
        self.title = title
        self.articles = articles
    }
}

//
//  Article.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 02/12/2024.
//

import Foundation
import SwiftData


@Model
class Article {
    var author: String?
    var title: String
    var articleDescription: String
    var url: String
    var urlToImage: String?
    var publishedAt: String
    var content: String?
    var source: String
    

    init(author: String? = nil, title: String, articleDescription: String, url: String, urlToImage: String? = nil, publishedAt: String, content: String? = nil, source: String) {
        self.author = author
        self.title = title
        self.articleDescription = articleDescription
        self.url = url
        self.urlToImage = urlToImage
        self.publishedAt = publishedAt
        self.content = content
        self.source = source
    }
  
}

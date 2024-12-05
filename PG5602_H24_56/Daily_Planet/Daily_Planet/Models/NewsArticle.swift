//
//  NewsArticle.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 02/12/2024.
//

import Foundation

struct NewsResponse: Codable {
    let status: String
    let totalResults: Int
    let articles: [NewsArticle]
}


struct NewsSource: Codable {
    let id: String?
    let name: String
}

struct NewsArticle: Codable  {
    let source: NewsSource
    let author: String?
    let title: String
    let description: String
    let url: String
    let urlToImage: String?
    let publishedAt: String
    let content: String?
}

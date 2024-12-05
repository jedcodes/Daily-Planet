//
//  SearchAPIModel.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 03/12/2024.
//

import Foundation

@Observable
class SearchAPIModel {
    var articles: [NewsArticle] = [NewsArticle]()
    private let repository = SearchRepository()
    
    func getArticles(query: String) async {
        do {
            let fetchedArticles = try await repository.fetchNewsArticles(query: query)
            self.articles = fetchedArticles
        } catch {
            print("Error fetching articles: \(error.localizedDescription)")
        }
    }
}

//
//  SearchScreenView.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 02/12/2024.
//

import SwiftUI

struct SearchScreenView: View {
    @State private var isShowingSheet: Bool = false
    private let model = SearchAPIModel()
    @State private var searchTerm: String = ""
    var body: some View {
        NavigationStack {
            ZStack {
                Color(Theme.BGColor)
                    .ignoresSafeArea()
                
                VStack(spacing: 30) {
                    TextField("Search...", text: $searchTerm)
                        .padding()
                        .background(Theme.subBGColor)
                        .cornerRadius(10)
                        .onSubmit {
                            Task {
                                await model.getArticles(query: searchTerm)
                            }
                        }
                    
                    if model.articles.isEmpty {
                        EmptyListView(title: "Enter search term", subtitle: "Or tap on filter more to customize your search", imageName: "plus")
                    } else {
                      List {
                          ForEach(model.articles, id: \.source.id) { article in
                              NavigationLink(destination: SearchDetailScreenView(article: article)) {
                                  SearchCardView(article: article)
                              }
                          }
                        }
                    }
                    Spacer()
                    
                }
                .padding(.horizontal, 20)
            }
        }
    }
}

#Preview {
    SearchScreenView()
}

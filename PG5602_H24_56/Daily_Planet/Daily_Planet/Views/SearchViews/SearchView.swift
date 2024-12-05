//
//  SearchView.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 03/12/2024.
//

import SwiftUI

struct SearchView: View {
    @Environment(\.dismiss) var dismiss
    @State var searchTerm: String = ""
    @Environment(\.modelContext) var modelContext
   private let model = SearchAPIModel()
    var body: some View {
        ZStack {
            Color(Theme.BGColor)
                .ignoresSafeArea()
            VStack {
                Text("Customize your search based on topics, categories, languages or news sources.")
                    .multilineTextAlignment(.center)
                    .foregroundStyle(Theme.TextColor)
                    .padding()
                
                TextField("Search articles...", text: $searchTerm)
                    .padding()
                    .background(Color(Theme.subBGColor))
                    
                Spacer()
                
                
                
                    Button {
                        loadData()
                       
                    } label: {
                        Text("Search")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .frame(width: 300, height: 50)
                            .foregroundStyle(.white)
                            .background(Theme.subBGColor)
                            .cornerRadius(10)
                    }
            }
            .padding()
            
        }
    }
    
    func loadData () {
        Task {
            model.articles = try await SearchRepository().fetchNewsArticles(query: searchTerm)
            dismiss()
        }
    }
}

#Preview {
    SearchView()
}

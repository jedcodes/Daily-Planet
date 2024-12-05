//
//  ArticleDetailScreenView.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 02/12/2024.
//

import SwiftUI

struct ArticleDetailScreenView: View {
    let article: Article
    @Environment(\.modelContext) private var modelContext
    var body: some View {
        ScrollView {
            
                        Image("placeholder")
                            .resizable()
                            .ignoresSafeArea()
                            .frame( height: 300)
                    
                    VStack {
                        Text(article.title)
                            .font(.system(size: 20, weight: .semibold))
                        Text(article.articleDescription)
                            .font(.system(size: 16, weight: .regular))
                            .multilineTextAlignment(.center)
                            .padding()
                        
                        HStack (spacing: 30) {
                            VStack {
                                Text("Author")
                                    .font(.caption)
                                    .fontWeight(.bold)
                                Text(article.author!)
                                    .fontWeight(.semibold)
                            }
                            VStack {
                                Text("Source")
                                    .font(.caption)
                                    .fontWeight(.bold)
                                Text(article.source)
                                    .fontWeight(.semibold)
                            }


                        }
                        
                        Text(article.content!)
                            .multilineTextAlignment(.center)
                            .padding()


                    }
            
        }
        HStack {
            Button {
                
            } label: {
                Text("Save Article")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(width: 150, height: 50)
                    .foregroundStyle(.white)
                    .background(Color(Theme.subBGColor))
                    .cornerRadius(10)
            }
            Button {
                print("Read more")
            } label: {
                Text("Read more")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(width: 150, height: 50)
                    .foregroundStyle(.white)
                    .background(Color(Theme.subBGColor))
                    .cornerRadius(10)
            }
        }
        .padding(.vertical, 20)
        
    }
}

#Preview {
    ArticleDetailScreenView(article: SampleData.MockData)
}

//
//  ArticleListView.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 02/12/2024.
//

import SwiftUI

struct ArticleListView: View {
    var article: Article
    var body: some View {
        HStack(alignment: .center,spacing: 10) {
            Image("placeholder")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 100)
                .cornerRadius(10)
           
            
            VStack(alignment: .leading) {
                Text(article.title)
                    .font(Font.custom("Poppins-Bold", size: 22))
                    .foregroundStyle(Theme.TextColor)
                
                Text(article.source)
                    .font(Font.custom("Poppins-Regular", size: 18))
                    .foregroundStyle(Theme.TextColor)
            }
        
        }
        .padding(20)
    }
}

#Preview {
    ArticleListView(article: SampleData.MockData)
}

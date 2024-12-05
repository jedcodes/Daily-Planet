//
//  CategoryListView.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 04/12/2024.
//

import SwiftUI

struct CategoryListView: View {
    var category: Category
    var body: some View {
        Text(category.title)
            .font(Font.custom("Poppins-SemiBold", size: 22))
    }
}

#Preview {
    CategoryListView(category: Category(id: UUID(), title: "Test Category"))
}

//
//  Search.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 03/12/2024.
//

import Foundation
import SwiftData

@Model
final class Search {
  var searchTerm: String
    
    init (searchTerm: String) {
        self.searchTerm = searchTerm
    }
}

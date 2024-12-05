//
//  ErrorRepository.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 03/12/2024.
//

import Foundation

enum ErrorRepository: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}

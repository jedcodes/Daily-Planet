//
//  Country.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 04/12/2024.
//

import Foundation
import SwiftData

@Model
final class Country {
    var countries: [String]
    
    init(countries: [String] = ["ae", "ar", "at", "au", "be", "bg", "br", "ca", "ch", "cn", "co", "cu", "cz", "de", "eg", "fr", "gb", "gr", "hk", "hu", "id", "ie", "il", "in", "it", "jp", "kr", "lt", "lv", "ma", "mx", "my", "ng", "nl", "no", "nz", "ph", "pl", "pt", "ro", "rs", "ru", "sa", "se", "sg", "si", "sk", "th", "tr", "tw", "ua", "us", "ve", "za"] 
) {
        self.countries = countries
    }

}

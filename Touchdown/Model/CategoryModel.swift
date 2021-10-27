//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Natraj, Rohit on 10/27/21.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}

//
//  CategoryModel.swift
//  Touch Down
//
//  Created by Kosei Ban on 2022-09-14.
//

import Foundation

struct Category: Codable, Identifiable {
  let id: Int
  let name: String
  let image: String
}

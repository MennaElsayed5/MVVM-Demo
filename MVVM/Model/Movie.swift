//
//  Movie.swift
//  MVVM
//
//  Created by Menna on 08/05/2022.
//

import Foundation


struct MovieJSONData: Codable {
    let data : [Movie]
}

struct Movie: Codable {
    
    let title : String?
    
}

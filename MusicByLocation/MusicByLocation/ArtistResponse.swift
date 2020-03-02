//
//  ArtistResponse.swift
//  MusicByLocation
//
//  Created by Compton-Burnett, Luke (PGW) on 02/03/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import Foundation

struct ArtistResponse: Codable {
    var resultCount: Int
    var results: [Artist]
    
    
}

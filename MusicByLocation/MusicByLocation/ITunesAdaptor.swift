//
//  ITunesAdaptor.swift
//  MusicByLocation
//
//  Created by Compton-Burnett, Luke (PGW) on 05/03/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import Foundation

class ITunesAdaptor {
    let baseURL = "https://itunes.apple.com"
    let decoder = JSONDecoder()
    
    func getArtists(search: String?, completion: @escaping ([Artist]?) -> Void) {
        guard let search = search else {
            print("No search term provided")
            return }
        
        let path = "/term=\(search)&entity=musicArtist".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        
        guard let url = URL(string: baseURL + path)
            else {
                print("invalid URL")
                completion (nil)
                return 
        }
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let data = data {
                if let response = self.parseJson(json: data) {
                    completion(response.results)
                }
            }
        }.resume()
    }
    
    func parseJson(json: Data) -> ArtistResponse? {
        do {
            let artistResponse = try decoder.decode(ArtistResponse.self, from: json)
            return artistResponse
        } catch {
            print("Failed to decode Artist Response")
            return nil
        }
    }
}

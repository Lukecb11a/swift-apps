//
//  ViewController.swift
//  MusicByLocation
//
//  Created by Compton-Burnett, Luke (PGW) on 26/02/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    let locationManager = CLLocationManager()
    let geocoder = CLGeocoder()
    
    @IBOutlet var musicRecommendations: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.requestWhenInUseAuthorization()
        locationManager.delegate = self
        locationManager.requestLocation()
    }

    @IBAction func findMusic(_ sender: Any) {
        locationManager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let firstLocation = locations.first {
            geocoder.reverseGeocodeLocation(firstLocation, completionHandler: { (placemarks, error) in
                if error != nil {
                    self.musicRecommendations.text = "could not lookup location so here is your latatude: \(firstLocation.coordinate.latitude.description)"
                } else {
                    
                    self.musicRecommendations.text = self.getArtists(location: placemarks?[0].locality?.replacingOccurrences(of: " ", with: "%20") ?? "Jovi")
                    
                    
                }
                
            })
            
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        musicRecommendations.text = "Could not access user's location."
    }
    
    func getArtists(location: String) -> String{
        guard let url = URL(string: "https://itunes.apple.com/search?term="+location+"&entity=musicArtist")
            else {
                print("invalid URL")
                return "Invalid URL, wasn't able to search Itunes"
        }
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let data = data {
                if let response = self.parseJson(json: data) {
                    let names = response.results.map {
                        return $0.artistName
                    }
                    DispatchQueue.main.async {
                        self.musicRecommendations.text = names.joined(separator: ", ")
                    }
                    
                    
                }
            }
        }.resume()
        return ""
    }
    
    func parseJson(json: Data) -> ArtistResponse? {
        let decoder = JSONDecoder()
        
        do {
            let artistResponse = try decoder.decode(ArtistResponse.self, from: json)
            return artistResponse
        } catch {
            print("Failed to decode Artist Response")
            return nil
        }
        
        
    }
    
}


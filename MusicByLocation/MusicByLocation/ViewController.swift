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
    let iTunesAdapter = ITunesAdaptor()
    
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
                    if let firstPlacemark = placemarks?[0] {
                        self.iTunesAdapter.getArtists(search: firstPlacemark.locality) { (artists) in
                            let names = artists?.map{ return $0.artistName}
                            self.musicRecommendations.text = names?.joined(separator: ", ")
                        }
                    }
                }
            })
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        musicRecommendations.text = "Could not access user's location."
    }
    
    
}


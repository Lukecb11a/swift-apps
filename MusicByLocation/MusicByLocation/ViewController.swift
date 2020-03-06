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
    let iTunesAdapter = ITunesAdaptor()
    let locationManagerDelegate = LocationManagerDelegate()
    
    @IBOutlet var musicRecommendations: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.requestWhenInUseAuthorization()
        locationManager.delegate = locationManagerDelegate
        locationManagerDelegate.vc = self
        locationManager.requestLocation()
    }

    @IBAction func findMusic(_ sender: Any) {
        locationManager.requestLocation()
    }
    
    func updateDiaplay(text: String?) {
        musicRecommendations.text = text
    }
    
    func updateArtistsByLocation(text: String?) {
        self.iTunesAdapter.getArtists(search: text) { (artists) in
            let names = artists?.map{ return $0.artistName}
            self.musicRecommendations.text = names?.joined(separator: ", ")
        }
    }
    
    
}


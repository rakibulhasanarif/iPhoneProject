//
//  ViewController.swift
//  iosGroupProject
//
//  Created by Rakibul Hasan on 31/7/20.
//  Copyright © 2020 Rakibul Hasan. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,CLLocationManagerDelegate{
    
    @IBOutlet var table:UITableView!
    
    var models = [Weather]()
    var currentlocation:CLLocation?
    let locationManager = CLLocationManager()
    
    func setLocation()
    {
        locationManager.delegate=self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if !locations.isEmpty,currentlocation == nil{
            currentlocation = locations.first
            locationManager.stopUpdatingLocation()
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.register(HourlyUpdateTableViewCell.nib(),forCellReuseIdentifier:HourlyUpdateTableViewCell.identifier)
        table.register(WeatherTableViewCell.nib(),forCellReuseIdentifier:WeatherTableViewCell.identifier)
        
        table.delegate = self
        table.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }


}

struct Weather
{
    
}

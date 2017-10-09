//
//  ChangeCityViewController.swift
//  WeatherApp
//
//  Created by sai kumar on 10/7/17.
//  Copyright © 2017 sai kumar. All rights reserved.
//

import UIKit


protocol ChangeCityDelegate {
    func userEnteredANewCityName(city: String)
}


class ChangeCityViewController: UIViewController {
    
   
    var delegate : ChangeCityDelegate?
    
 
    @IBOutlet weak var changeCityTextField: UITextField!

   
    @IBAction func getWeatherPressed(_ sender: AnyObject) {

    
        let cityName = changeCityTextField.text!
        

        delegate?.userEnteredANewCityName(city: cityName)

        self.dismiss(animated: true, completion: nil)
        
    }
    

    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

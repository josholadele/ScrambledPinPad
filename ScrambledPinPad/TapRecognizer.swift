//
//  TapRecognizer.swift
//  ScrambledPinPad
//
//  Created by AppZone-PC1 on 2/27/17.
//  Copyright © 2017 AppZone group. All rights reserved.
//

import UIKit

class TapRecognizer: UITapGestureRecognizer {
    
    func onKeyTapped(sender: UITapGestureRecognizer) -> Void  {
        let tapLocation = sender.location(in: ViewController().keysTableView)
        
        //using the tapLocation, we retrieve the corresponding indexPath
        let indexPath = ViewController().keysTableView.indexPathForRow(at: tapLocation)
        
        //finally, we print out the value
        print(indexPath)
        
        //we could even get the cell from the index, too
        let cell = ViewController().keysTableView.cellForRow(at: indexPath!)
        
        cell?.textLabel?.text = "Hello, Cell!"
    }
}

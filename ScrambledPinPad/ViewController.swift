//
//  ViewController.swift
//  ScrambledPinPad
//
//  Created by AppZone-PC1 on 2/20/17.
//  Copyright © 2017 AppZone group. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var keysTableView: UITableView!
    func tapDetected(sender:UITapGestureRecognizer){
        
        
        let tapLocation = sender.location(in:
            keysTableView)
        
        //using the tapLocation, we retrieve the corresponding indexPath
        let indexPath = keysTableView.indexPathForRow(at: tapLocation)
        
        //finally, we print out the value
        print(indexPath)
        
        //we could even get the cell from the index, too
        let cell = ViewController().keysTableView.cellForRow(at: indexPath!)
        
        cell?.textLabel?.text = "Hello, Cell!"

        
        
        
        
        
        
        
//        let cell:UITableViewCell =  UITableViewController().tableView(keysTableView, cellForRowAt: IndexPath(item: 1, section: 0))
//
//        print(cell.reuseIdentifier)
//        print("Button clicked \(self.keysTableView.numberOfRows(inSection: 1))")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let singleTap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.tapDetected(sender:)))
        singleTap.numberOfTapsRequired = 1
        singleTap.numberOfTouchesRequired = 1
        //singleTap.removeTarget(self, action: #selector(ViewController.tapDetected))
        self.shuffleContent.addGestureRecognizer(singleTap)
        self.shuffleContent.isUserInteractionEnabled = true
        
        //self.shuffleContent.layer.cornerRadius = self.shuffleContent.frame.size.width / 2;
        self.shuffleContent.clipsToBounds = true
        
        
        //let newIndex:IndexPath = IndexPath(row: 1, section: 1)
        
        
    }
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cellIdentifier: String = "CountryCell"
//        var cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
//        cell?.accessoryType = .disclosureIndicator
//        return cell!
//    }

    @IBOutlet weak var shuffleContent: UIView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

//
//  CollectionVC.swift
//  ScrambledPinPad
//
//  Created by AppZone-PC1 on 2/26/17.
//  Copyright © 2017 AppZone group. All rights reserved.
//

import UIKit

class CollectionVC: UICollectionViewController {

    @IBOutlet var myCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //myCollectionView.backgroundColor = UIColor.blue
        let number:Int=myCollectionView.numberOfItems(inSection: 0)
        print("this is it: \(number)")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

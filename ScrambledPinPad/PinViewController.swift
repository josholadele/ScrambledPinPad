//
//  PinViewController.swift
//  ScrambledPinPad
//
//  Created by AppZone-PC1 on 2/27/17.
//  Copyright © 2017 AppZone group. All rights reserved.
//

import UIKit

//extension MutableCollection where Indices.Iterator.Element == Index {
//    /// Shuffles the contents of this collection.
//    mutating func shuffle() {
//        let c = count
//        guard c > 1 else { return }
//        
//        for (firstUnshuffled , unshuffledCount) in zip(indices, stride(from: c, to: 1, by: -1)) {
//            let d: IndexDistance = numericCast(arc4random_uniform(numericCast(unshuffledCount)))
//            guard d != 0 else { continue }
//            let i = index(firstUnshuffled, offsetBy: d)
//            swap(&self[firstUnshuffled], &self[i])
//        }
//    }
//}
extension MutableCollection where Index == Int {
    /// Shuffle the elements of `self` in-place.
    mutating func shuffle() {
        // empty and single-element collections don't shuffle
        if count < 2 { return }
        
        for i in startIndex ..< endIndex - 1 {
            let j = Int(arc4random_uniform(UInt32(endIndex - i))) + i
            if i != j {
                swap(&self[i], &self[j])
            }
        }
    }
}

extension Sequence {
    /// Returns an array with the contents of this sequence, shuffled.
    func shuffled() -> [Iterator.Element] {
        var result = Array(self)
        result.shuffle()
        return result
    }
}

class PinViewController: UIViewController {

    @IBOutlet weak var backImage: UIImageView!
    @IBOutlet weak var key1: UIButton!
    @IBOutlet weak var key2: UIButton!
    @IBOutlet weak var key3: UIButton!
    @IBOutlet weak var key4: UIButton!
    @IBOutlet weak var key5: UIButton!
    @IBOutlet weak var key6: UIButton!
    @IBOutlet weak var key7: UIButton!
    @IBOutlet weak var key8: UIButton!
    @IBOutlet weak var key9: UIButton!
    @IBOutlet weak var shuffleKey: UIButton!
    @IBOutlet weak var key10: UIButton!
    @IBOutlet weak var cancelKey: UIButton!
    
    @IBOutlet weak var char1: UILabel!
    //var pressedButton:UIButton?
    var charsEntered:Int = 0
    
    
    var numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    var buttonArray:[UIButton] = [UIButton]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        buttonArray = [key1,key2,key3,key4,key5,key6,key7,key8,key9,key10]
        for button in buttonArray{
            
            button.addTarget(self, action: #selector(onKeyPressed), for: .touchUpInside)
            
//            button.addGestureRecognizer(singleTap)
        }
        let shuffleTap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(PinViewController.shuffle))
        shuffleTap.numberOfTapsRequired = 1
        shuffleTap.numberOfTouchesRequired = 1
        
        self.shuffleKey.addGestureRecognizer(shuffleTap)
        
        
        
    }

     func onKeyPressed(button: UIButton) {
        //pressedButton = button!
        
        switch charsEntered {
        case 0:
            char1.text = button.title(for: .normal)
            break
        case 1:
            char1.text = button.title(for: .normal)
            break
        case 2:
            char1.text = button.title(for: .normal)
            break
        case 3:
            char1.text = button.title(for: .normal)
            onPinEntered(pinString: (char1.text?.appending("fo"))!)
            break
        default:
            break
        }
        
        charsEntered = charsEntered + 1
        print("nothing")
        //print("pressed key \(button.currentTitle?.capitalized)")
    }
    
    func shuffle() {
        
        numbers.shuffle()
        
        for button in buttonArray{
            let i = buttonArray.index(of: button)
            button.setTitle(String(numbers[i!]), for: UIControlState.normal)
        }
        
    }
    
    func onPinEntered(pinString: String) ->Void{
        
    }

    
}

//
//  ViewController.swift
//  CalculatorProject
//
//  Created by Johnny Hacking on 5/13/21.
//

import UIKit

class ViewController: UIViewController {

    var result = 0
    var stringTest = ""
    //use an array to store all values that will go through to do all the math.
    @IBOutlet weak var resultsLabel: CPResultsLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.4535933514)
        
    }
}
extension ViewController{
    //MARK: - Number Button Pressed
    @IBAction func numButtonPressed(_ sender: UIButton){
        switch sender.tag {
        case 1:
            stringTest.append("1")
        case 2:
            stringTest.append("2")
        case 3:
            print("3")
        case 4:
            print("4")
        case 5:
            stringTest.append("5")
        case 6:
            print("6")
        case 7:
            print("7")
        case 8:
            print("8")
        case 9:
            print("9")
        default:
            print("0")
        }
    }
    //MARK: - Operation Button Pressed
    @IBAction func operationButtonPressed(_ sender: UIButton){
        // = tag 0, + is tag 1, - is tag 2, X is tag 3, division is tag 4
        switch sender.tag {
        case 1:
            print("+")
        case 2:
            print("-")
        case 3:
            print("X")
        case 4:
            print("division")
        default:
            print("= was pressed")
            if let number = Int(stringTest){
                print(number + 100)
            }
            
        }
    }
    
    //MARK: - Other Button Pressed
    @IBAction func otherButtonPressed(_ sender: UIButton){
        // . is tag 0, % is tag 1, +/- is tag 2, AC is tag 3
        switch sender.tag {
        case 1:
            print("%")
        case 2:
            print("+/-")
        case 3:
            print("AC")
        default:
            print(".")
        }
    }

}


//
//  ViewController.swift
//  CalculatorProject
//
//  Created by Johnny Hacking on 5/13/21.
//

import UIKit

class ViewController: UIViewController {

    
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
            print("1")
        case 2:
            print("2")
        case 3:
            print("3")
        case 4:
            print("4")
        case 5:
            print("5")
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
            print("=")
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


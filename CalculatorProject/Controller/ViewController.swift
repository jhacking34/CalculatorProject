//
//  ViewController.swift
//  CalculatorProject
//
//  Created by Johnny Hacking on 5/13/21.
//

import UIKit

class ViewController: UIViewController {

    var result = 0
    var buildNumber = ""
    var mathProblem : [String] = []
    //use an array to store all values that will go through to do all the math.
    @IBOutlet weak var resultsLabel: CPResultsLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.4535933514)
        
    }
    func updateResults(_ button: String) {
        
        switch button {
        case "AC":
            resetBuildNumber()
            mathProblem = []
            resultsLabel.text = "0"
        case "+":
            // using if statement to only append values that are not blank or no value.
            if buildNumber != ""{ mathProblem.append(buildNumber) }
            mathProblem.append("+")
            resetBuildNumber()
        case "=":
            mathProblem.append(buildNumber)
            resetBuildNumber()
            performCalculation()
        default:
            buildNumber.append(button)
            resultsLabel.text = buildNumber
        }
    }
    
    func performCalculation() {
        
        // need to add error checking if you click number and then = and another number.  also if you click number and then =
        var calOperator : [String] = []
        var numbers : [Int] = []
        for item in mathProblem{
            if item == "+" {
                calOperator.append("+")
            } else {
                if let value = Int(item){
                    numbers.append(value)
                }
            }
            
            for i in numbers{
                
            }
            //Need to set build number to calculated value
            
            print("operator: \(calOperator.count)")
            print("numbers: \(numbers.count)")
        }
    }
    
    func resetBuildNumber(){
        buildNumber = ""
    }
}
extension ViewController{
    //MARK: - Number Button Pressed
    @IBAction func numButtonPressed(_ sender: UIButton){
        switch sender.tag {
        case 1:
            updateResults("1")
        case 2:
            updateResults("2")
        case 3:
            updateResults("3")
        case 4:
            updateResults("4")
        case 5:
            updateResults("5")
        case 6:
            updateResults("6")
        case 7:
            updateResults("7")
        case 8:
            updateResults("8")
        case 9:
            updateResults("9")
        default:
            updateResults("0")
        }
    }
    //MARK: - Operation Button Pressed
    @IBAction func operationButtonPressed(_ sender: UIButton){
        // = tag 0, + is tag 1, - is tag 2, X is tag 3, division is tag 4
        switch sender.tag {
        case 1:
            updateResults("+")
        case 2:
            print("-")
        case 3:
            print("X")
        case 4:
            print("division")
        default:
            updateResults("=")
            print(mathProblem)
//            if let number = Int(buildNumber){
//                print(number + 100) 
//            }
            
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
            updateResults("AC")
        default:
            print(".")
        }
    }

}


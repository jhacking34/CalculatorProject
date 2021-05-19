//
//  ViewController.swift
//  CalculatorProject
//
//  Created by Johnny Hacking on 5/13/21.
//

import UIKit

class ViewController: UIViewController {

    var result : Double = 0
    var buildNumber = "0"
    var mathProblem : [String] = []
    //use an array to store all values that will go through to do all the math.
    @IBOutlet weak var resultsLabel: CPResultsLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.4535933514)
        
    }
    
    //MARK: - Functions
    func updateResults(_ button: String) {
        
        switch button {
        case "AC":
            zeroOutBuildNumber()
            mathProblem = []
            result = 0
            resultsLabel.text = "0"
        case "+":
            evaluateMath()
            mathProblem.append("+")
            resetBuildNumber()
        case "-":
            evaluateMath()
            mathProblem.append("-")
            resetBuildNumber()
        case "X":
            evaluateMath()
            mathProblem.append("X")
            resetBuildNumber()
        case "division":
            evaluateMath()
            mathProblem.append("division")
            resetBuildNumber()
        case "=":
            mathProblem.append(buildNumber)
            resetBuildNumber()
            performCalculation()
        default:
            // This will reset the string to blank so if the first number key clicked wont show a (example 03) but just (3) first time app load buildNumber is set to "0" and same with clicking AC
            if buildNumber == "0" { resetBuildNumber() }
            buildNumber.append(button)
            resultsLabel.text = buildNumber
        }
    }
    
    func performCalculation() {
        var calOperator = ""
        var numbers : [Double] = []
        //seperates out our math problem into the arrays above
        for item in mathProblem{
            if let value = Double(item){
                numbers.append(value)
            } else {
                calOperator = item
            }
        }
        
        //If we have enough numbers then perform math.
        if numbers.count > 1{
            switch calOperator {
            case "+":
                result = numbers[0] + numbers[1]
            case "-":
                result = numbers[0] - numbers[1]
            case "X":
                result = numbers[0] * numbers[1]
            case "division":
                result = numbers[0] / numbers[1]
            default:
                print("need another number")
            }
        }
        
        resultsLabel.text = "\(result)"
        //resetting the math problem to only have 1 item in array with that number being the result
        mathProblem = ["\(result)"]
    }
    
    //resets the number created in the calculator or if an operator button was seletect back to blank
    func resetBuildNumber(){
        buildNumber = ""
    }
    //reset the build number to 0
    func zeroOutBuildNumber(){
        buildNumber = "0"
    }

    func evaluateMath(){
        // using if statement to only append values that are not blank or no value.
        if buildNumber != ""{ mathProblem.append(buildNumber) }
        // 2 numbers and 1 operator
        if mathProblem.count == 3 { performCalculation() }
    }
}
extension ViewController{
    //MARK: - Number Button Pressed
    @IBAction func numButtonPressed(_ sender: UIButton){
        // I used the tags for each button.
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
            updateResults("-")
        case 3:
            updateResults("X")
        case 4:
            updateResults("division")
        default:
            updateResults("=")
            print(mathProblem)
            
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
            updateResults(".")
        }
    }

}


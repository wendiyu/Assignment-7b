

// Created on: December--2018
// Created by: Wendi Yu
// Created for: ICS3U
// This program is the UIKit solution for find the largest and smallest homework hours for last 5 days  
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    var anNumberArray : [Int] = []
    
    let introLable = UILabel()
    let displayLable = UILabel()
    let checkNumberLable = UILabel()
    let numberTextField = UITextField()
    let answerLable = UILabel()
    let answerLable2 = UILabel()
    let answerButton = UIButton()
    let answerButton2 = UIButton()
    
    @objc func displayArray() {
        // displays an array after you click the button
        
        let userNumber : Int = Int(numberTextField.text!)!
        if userNumber > 0 && userNumber < 100 {
            anNumberArray.append(userNumber)
            displayLable.text = ("The homework hours in last 5 days are: \(anNumberArray)")
        }
        else {
            displayLable.text = ("Invalid Input")
        }
        
    }
    
    func biggestNumber(anNumberArray: [Int])-> Int {
        // function for finding max number
        
        let biggestNumber = anNumberArray.max()!
        
        return biggestNumber
    }
    
    func smallestNumber(anNumberArray: [Int])-> Int {
        // function for finding min number
        
        let smallestNumber = anNumberArray.min()!
        
        return smallestNumber
    }

    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        introLable.text = "Enter your homework hours in last 5 days."
        view.addSubview(introLable)
        introLable.translatesAutoresizingMaskIntoConstraints = false
        introLable.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        introLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        numberTextField.borderStyle = UITextField.BorderStyle.roundedRect
        numberTextField.placeholder = "Enter a positive integer between 1 and 100 "
        view.addSubview(numberTextField)
        numberTextField.translatesAutoresizingMaskIntoConstraints = false
        numberTextField.topAnchor.constraint(equalTo: introLable.bottomAnchor, constant: 5).isActive = true
        numberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
            // displays homework hours 
        view.addSubview(displayLable)
        displayLable.translatesAutoresizingMaskIntoConstraints = false
        displayLable.topAnchor.constraint(equalTo: numberTextField.topAnchor, constant: 40).isActive = true
        displayLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
            // submit number to array button
        answerButton.setTitle("Check", for: .normal)
        answerButton.setTitleColor(.blue, for: .normal)
        answerButton.addTarget(self, action: #selector(displayArray), for: .touchUpInside)
        view.addSubview(answerButton)
        answerButton.translatesAutoresizingMaskIntoConstraints = false
        answerButton.topAnchor.constraint(equalTo: displayLable.bottomAnchor, constant: 10).isActive = true
        answerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
            // calculate max and min button 
        answerButton2.setTitle("MaxMin", for: .normal)
        answerButton2.setTitleColor(.blue, for: .normal)
        answerButton2.addTarget(self, action: #selector(checkLargeRandomNumber), for: .touchUpInside)
        view.addSubview(answerButton2)
        answerButton2.translatesAutoresizingMaskIntoConstraints = false
        answerButton2.bottomAnchor.constraint(equalTo: answerButton.bottomAnchor, constant: 40).isActive = true
        answerButton2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        view.addSubview(answerLable)
        answerLable.translatesAutoresizingMaskIntoConstraints = false
        answerLable.topAnchor.constraint(equalTo: answerButton2.bottomAnchor, constant: 20).isActive = true
        answerLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        view.addSubview(answerLable2)
        answerLable2.translatesAutoresizingMaskIntoConstraints = false
        answerLable2.topAnchor.constraint(equalTo: answerLable.bottomAnchor, constant: 20).isActive = true
        answerLable2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }

    

    @objc func checkLargeRandomNumber() {
        // show answers 
        
        let number : Int = biggestNumber(anNumberArray: anNumberArray)
            answerLable.text = ("The maximum number is: \(number)")
        
        let number2 : Int = smallestNumber(anNumberArray: anNumberArray)
        answerLable2.text = ("The minimum number is: \(number2)")
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()

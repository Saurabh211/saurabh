//
//  ViewController1.swift
//  nishant
//
//  Created by Admin on 17/12/1939 Saka.
//  Copyright © 1939 Saka Admin. All rights reserved.
//

import UIKit

class ViewController1: UIViewController, UITableViewDataSource {
    
   
    @IBOutlet weak var expandTableView: UITableView!
    
    var expandedSections : NSMutableSet = []
    var sectionData : [String] = ["1) Explain what is Swift Programming Language?", "2) Explain how you define variables in Swift language?",  "3) What is the significance of “?” in swift?", "4) Mention what are the features of Swift Programming?","5) Mention what is the difference between Swift and ‘Objective-C’ language?","6) Mention what are the type of integers does Swift have?","7) Mention what is the Floating point numbers and what are the types of floating number?","8) Explain how multiple line comment can be written in swift?","9) What is de-initializer and how it is written in Swift?","10) Mention what are the collection types available in Swift?","11) List out what are the control transfer statements used in Swift?","12) Explain what is optional chaining?","13) How base-class is defined in Swift?","14) Explain what Lazy stored properties is and when it is useful?","15) Mention what is the characteristics of Switch in Swift?"]
    var row1 = ["Swift is a programming language and system for creating applications for iOS and OS X. "]
    var row2 = ["Variables and constants must be declared before they are used. You announce constants with the let keyword and variables with the var keyword. Both variables and dictionaries are described using brackets. "]
    var row3 = ["The question mark makes a property optional if declared.  In case the property does not hold a value, the “?” helps in avoiding runtime errors."]
    var row4 = ["It eliminates entire classes of unsafe code Variables are always initialized before use Arrays and integers are checked for overflow Memory is managed automatically"]
    var row5 = ["You have to use “let” keyword for constant and “var” keyword for variable & In Swift, you use “ +=” Operator to add an item but in objective C, variable is declared as “ and constant as The code ends with semi-colon objective C, variable is declared as “ and constant as The code ends with semi-colon"]
    var row6 = ["Swift provides unsigned and signed integers in 8, 16, 32 and 64 bit forms."]
    var row7 = ["Floating numbers are numbers with a fractional component, like 3.25169 and -238.21. Two types- Double: It represents a 64 bit and Float: It represents a 32 bit"]
    var row8 = ["Multiple line comment can be written as forward-slash followed by an asterisk (/*)  and end with an asterisk followed by a forward slash (*/)."]
    var row9 = ["A de-initializer is declared immediately before a class instance is de-allocated.  You write de-initializer with the deinit keyword."]
    var row10 = ["Array: You can create an Array of a single type or an array with multiple types. Swift usually prefers the former one & Dictionary: It is similar to a Hash table as in other programming language. A dictionary enables you to store key-value pairs and access the value by providing the key"]
    var row11 = ["Continue Break Fallthrough Return"]
    var row12 = ["Optional chaining is a process of querying and calling properties. Multiple queries can be chained together, and if any link in the chain is nil then, the entire chain fails."]
    var row13 = ["In Swift the classes are not inherited from the base class and the classes that you define without specifying its superclass, automatically becomes the base-class."]
    var row14 = ["Lazy stored properties are used for a property whose initial values is not calculated until the first time it is used.  You can declare a lazy stored property by writing the lazy modifier before its declaration."]
    var row15 = ["It supports any kind of data, and not only synchronize but also checks for equality When a case is matched in switch, the program exists from the switch case and does not continue checki next cases. So you don’t need to explicitly break out the switch at the end of case"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func sectionTapped(_ sender: UIButton) {
        //print("section Tapped")
        let section = sender.tag
        let shouldExpand = !expandedSections.contains(section)
        if (shouldExpand) {
            expandedSections.removeAllObjects()
            expandedSections.add(section)
        } else {
            expandedSections.removeAllObjects()
        }
        self.expandTableView.reloadData()
    }
}

extension ViewController1: UITableViewDelegate, UITextFieldDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionData.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView.init(frame: CGRect(x: 0, y: 0, width: 400, height: 200))
        
        
        let headerTitle = UILabel.init(frame: CGRect(x: 5, y: 5, width: 320, height: 70))
        
        headerTitle.text = sectionData[section]
         headerTitle.numberOfLines = 0
        headerTitle.font = UIFont(name: (headerTitle.font.fontName), size: 15.0)
        
        let tappedSection = UIButton.init(frame: CGRect(x: 0, y: 0, width: headerView.frame.size.width, height: headerView.frame.size.height))
        tappedSection.addTarget(self, action: #selector(sectionTapped), for: .touchUpInside)
        tappedSection.tag = section
        
        
        headerView.addSubview(headerTitle)
        headerView.addSubview(tappedSection)
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(expandedSections.contains(section)) {
            switch section {
            case 0:
                return row1.count
            case 1:
                return row2.count
            case 2:
                return row3.count
            case 3:
                return row4.count
            case 4:
                return row5.count
            case 5:
                return row6.count
            case 6:
                return row7.count
            case 7:
                return row8.count
            case 8:
                return row9.count
            case 9:
                return row10.count
            case 10:
                return row11.count
            case 11:
                return row12.count
            case 12:
                return row13.count
            case 13:
                return row14.count
            default:
                return row12.count
          
            }
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
        
        cell?.selectionStyle = .none
        switch indexPath.section {
        case 0:
            cell?.textLabel?.text = (row1[indexPath.row])
        case 1:
            cell?.textLabel?.text = (row2[indexPath.row])
        case 2:
            cell?.textLabel?.text = (row3[indexPath.row])
        case 3:
            cell?.textLabel?.text = (row4[indexPath.row])
        case 4:
            cell?.textLabel?.text = (row5[indexPath.row])
        case 5:
            cell?.textLabel?.text = (row6[indexPath.row])
        case 6:
            cell?.textLabel?.text = (row7[indexPath.row])
        case 7:
            cell?.textLabel?.text = (row8[indexPath.row])
        case 8:
            cell?.textLabel?.text = (row9[indexPath.row])
        case 9:
            cell?.textLabel?.text = (row10[indexPath.row])
        case 10:
            cell?.textLabel?.text = (row11[indexPath.row])
        case 11:
            cell?.textLabel?.text = (row12[indexPath.row])
        case 12:
            cell?.textLabel?.text = (row13[indexPath.row])
        case 13:
            cell?.textLabel?.text = (row14[indexPath.row])
        case 14:
            cell?.textLabel?.text = (row15[indexPath.row])
       
            default: break
            
        }
        cell?.textLabel?.layer.cornerRadius = (cell?.textLabel?.frame.height)! / 2
        
        return cell!;
    }
    

}


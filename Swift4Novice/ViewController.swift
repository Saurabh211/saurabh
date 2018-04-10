//
//  ViewController.swift
//  nishant
//
//  Created by Admin on 16/12/1939 Saka.
//  Copyright © 1939 Saka Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollview: UIScrollView!
    
    @IBOutlet weak var myLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if myIndex == 0
        {
            myLabel.text = readData(file: "intoduction")
        }
        if myIndex == 1
        {
            myLabel.text = readData(file: "basic Operators")
        }
        if myIndex == 2
        {
            myLabel.text = readData(file: "strings and characters")
        }
        if myIndex == 3
        {
            myLabel.text = readData(file: "constant&Variable")
        }
        if myIndex == 4
        {
            myLabel.text = readData(file: "controlFlow")
        }
        if myIndex == 5
        {
            myLabel.text = readData(file: "functions")
        }
        if myIndex == 6
        {
            myLabel.text = readData(file: "enum")
        }
        if myIndex == 7
        {
            myLabel.text = readData(file: "class")
        }
        if myIndex == 8
        {
            myLabel.text = readData(file: "inheritance")
        }
        if myIndex == 9
        {
            myLabel.text = readData(file: "extensions")
        }
        if myIndex == 10
        {
            myLabel.text = readData(file: "arc")
        }
        if myIndex == 11
        {
            myLabel.text = readData(file: "swift optionals")
        }
        
        
        if #available(iOS 11.0, *) {
            scrollview.contentLayoutGuide.bottomAnchor.constraint(equalTo: myLabel.bottomAnchor).isActive = true
        } else {
            // Fallback on earlier versions
        }

        
         setNeedsStatusBarAppearanceUpdate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func readData(file:String) -> String! {
        guard let filePath =  Bundle.main.path(forResource: file , ofType: "txt")
            else {
                return nil
        }
        do{
            let content = try String(contentsOfFile: filePath)
            return content
        }catch{
            return nil
        }
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
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

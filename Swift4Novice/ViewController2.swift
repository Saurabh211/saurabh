//
//  ViewController2.swift
//  nishant
//
//  Created by Admin on 17/12/1939 Saka.
//  Copyright © 1939 Saka Admin. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    
    
    @IBOutlet weak var srollView: UIScrollView!
    
   
    @IBOutlet weak var labelfor2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
       // if myIndex3 == 0
        //{
        //    labelfor2.text = readData(file: "basicofswift")
        //}
        if myIndex3 == 0
        {
            labelfor2.text = readData1(file: "Methods")
        }
        if myIndex3 == 1
        {
            labelfor2.text = readData1(file: "Accescontrol")
        }
        if myIndex3 == 2
        {
            labelfor2.text = readData1(file : "Memorysafety")
        }
        if myIndex3 == 3
        {
            labelfor2.text = readData1(file: "generic")
        }
        if myIndex3 == 4
        {
            labelfor2.text = readData1(file: "Protocols")
        }
        if myIndex3 == 5
        {
            labelfor2.text = readData1(file: "Optionals")
        }
        if myIndex3 == 6
        {
            labelfor2.text = readData1(file: "errorhandling")
        }
        if myIndex3 == 7
        {
            labelfor2.text = readData1(file: "Advanceoperator")
        }
        if myIndex3 == 8
        {
            labelfor2.text = readData1(file: "Nestedtype")
        }
        if myIndex3 == 9
        {

            
            labelfor2.text = readData1(file: "Subscripts")
        }
        if myIndex3 == 10
        {
            labelfor2.text = readData1(file: "Clouser")
        }
        if myIndex3 == 11
        {
            labelfor2.text = readData1(file: "Deinitialization")
        }
        
        setNeedsStatusBarAppearanceUpdate()
        
        
        if #available(iOS 11.0, *) {
            srollView.contentLayoutGuide.bottomAnchor.constraint(equalTo: labelfor2.bottomAnchor).isActive = true
        } else {
            // Fallback on earlier versions
        }
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func readData1(file:String) -> String! {
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

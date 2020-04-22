//
//  secondViewController.swift
//  CrudRealm
//
//  Created by Diego Marquez Betancur on 4/21/20.
//  Copyright © 2020 Diego Marquez Betancur. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
    
    var currentItem:Item?
    
    @IBOutlet var txtNote: UITextField!
    
    @IBAction func saveButtonClicked(_ sender:	 Any) {
        
        let item = Item()
        
        if(currentItem == nil) {
            item.ID = DBManager.sharedInstance.getDataFromDB().count
        }
        
        item.textString = txtNote.text!
        DBManager.sharedInstance.addData(object: item)
        self.dismiss(animated: true) { }
        
    }
    
    @IBAction func deleteButtonClicked(_ sender: Any) {
        if let item = currentItem {
            DBManager.sharedInstance.deleteFromDb(object: item)
            self.dismiss(animated: true) { }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        if let item = currentItem {
            txtNote.text = item.textString
        }
        
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


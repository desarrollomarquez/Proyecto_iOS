//
//  ViewController.swift
//  CrudRealm
//
//  Created by Diego Marquez Betancur on 4/21/20.
//  Copyright © 2020 Diego Marquez Betancur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var myTableView: UITableView!
    
    @IBAction func addButtonClicked(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "secondView") as! secondViewController
        
        vc.currentItem = nil
        self.present(vc, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTableView.delegate = self
        myTableView.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData()
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DBManager.sharedInstance.getDataFromDB().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = myTableView.dequeueReusableCell(withIdentifier: "CellIdentifier", for: indexPath) as UITableViewCell
        
        let index = Int(indexPath.row)
        let item = DBManager.sharedInstance.getDataFromDB()[index] as Item
        cell.textLabel?.text = item.textString
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if( indexPath.row > -1) {
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "secondView") as! secondViewController
            
            let index = Int(indexPath.row)
            let item = DBManager.sharedInstance.getDataFromDB()[index] as Item
            
            vc.currentItem = item
            self.present(vc, animated: true, completion: nil)
        }
    }
}


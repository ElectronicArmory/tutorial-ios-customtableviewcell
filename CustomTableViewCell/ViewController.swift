//
//  ViewController.swift
//  CustomTableViewCell
//
//  Created by Electronic Armory.
//  Copyright © 2019 Electronic Armory. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140.0
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomTableViewCell
        
        cell.mainLabel.text = "Main text label"
        cell.dateLabel.text = "January 1 at 3:30"
        cell.descriptionLabel.text = "here is our description"
        cell.acceptButton.tag = indexPath.row
        cell.acceptButton.addTarget(self, action: #selector(rowButtonWasTapped(sender:)), for: .touchUpInside)
//        cell.imageView.image = UIImage(named: "<#T##String#>")
        
        return cell
    }

    
    @objc
    func rowButtonWasTapped(sender:UIButton){
        let rowIndex:Int = sender.tag
        print(rowIndex)
        // Do somethign with the data at rowIndex
    }
}


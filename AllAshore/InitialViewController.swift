//
//  ViewController.swift
//  AllAshore
//
//  Created by Jeremiah Montoya on 4/24/15.
//  Copyright (c) 2015 Jeremiah Montoya. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // table view model
    
    var model = taxonomy.keys.array
    
    // table view functions
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Family Cell", forIndexPath: indexPath) as! SimpleTableCell
        
        // set cell attributes based on the model
        cell.label.text = model[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    // navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            switch identifier {
            case "ToSpecies":
                let cell = sender as! SimpleTableCell
                if let indexPath = tableView.indexPathForCell(cell) {
                    let segueuedToMVC = segue.destinationViewController as! SpeciesViewController
                    segueuedToMVC.familyKey = model[indexPath.row]
                }
            default: break
            }
        }
        
    }
}


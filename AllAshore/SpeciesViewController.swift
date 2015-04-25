//
//  SpeciesViewController.swift
//  AllAshore
//
//  Created by Jeremiah Montoya on 4/24/15.
//  Copyright (c) 2015 Jeremiah Montoya. All rights reserved.
//

import UIKit

class SpeciesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var familyKey : String! {  // set on segue
        didSet {
            model = taxonomy[familyKey]!.keys.array
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // table view model
    var model : [String] = []
    
    // table view functions
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return model.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Species Cell", forIndexPath: indexPath) as! SimpleTableCell
        
        // set cell attributes
        cell.label.text = model[indexPath.row]
        
        return cell
    }
    

    // navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            switch identifier {
            case "ToTypes":
                let cell = sender as! SimpleTableCell
                if let indexPath = tableView.indexPathForCell(cell) {
                    let segueuedToMVC = segue.destinationViewController as! TypesViewController
                    segueuedToMVC.familyKey = self.familyKey
                    segueuedToMVC.speciesKey = model[indexPath.row]
                }
            default: break
            }
        }
   }

}

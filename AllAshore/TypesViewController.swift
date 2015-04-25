//
//  TypesViewController.swift
//  
//
//  Created by Jeremiah Montoya on 4/24/15.
//
//

import UIKit

class TypesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var familyKey : String!

    var speciesKey : String! {
        didSet {
            model = taxonomy[familyKey]![speciesKey]!
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // table view model
    
    var model : [String] = []
    
    // table view functions
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Types Cell", forIndexPath: indexPath) as! SimpleTableCell
        
        // set cell attributes based on the model
        cell.label.text = model[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    // navigation
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if let identifier = segue.identifier {
//            switch identifier {
//            case "ToSpecies":
//                let cell = sender as! SimpleTableCell
//                if let indexPath = tableView.indexPathForCell(cell) {
//                    let sequeuedToMVC = segue.destinationViewController as! SpeciesViewController
//                    sequeuedToMVC.familyKey = model[indexPath.row]
//                }
//            default: break
//            }
//        }
//        
//    }

}

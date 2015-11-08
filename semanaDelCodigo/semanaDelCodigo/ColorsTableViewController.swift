//
//  ColorsTableViewController.swift
//  semanaDelCodigo
//
//  Created by Barbara Brina on 11/3/15.
//  Copyright © 2015 Barbara Brina. All rights reserved.
//

import UIKit
import RandomColorSwift
import BMCustomTableView

class ColorsTableViewController: UITableViewController {

    //MARK: Variables
    var colors: [UIColor]!
    
    //MARK: Outlets
    
    @IBOutlet var customTableView: BMCustomTableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colors = randomColorsCount(15, hue: .Random, luminosity: .Light)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return colors.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("colorCell", forIndexPath: indexPath) as! ExampleTableViewCell
        
        cell.colorNumber.text = "Color \(indexPath.row + 1)"
        cell.backgroundColor = colors[indexPath.row]

        // Configure the cell...

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let selectedRow = (indexPath.row + 1)
        
        let controller = self.storyboard?.instantiateViewControllerWithIdentifier("selectedRow") as! SelectedRowViewController
        
        controller.number = selectedRow
        
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        customTableView.customizeCell(cell)
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

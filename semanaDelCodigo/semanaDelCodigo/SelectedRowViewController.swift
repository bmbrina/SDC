//
//  SelectedRowViewController.swift
//  semanaDelCodigo
//
//  Created by Barbara Brina on 11/3/15.
//  Copyright © 2015 Barbara Brina. All rights reserved.
//

import UIKit

class SelectedRowViewController: UIViewController {
    
    //MARK: Variables
    
    var number: Int!

    
    //MARK: Outlets
    
    @IBOutlet weak var exImage: UIImageView!
    
    @IBOutlet weak var response: UILabel!
    
    //MARK: Actions
    
    @IBAction func pressHere(sender: AnyObject) {
        response.text = "I've learned Swift!"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "\(number)"

        exImage.image = UIImage(named: "SwiftLogo")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

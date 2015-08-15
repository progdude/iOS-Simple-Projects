//
//  ViewController.swift
//  draw-app
//
//  Created by Archit Rathi on 8/14/15.
//  Copyright (c) 2015 Archit Rathi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var draw: drawr!
    
    @IBAction func clear(sender: AnyObject) {
        
        draw.lines = [];
        draw.setNeedsDisplay();
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


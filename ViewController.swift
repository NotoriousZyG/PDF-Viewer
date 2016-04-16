//
//  ViewController.swift
//  pdfViewer
//
//  Created by Notorious MAC on 12/28/15.
//  Copyright © 2015 NotoriousMAC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pdfView: UIWebView!
    
    var path = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        path = NSBundle.mainBundle().pathForResource("Constitution", ofType: "pdf")!
        
        let url = NSURL.fileURLWithPath(path)
        
        self.pdfView.loadRequest(NSURLRequest(URL: url))
        
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


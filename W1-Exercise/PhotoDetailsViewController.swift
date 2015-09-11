//
//  PhotoDetailsViewController.swift
//  W1-Exercise
//
//  Created by Tianyi Xing on 9/11/15.
//  Copyright © 2015 Tianyi Xing. All rights reserved.
//

import UIKit
import AFNetworking


class PhotoDetailsViewController: UIViewController {

    @IBOutlet weak var detailedImageView: UIImageView!
    
    var currURL : NSURL!
 
    
    //var currImage : NSURL
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        let url = NSURL(string: "https://scontent.cdninstagram.com/hphotos-xaf1/t51.2885-15/s480x480/e35/11925840_921348811283341_1173124195_n.jpg" as String)
//        
        self.detailedImageView.setImageWithURL(currURL!)
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

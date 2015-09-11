//
//  PhotosViewController.swift
//  W1-Exercise
//
//  Created by Tianyi Xing on 9/10/15.
//  Copyright © 2015 Tianyi Xing. All rights reserved.
//

import UIKit
import AFNetworking

class PhotosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var photosTableView: UITableView!
    
    var photos : NSArray?
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
        photosTableView.dataSource = self
        photosTableView.delegate = self
     
        self.photosTableView.rowHeight = 320
      
        var clientId = "da7ee5f94f69422b924a22daf4243f62"
        var url = NSURL(string: "https://api.instagram.com/v1/media/popular?client_id=\(clientId)")!
        var request = NSURLRequest(URL: url)
              
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue()) { (response, data, error) -> Void in
            var responseDictionary = try! NSJSONSerialization.JSONObjectWithData(data!, options:[]) as! NSDictionary
            self.photos = responseDictionary["data"] as! NSArray
            self.photosTableView.reloadData()
          
            NSLog("the length of the photos NSArray is: \(self.photos?.count)")
            NSLog("response: \(self.photos)")
 
            
        }
     
        // Do any additional setup after loading the view.
    }
  
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("instagramfeedcell", forIndexPath: indexPath) as! PhotoCellTableViewCell
    
    
        var currPhoto = self.photos![indexPath.row] as! Dictionary<String, Any>
        var currImage = currPhoto["images"] as! Dictionary<String, Any>
        var currLowResolution = currImage["low_resolution"] as! Dictionary<String, Any>
        let currURLString = currLowResolution["url"] as! NSString
        let url = NSURL(string: currURLString as String)
    
        cell.imageViewTemplate.setImageWithURL(url!)
    
    
//        let url = NSURL(string: url)
//       cell.imageViewTemplate.setImageWithURL(url!)
    
    return cell
  }
  
  
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    //return (self.photos?.count)!
    return (self.photos?.count)!
  
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

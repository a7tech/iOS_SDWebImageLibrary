//
//  ViewController.swift
//  ImageWebImageDemo
//
//  Created by mac on 02/02/16.
//  Copyright © 2016 Inwizards. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet var tableView: UITableView!
    var imageURL : NSMutableArray = NSMutableArray()
    var ItemArray : NSMutableArray = NSMutableArray()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ItemArray = ["Image 1","Image 2","Image 3","Image 4","Image 5","Image 6","Image 7","Image 8","Image 9","Image 10"]
        
        imageURL = ["http://vrfocus.com/wp-content/uploads/2014/07/VanguardValkyre_1.png",
            "http://pngimg.com/upload/water_PNG3290.png",
            "http://pngimg.com/upload/grass_PNG4930.png",
            "http://orig13.deviantart.net/e815/f/2011/349/1/f/lians_witn_wood_sign_png_by_atava-d4j85mz.png",
            "http://orig08.deviantart.net/10f2/f/2013/143/c/2/hand_png_by_digitalwideresource-d4ldrpx.png",
            "http://img13.deviantart.net/568c/i/2012/165/1/d/lawn_lions_png_by_dbszabo1-d53j7gs.png",
            "http://img03.deviantart.net/3928/i/2011/114/8/0/monarch_butterfly_clipart_png_by_madetobeunique-d3070dt.png",
            "http://mycargear.com/wp-content/uploads/Commercial-Airplane-Png-04.png",
            "http://orig09.deviantart.net/345d/f/2010/232/1/f/space_png_by_ryank5337.png",
            "http://orig00.deviantart.net/07b6/f/2010/196/3/5/space_texture_1_by_zy0rg.png"]
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ItemArray.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:CustomeCell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! CustomeCell
        
        cell.Titlelable.text = ItemArray.objectAtIndex(indexPath.row) as? String
        let URLString:NSURL = NSURL(string: (imageURL.objectAtIndex(indexPath.row) as? String)!)!
        cell.IMGView.sd_setImageWithURL(URLString, placeholderImage: UIImage(named: "default.jpg"))
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


//
//  NoteCollectionViewController.swift
//  NotePlan
//
//  Created by Junne on 12/8/15.
//  Copyright © 2015 Junne. All rights reserved.
//

import UIKit

private let reuseIdentifier = "NoteCell"
public let BGColor = UIColor(red: 56.0/255.0, green: 51/255.0, blue: 76/255.0, alpha: 1.0)

class NoteCollectionViewController: UICollectionViewController {
    
    private let noteBackgroudColorArray = NSMutableArray()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // self.clearsSelectionOnViewWillAppear = false

        self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        self.collectionView?.backgroundColor = BGColor
        self.collectionView?.alwaysBounceVertical = false
        
        let random = arc4random() % 360 // 160 arc4random() % 360
        for index in 0 ..< 15 {
            let color = UIColor(hue: CGFloat((Int(random) + index * 6)) % 360.0 / 360.0, saturation: 0.8, brightness: 1.0, alpha: 1.0)
            noteBackgroudColorArray.addObject(color)
        }

        // Do any additional setup after loading the view.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return noteBackgroudColorArray.count
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! NoteCollectionViewCell
    
        cell.backgroundColor = noteBackgroudColorArray.objectAtIndex(noteBackgroudColorArray.count - 1 - indexPath.section) as? UIColor
        cell.noteTitleLabel.text = "Notebook + " + String(indexPath.section + 1)
        
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}

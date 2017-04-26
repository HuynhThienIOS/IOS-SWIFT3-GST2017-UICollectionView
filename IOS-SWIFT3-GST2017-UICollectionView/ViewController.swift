//
//  ViewController.swift
//  IOS-SWIFT3-GST2017-UICollectionView
//
//  Created by Cntt32 on 4/26/17.
//  Copyright © 2017 com.group01. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    var images = ["one", "two", "three", "four", "five"]
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.myCollectionView.dataSource = self
        self.myCollectionView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Image Cell", for: indexPath) as! CollectionViewCell
        
        cell.imageView.image = UIImage(named: images[indexPath.row])
        return cell
    }
}


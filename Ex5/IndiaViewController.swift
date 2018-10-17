//
//  IndiaViewController.swift
//  Ex5
//
//  Created by Hoang Son on 10/16/18.
//  Copyright © 2018 Hoang Son. All rights reserved.
//

import UIKit
var titles = ["Community", "Housing", "Jobs", "Personals", "For Sale", "Discussion Forum"]
var myTitles = 0
class IndiaViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var lbCountry: UILabel!
    
    @IBOutlet weak var lbnextCountry: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let dataimg:[String] = ["ICON", "Housing", "jobs", "personals", "money", "discussion"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbCountry.text = countrys[myIndex]
        lbnextCountry.text = countrys[myIndex + 1]
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        //custom cell
        let layout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.sectionInset = UIEdgeInsetsMake(10, 10, 0, 10)
        layout.minimumLineSpacing = 10
        layout.itemSize = CGSize (width:(self.collectionView.frame.size.width - 30)/2, height: self.collectionView.frame.size.height/4)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      return dataimg.count
      return titles.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let  collectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollection", for: indexPath) as! CustomCollectionViewCell
        collectionCell.imgIcon.image = UIImage(named: dataimg[indexPath.row])
        collectionCell.lbCollection.text = titles[indexPath.row]
        collectionCell.layer.cornerRadius = 10
        return collectionCell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        myTitles = indexPath.row
        self.performSegue(withIdentifier: "showSegue1", sender: self)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

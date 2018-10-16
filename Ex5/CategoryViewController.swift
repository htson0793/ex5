//
//  CategoryViewController.swift
//  Ex5
//
//  Created by Hoang Son on 10/16/18.
//  Copyright © 2018 Hoang Son. All rights reserved.
//

import UIKit

var dataCategory = ["Tài xế ngủ gật, xế hộp lao thẳng xuống sông", "Những điều lý thú về quái vật Venom đang công phá màn ảnh", "Địch Lệ Nhiệt Ba hóa Nữ thần Kim Ưng: Đẹp lộng lẫy và cơn mưa lời chê"]
var myCategory = 0
let dataimg:[String] = ["oto", "venom", "dichba"]
class CategoryViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    @IBOutlet weak var txtSearch: UITextField!
    
    @IBOutlet weak var lbTitles: UILabel!
    
    @IBOutlet weak var cltCategory: UICollectionView!
    
    @IBOutlet weak var btnBack: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //icon Search
        txtSearch.rightViewMode = .always
        let iconSearch = UIImageView()
        iconSearch.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        let imgtext = iconSearch.image = #imageLiteral(resourceName: "Search")
        txtSearch.rightView = iconSearch
        
        lbTitles.text = titles[myTitles]
        self.cltCategory.delegate = self
        self.cltCategory.dataSource = self
        // Do any additional setup after loading the view.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataCategory.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellCategory = collectionView.dequeueReusableCell(withReuseIdentifier: "customCategory", for: indexPath) as! CategoryCollectionViewCell
        cellCategory.cltImage.image = UIImage(named: dataimg[indexPath.row])
        cellCategory.lbCategory.text = dataCategory[indexPath.row]
        return cellCategory
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        myCategory = indexPath.row
        self.performSegue(withIdentifier: "showSegue2", sender: self)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

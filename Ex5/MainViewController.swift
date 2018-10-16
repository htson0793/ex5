//
//  MainViewController.swift
//  Ex5
//
//  Created by Hoang Son on 10/17/18.
//  Copyright © 2018 Hoang Son. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var imgMain: UIImageView!
    
    @IBOutlet weak var tbvMain: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgMain.image = UIImage(named: dataimg[myCategory])
        
        self.tbvMain.delegate = self
        self.tbvMain.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellMain = tableView.dequeueReusableCell(withIdentifier: "customMain", for: indexPath) as! MainTableViewCell
        cellMain.lbTitleMain.text = dataCategory[myCategory]
        return cellMain
    }
    @IBAction func btnStar(_ sender: UIButton) {
        if sender.currentImage == #imageLiteral(resourceName: "grayStar") {
            sender.setImage(#imageLiteral(resourceName: "Star"), for: .normal)
        }else{
            sender.setImage(#imageLiteral(resourceName: "grayStar"), for: .normal)
        }
    }
    
    @IBAction func btnHeart(_ sender: UIButton) {
        if sender.currentImage == #imageLiteral(resourceName: "grayHeart") {
            sender.setImage(#imageLiteral(resourceName: "Shape"), for: .normal)
        }else{
            sender.setImage(#imageLiteral(resourceName: "grayHeart"), for: .normal)
        }
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

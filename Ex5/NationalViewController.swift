//
//  NationalViewController.swift
//  Ex5
//
//  Created by Hoang Son on 10/14/18.
//  Copyright © 2018 Hoang Son. All rights reserved.
//

import UIKit
var countrys = ["India", "Ahmedabad", "Bangalore", "Bhubaneswar", "Chandigarh", "Chennai", "Delhi", "Goa", "Hydrabad", "Indore", "V", "I", "E", "T", "N", "A", "M"]
var myIndex = 0
class NationalViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tvCountry: UITableView!
    
    @IBOutlet weak var txtSearch: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtSearch.rightViewMode = .always
        let iconSearch = UIImageView()
        iconSearch.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        let imgtext = iconSearch.image = #imageLiteral(resourceName: "Search")
        txtSearch.rightView = iconSearch
        txtSearch.layer.cornerRadius = 5
        // Do any additional setup after loading the view.
        self.tvCountry.delegate = self
        self.tvCountry.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countrys.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellNation = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomTableViewCell
        cellNation.lbNational.text = countrys[indexPath.row]
        return cellNation
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        self.performSegue(withIdentifier: "showSegue", sender: self)
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

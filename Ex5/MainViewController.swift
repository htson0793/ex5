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
    var content:[String] = ["Sáng 16/10, lực lượng cứu hộ dùng cần cẩu đưa chiếc xe con bị hư hỏng nặng dưới sông Quán Trường lên bờ.Rạng sáng cùng ngày, người đi đường phát hiện chiếc xe biển số Khánh Hòa (chưa rõ người điều khiển) lật ngang, nằm dưới lòng sông Quán Trường (TP Nha Trang, Khánh Hòa).", " Venom từng tham gia nhóm Vệ binh Dải ngân hà: Từng là kẻ chuyên bắt nạt Peter Parker khi còn ở trường trung học, Flash Thompson trở thành một người lính can trường và chính nghĩa. Sau khi mất đôi chân trên chiến trường, anh tham gia dự án mật của chính phủ Mỹ nhằm điều khiển bộ trang phục Venom. Với danh nghĩa Agent Venom, Flash trở thành thành viên của nhóm Secret Avengers, và thậm chí là Guadians of the Galaxy. Tuy nhiên, anh chàng không thể mặc bộ trang phục quá 48 tiếng để tránh bị Venom thao túng.", "Theo Sina, đêm trao giải truyền hình Kim Ưng 2018 tổ chức vào tối 14/10 tại Hồ Nam (Trung Quốc) đã trở thành trò cười và chế nhạo trên mạng xã hội. Ở đó, Địch Lệ Nhiệt Ba là trung tâm của mọi sự tranh cãi.Mỹ nhân Tân Cương gây sốc khi vượt qua những tên tuổi thực lực như Tôn Lệ, Lưu Đào, Viên Tuyền tại hạng mục Nữ diễn viên được yêu thích Kim Ưng. Ngoài ra, cô còn đạt thêm giải Nữ diễn viên có nhân khí nổi bật.Theo QQ, kết quả này gây phẫn nộ trên mạng xã hội. Những người yêu phim ảnh đặt câu hỏi lớn về cách thức bầu chọn năm nay."]
    var mycontent = myCategory
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
        cellMain.lbTitleMain.font = UIFont.boldSystemFont(ofSize: 17)
        cellMain.lbContent.text = content[mycontent]
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

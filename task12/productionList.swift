//
//  productionList.swift
//  task12
//
//  Created by Thien Chuong on 11/12/14.
//  Copyright (c) 2014 TMT. All rights reserved.
//

import UIKit
enum category{
 
    case CATEGORY_BIRTHDAY,CATEGORY_BREAD,CATEGORY_DRINK,CATEGORY_ICECREAM,CATEGORY_COOKIES
}

class productionList: UITableViewController {
   // var cate = category.self
    var cate:category?
    var intro:introduceItem! = introduceItem()
    var birthdayData = [(id:1,img:"birthday01.jpg",desc:"C01 Opera (Pháp)",price:"$12",intro:"Opera là loại gatô được coi như bảo vật quốc gia của Pháp. Từ hình thức nhiều tầng hấp dẫn đến đến khẩu vị tuyệt hảo tạo cho bản cảm giác như đang thưởng thức một vở nhạc kịch, vì vậy có tên là gatô Opera – tiếng Pháp có nghĩa là nhà hát lớn. Opera là sự kết hợp tuyệt vời giữa hương vị sôcôla Ganache của tầng trên và hương vị kem sữa cà phê hòa quyện với gatô hạnh nhân của tầng dưới tạo nên món điểm tâm sang trọng, là món không thể thiếu trong các buổi tiệc chiêu đãi khách quý của hoàng gia Pháp. Thành phần: Hạnh nhân, Sôcôla, Cà phê espresso,..."),
        (id:2,img:"birthday02.jpg",desc:"C02 Tiramisu (Ý)",price:"$15",intro:"Tiramisu là loại gato được coi như bảo vật quốc gia của Italia, với vị ngọt nhưng không sắc sẽ đem đến cho bạn cảm giác thú vị khó quên! Tiramisu theo tiếng Italia có nghĩa là “ Đưa em đi cùng”; Trong đại chiến thế giới thứ II, vợ yêu của một binh sĩ Italia đã dùng loại pho mát Mascarpone thượng hạng kết hợp với cà phê đặc và gatô ngón tay, tạo nên bánh tráng miệng cho chồng mang theo ra chiến trận, vì thế loại bánh này được đặt tên là Tiramisu, để người chồng luôn nhớ đến tình yêu của vợ mỗi khi ăn loại bánh này. Thành phần: Pho mát Mascarpone, Rượu Cà phê,...")]
    var cookieData = [(id:1,img:"cookies01.jpg",desc:"C01 Cookies Opera (Pháp)",price:"$12",intro:"Cookies là loại gatô được coi như bảo vật quốc gia của Pháp. Từ hình thức nhiều tầng hấp dẫn đến đến khẩu vị tuyệt hảo tạo cho bản cảm giác như đang thưởng thức một vở nhạc kịch, vì vậy có tên là gatô Opera – tiếng Pháp có nghĩa là nhà hát lớn. Opera là sự kết hợp tuyệt vời giữa hương vị sôcôla Ganache của tầng trên và hương vị kem sữa cà phê hòa quyện với gatô hạnh nhân của tầng dưới tạo nên món điểm tâm sang trọng, là món không thể thiếu trong các buổi tiệc chiêu đãi khách quý của hoàng gia Pháp. Thành phần: Hạnh nhân, Sôcôla, Cà phê espresso,..."),
        (id:2,img:"cookies02.jpg",desc:"C02 Cookies Tiramisu (Ý)",price:"$15",intro:"Tiramisu Cookies là loại gato được coi như bảo vật quốc gia của Italia, với vị ngọt nhưng không sắc sẽ đem đến cho bạn cảm giác thú vị khó quên! Tiramisu theo tiếng Italia có nghĩa là “ Đưa em đi cùng”; Trong đại chiến thế giới thứ II, vợ yêu của một binh sĩ Italia đã dùng loại pho mát Mascarpone thượng hạng kết hợp với cà phê đặc và gatô ngón tay, tạo nên bánh tráng miệng cho chồng mang theo ra chiến trận, vì thế loại bánh này được đặt tên là Tiramisu, để người chồng luôn nhớ đến tình yêu của vợ mỗi khi ăn loại bánh này. Thành phần: Pho mát Mascarpone, Rượu Cà phê,...")]

    var data:[(id:Int,img:String,desc:String,price:String,intro:String)]!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(animated: Bool) {
        cellIdentier = "0#"
        switch(cate!){
        case .CATEGORY_BIRTHDAY:
            println("CATEGORY_BIRTHDAY")
            data = self.birthdayData
            
        case .CATEGORY_COOKIES:
            println("CATEGORY_COOKIES")
            data = self.cookieData
            
        case .CATEGORY_BREAD:
            println("CATEGORY_BREAD")
            data = self.birthdayData
            
        case .CATEGORY_DRINK:
            println("CATEGORY_DRINK")
            data = self.cookieData
            
        case .CATEGORY_ICECREAM:
            println("CATEGORY_ICECREAM")
            data = self.birthdayData
            
            
            
        }
        tableView.registerNib(UINib(nibName: "detailCell", bundle: nil), forCellReuseIdentifier: cellIdentier)
        self.tableView.reloadData()
    }
    var cellIdentier:String!

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        
        
        return data.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:detailCell
        if let cellDequeue:detailCell = tableView.dequeueReusableCellWithIdentifier(cellIdentier) as? detailCell {
            cell = cellDequeue
        }else{
            cell = detailCell(style: UITableViewCellStyle.Default, reuseIdentifier: cellIdentier)
        }
         cell.img.image = UIImage(named: data[indexPath.row].img)
        cell.label.text = data[indexPath.row].desc
         cell.desc.text = data[indexPath.row].price
        cell.accessoryType = UITableViewCellAccessoryType.DetailDisclosureButton
        println(cell)
        return cell
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        var intro:introduceItem!
//        intro = introduceItem()
//        
//        self.navigationController?.pushViewController(intro, animated: true)
    }
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80;
    }
    override func tableView(tableView: UITableView, accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath) {
        
 
//        intro.img.image = UIImage(named: data[indexPath.row].img)
 
//        .img.image = UIImage(named: data[indexPath.row].img)
// 
        
        if(intro == nil){
            intro = introduceItem()
        }
        intro.txtData  = data[indexPath.row].intro
        intro.imgData = UIImage(named: data[indexPath.row].img)
        
        self.navigationController?.pushViewController(intro, animated: true)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */
    
}

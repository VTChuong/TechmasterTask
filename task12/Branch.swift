//
//  Branch.swift
//  task12
//
//  Created by Thien Chuong on 11/12/14.
//  Copyright (c) 2014 TMT. All rights reserved.
//

import UIKit

class Branch: UITableViewController {
    var tableData: [String]!
    var tableSubtitles: [String]!
    var phoneNum: [String]!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableData = [ "Paris Gâteaux - Hai Bà Trưng", "Paris Gâteaux - Thái Hà", "Paris Gâteaux - Parkson Keang Nam", "Paris Gâteaux - Tràng Thi", "Paris Gâteaux - Hoàng Đạo Thúy", "Paris Gâteaux - Tôn Đức Thắng", "Paris Gâteaux - Trần Đại Nghĩa", "Paris Gâteaux - Nguyễn Khánh Toàn", "Paris Gâteaux - Nguyễn Thị Định", "Paris Gâteaux - Tăng Bạt Hổ", "Paris Gâteaux - Tô Hiến Thành"];
        tableSubtitles = ["1A Hai Bà Trưng, Quận Hoàn Kiếm, Hà Nội", "34-36 Thái Hà, Quận Đống Đa, Hà Nội", "Phạm Hùng, Quận Cầu Giấy, Hà Nội", "75 Tràng Thi, Quận Hoàn Kiếm, Hà Nội", "1F, VP3-17T5 Hoàng Đạo Thúy, Quận Thanh Xuân, Hà Nội", "140 Tôn Đức Thắng, Quận Đống Đa, Hà Nội", "2A Trần Đại Nghĩa, Quận Hai Bà Trưng, Hà Nội", "1A2 Nguyễn Khánh Toàn, Quận Cầu Giấy, Hà Nội", "62 Nguyễn Thị Định, Quận Cầu Giấy, Hà Nội", "1A Tăng Bạt Hổ, Quận Hai Bà Trưng, Hà Nội", "30 Tô Hiến Thành, Quận Hai Bà Trưng, Hà Nội"];
        phoneNum = ["(04) 62 702 518", "(04) 35 380 118", "(04) 38 378 287", "(04) 39 387 771", "(04) 62 512 006", "(04) 37 327 089", "(04) 36 285 298", "(04) 22 813 288", "(04) 35 553 567", "(04) 39 729 399", "(04) 89 168 227"];

    }
 

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return tableData.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as UITableViewCell
        var cell: UITableViewCell!
        if let cellDequeue = tableView.dequeueReusableCellWithIdentifier("#") as? UITableViewCell{
            cell = cellDequeue
        }else{
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "#")
            cell.accessoryType = UITableViewCellAccessoryType.DetailDisclosureButton
        }
        cell.textLabel.text = tableData[indexPath.row]
        cell.textLabel.textColor = UIColor.yellowColor()
        cell.detailTextLabel?.text = tableSubtitles[indexPath.row]
    
        cell.backgroundColor = UIColor.purpleColor()
         

        return cell
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        NSString *message = [NSString stringWithFormat:@"%@", [phoneNum objectAtIndex:indexPath.row]];
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Phone Number" message:message delegate:self cancelButtonTitle:@"Close" otherButtonTitles:nil, nil];
//        [alert show];
        let alert: UIAlertView = UIAlertView(title: phoneNum[indexPath.row], message: "Please call us", delegate: self, cancelButtonTitle: "Close")
        alert.show()

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

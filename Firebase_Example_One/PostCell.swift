//
//  PostCell.swift
//  Firebase_Example_One
//
//  Created by 신미지 on 2022/04/12.
//

import UIKit

class PostCell: UITableViewCell {

  @IBOutlet weak var nickNameLabel: UILabel!
  @IBOutlet weak var dateLabel: UILabel!
  @IBOutlet weak var contentLabel: UILabel!
  
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

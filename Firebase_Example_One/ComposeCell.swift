//
//  ComposeCell.swift
//  Firebase_Example_One
//
//  Created by 신미지 on 2022/04/11.
//

import UIKit

protocol ComposeCellDelegate: AnyObject {
  func composeButtonTapped(cell: ComposeCell)
}

class ComposeCell: UITableViewCell {
  
  @IBOutlet weak var composeButton: UIButton!
  
  weak var delegate: ComposeCellDelegate?
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
  }
  
  private func configureButton() {
    composeButton.layer.cornerRadius = 10
  }
  
  @IBAction func composeBtnTapped(_ sender: Any) {
    self.delegate?.composeButtonTapped(cell: self)
  }
}

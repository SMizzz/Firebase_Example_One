//
//  MainViewController.swift
//  Firebase_Example_One
//
//  Created by 신미지 on 2022/04/11.
//

import UIKit

class MainViewController: UIViewController {
  
  @IBOutlet weak var postTableView: UITableView!
  
  let postsData = [
    PostData(nickName: "익명123", date: "2022.04.12 화요일", content: "테스트입니다.")
  ]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configureTableView()
  }
  
  private func configureTableView() {
    postTableView.delegate = self
    postTableView.dataSource = self
    postTableView.register(UINib(nibName: "PostCell", bundle: nil), forCellReuseIdentifier: "PostCell")
  }
  
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
  func numberOfSections(
    in tableView: UITableView
  ) -> Int {
    return 2
  }
  
  func tableView(
    _ tableView: UITableView,
    numberOfRowsInSection section: Int
  ) -> Int {
    if section == 0 {
      return 1
    }
    return postsData.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if indexPath.section == 0 {
      guard let cell = tableView.dequeueReusableCell(withIdentifier: "ComposeCell", for: indexPath) as? ComposeCell else { return UITableViewCell() }
      return cell
    }
    let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath)
    return cell
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    if indexPath.section == 0 {
      return 80
    }
    return 150
  }
  
  
}

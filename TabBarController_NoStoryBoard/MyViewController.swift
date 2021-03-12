//
//  ViewController.swift
//  TabBarController_NoStoryBoard
//
//  Created by 박훈성 on 2021/03/12.
//

import UIKit

class MyViewController: UIViewController {
  
  convenience init(title: String , bgColor: UIColor) {
    self.init()
    self.title = title
    self.view.backgroundColor = bgColor
  }
  
  
  override func viewDidLoad() {
     super.viewDidLoad()
    // Do any additional setup after loading the view.

    //Navigation Item
    navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person.fill"), style: .plain, target: self, action: #selector(goToProfileVC))
    navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "message.fill"), style: .plain, target: self, action: #selector(goToMessageVC))
  }

  @objc fileprivate func goToProfileVC(){
    let profileVC = ProfileViewController()
    self.navigationController?.pushViewController(profileVC, animated: true)
  }
  
  @objc fileprivate func goToMessageVC(){
    let messageVC = MessageViewController()
    self.navigationController?.pushViewController(messageVC, animated: true)
  }
}


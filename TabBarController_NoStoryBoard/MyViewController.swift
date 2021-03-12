//
//  ViewController.swift
//  TabBarController_NoStoryBoard
//
//  Created by 박훈성 on 2021/03/12.
//

import UIKit

class MyViewController: UIViewController {

  //set each view
  convenience init(title: String, bgColor: UIColor) {
    self.init()
    self.title = title
    self.view.backgroundColor = bgColor
  }
  
  override func viewDidLoad() {
     super.viewDidLoad()
    // Do any additional setup after loading the view.
  }


}


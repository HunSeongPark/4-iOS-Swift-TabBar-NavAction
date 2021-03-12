//
//  MainTabBarController.swift
//  TabBarController_NoStoryBoard
//
//  Created by 박훈성 on 2021/03/12.
//

import UIKit

class MainTabBarController : UITabBarController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    //set each tab view
    let firstNC = UINavigationController.init(rootViewController: MyViewController(title: "홈", bgColor: .orange))
    let secondNC = UINavigationController.init(rootViewController: MyViewController(title: "카테고리", bgColor: .blue))
    let thirdNC = UINavigationController.init(rootViewController: MyViewController(title: "검색", bgColor: .red))
    
    //set tab bar controller views
    self.viewControllers = [firstNC, secondNC, thirdNC]
    
    //set tab bar item
    let firstTabBarItem = UITabBarItem(title: "홈" , image:UIImage(systemName: "homekit"),tag: 0)
    let secondTabBarItem = UITabBarItem(title: "카테고리" , image:UIImage(systemName: "airport.express"),tag: 1)
    let thirdTabBarItem = UITabBarItem(title: "검색" , image:UIImage(systemName: "airplayvideo"),tag: 2)
    
    //connection tab bar item - tab view
    firstNC.tabBarItem = firstTabBarItem
    secondNC.tabBarItem = secondTabBarItem
    thirdNC.tabBarItem = thirdTabBarItem
  }
}

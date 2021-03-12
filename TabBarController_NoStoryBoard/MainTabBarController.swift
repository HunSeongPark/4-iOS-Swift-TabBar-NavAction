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
    
    print("MainTabBarController - viewDidLoad() called")
    
    let firstNC = UINavigationController.init(rootViewController: MyViewController(title: "첫번째", bgColor: .orange))
    let secondNC = UINavigationController.init(rootViewController: MyViewController(title: "두번째", bgColor: .blue))
    let thirdNC = UINavigationController.init(rootViewController: MyViewController(title: "세번째", bgColor: .red))
    let forthNC = UINavigationController.init(rootViewController: MyViewController(title: "네번째", bgColor: .systemPink))
    let fifthNC = UINavigationController.init(rootViewController: MyViewController(title: "다섯번째", bgColor: .green))
    
    self.viewControllers = [firstNC, secondNC, thirdNC, forthNC, fifthNC]
    
    let firstTabBarItem = UITabBarItem(title: "첫번째" , image:UIImage(systemName: "airplayaudio"),tag: 0)
    let secondTabBarItem = UITabBarItem(title: "두번째" , image:UIImage(systemName: "airplayaudio"),tag: 1)
    let thirdTabBarItem = UITabBarItem(title: "세번째" , image:UIImage(systemName: "arrow.clockwise.icloud.fill"),tag: 2)
    let forthTabBarItem = UITabBarItem(title: "네번째" , image:UIImage(systemName: "arrow.down.left.video.fill"),tag: 3)
    let fifthTabBarItem = UITabBarItem(title: "다섯번째" , image:UIImage(systemName: "safari.fill"),tag: 4)
    
    firstNC.tabBarItem = firstTabBarItem
    secondNC.tabBarItem = secondTabBarItem
    thirdNC.tabBarItem = thirdTabBarItem
    forthNC.tabBarItem = forthTabBarItem
    fifthNC.tabBarItem = fifthTabBarItem
  }
}

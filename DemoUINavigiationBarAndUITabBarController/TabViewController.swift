//
//  TabViewController.swift
//  DemoUINavigiationBarAndUITabBarController
//
//  Created by Van Ho Si on 10/8/17.
//  Copyright © 2017 Van Ho Si. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tabBarController?.delegate = self
        
//        let index = 1
//        tabBar.selectedItem = tabBar.items![index] as UITabBarItem
//        self.selectedViewController = tabBarController?.viewControllers![index]
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        print("tabBarChange")
    }
     */

    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
//        print("didSelect")
    }
    
}

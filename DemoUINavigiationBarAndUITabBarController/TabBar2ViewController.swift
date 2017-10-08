//
//  TabBar2ViewController.swift
//  DemoUINavigiationBarAndUITabBarController
//
//  Created by Van Ho Si on 10/8/17.
//  Copyright © 2017 Van Ho Si. All rights reserved.
//

import UIKit

class TabBar2ViewController: UIViewController {

    
    
    @IBAction func backTabBar(_ sender: UIButton) {
        let currentIndex = (self.tabBarController?.selectedIndex)! - 1
        self.tabBarController?.selectedIndex = currentIndex
        
        let currentView = self.tabBarController?.viewControllers![currentIndex] as! TabBar1ViewController
        currentView.name = "hosivan"
        
        self.tabBarController?.selectedViewController = currentView
        
    }
    
    @IBAction func nextTabBar(_ sender: UIButton) {
//        print(self.tabBarController?.selectedIndex)
        
        
        let currentIndex = (self.tabBarController?.selectedIndex)! + 1
        self.tabBarController?.selectedIndex = currentIndex
        self.tabBarController?.selectedViewController = self.tabBarController?.viewControllers![currentIndex]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

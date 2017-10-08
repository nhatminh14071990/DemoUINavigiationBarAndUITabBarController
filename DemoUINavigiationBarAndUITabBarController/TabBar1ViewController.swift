//
//  TabBar1ViewController.swift
//  DemoUINavigiationBarAndUITabBarController
//
//  Created by Van Ho Si on 10/8/17.
//  Copyright © 2017 Van Ho Si. All rights reserved.
//

import UIKit

class TabBar1ViewController: UIViewController {
    
    var name: String?{
        didSet{
            configure()
        }
    }
    
    @IBOutlet weak var labelName: UILabel!
    
    @IBAction func nextTab(_ sender: UIButton) {
        let currentIndex = (self.tabBarController?.selectedIndex)! + 1
        self.tabBarController?.selectedIndex = currentIndex
        self.tabBarController?.selectedViewController = self.tabBarController?.viewControllers![currentIndex]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        configure()
    }
    
    func configure() -> Void {
//        print("configure")
        if let realName = name{
            if let nameLabel = labelName{
                nameLabel.text = realName
            }
        }
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

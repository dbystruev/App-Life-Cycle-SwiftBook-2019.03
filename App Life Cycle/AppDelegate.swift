//
//  AppDelegate.swift
//  App Life Cycle
//
//  Created by Denis Bystruev on 11/03/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = UIWindow()
    
    func message(_ function: String = #function) {
        print(function)
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        message()
        
        window!.rootViewController = ViewController()
        window!.makeKeyAndVisible()
        
        return true
    }
    
    class ViewController: UIViewController {
        var count = 0 {
            didSet {
                label.text = "\(count)"
            }
        }
        
        var button: UIButton!
        var label: UILabel!
        
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
            label.font = .systemFont(ofSize: 40, weight: .medium)
            label.textAlignment = .center
            label.text = "\(count)"
            label.textColor = .yellow
            view.addSubview(label)
            
            button = UIButton(frame: CGRect(x: 0, y: 100, width: 100, height: 100))
            button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
            button.setTitle("Жми", for: [])
            button.titleLabel?.font = .systemFont(ofSize: 40, weight: .medium)
            view.addSubview(button)
        }
        
        @objc func buttonPressed() {
            count += 1
        }
    }

    func applicationWillResignActive(_ application: UIApplication) {
        message()
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        message()
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        message()
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        message()
    }

    func applicationWillTerminate(_ application: UIApplication) {
        message()
    }
}


//
//  ViewController.swift
//  AppEventCount
//
//  Created by Евгений Мелешков on 29.09.2021.
//

import UIKit

class ViewController: UIViewController {

    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    

    @IBOutlet var didFinishLaunchingWithOptionsOutlet: UILabel!
    @IBOutlet var configurationForConnectingOutlet: UILabel!
    @IBOutlet var sceneWillConnectToOutlet: UILabel!
    @IBOutlet var sceneDidBecomeActiveOutlet: UILabel!
    @IBOutlet var sceneWillResignActiveOutlet: UILabel!
    @IBOutlet var sceneWillEnterForegroundOutlet: UILabel!
    @IBOutlet var sceneDidEnterBackgroundOutlet: UILabel!
    
    
    var willConnectCount = 0
    var didBecomeActiveCount = 0
    var willResigneActiveCount = 0
    var willEnterForegroundCount = 0
    var didEnterBackgroundCount = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    func updateView() {
        didFinishLaunchingWithOptionsOutlet.text = "The App has launched \(appDelegate.launchCounts) time(s)"
        configurationForConnectingOutlet.text = "The App Connected Scene Session\(appDelegate.configurationForConnectingCount) time(s)"
        sceneWillConnectToOutlet.text = "Scene Will Connect \(willConnectCount) time(s)"
        sceneDidBecomeActiveOutlet.text = "scene Did Become Active \(didBecomeActiveCount) time(s)"
        sceneWillResignActiveOutlet.text = "scene Will Resign Active \(willResigneActiveCount) time(s)"
        sceneWillEnterForegroundOutlet.text = "scene Will Enter Foreground \(willEnterForegroundCount) time(s)"
        sceneDidEnterBackgroundOutlet.text = "scene Did Enter Background \(didEnterBackgroundCount) time(s)"
    }
    
    
    
    
    
    
}


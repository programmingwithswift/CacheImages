//
//  ViewController.swift
//  CacheImages
//
//  Created by Darren Leak on 2019/12/21.
//  Copyright © 2019 ProgrammingWithSwift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 1
    var dictionaryImageCache: Dictionary<String, UIImage> = [String:UIImage]()
    
    // 1
    var nsCache = NSCache<NSString, UIImage>()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        // 2
        self.dictionaryImageCache["testKey"] = UIImage()
        
        // 2
        self.nsCache.setObject(UIImage(),
                               forKey: "testKey")
        
        // Retrive object
        self.nsCache.object(forKey: "testKey")
    }
}


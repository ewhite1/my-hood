//
//  DataService.swift
//  my-hood-devslopes
//
//  Created by Edward White on 4/3/16.
//  Copyright © 2016 PositiveCapitalism. All rights reserved.
//

import Foundation
import UIKit
class DataService {
    static let instance = DataService()
    
    private var _loadedPosts = [Post]()
    
    var loadedPosts: [Post] {
        return _loadedPosts
    }
    
    func savePosts() {
        
    }
    func loadPosts() {
        
    }
    func saveImageAndCreatePath(image: UIImage){
        
    }
    
    func imageForPath(path: String) {
        
    }
    
    func addPost(post: Post) {
        _loadedPosts.append(post)
        savePosts()
        loadPosts()
        
    }
}

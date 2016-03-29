//
//  ViewController.swift
//  my-hood-devslopes
//
//  Created by Edward White on 3/29/16.
//  Copyright © 2016 PositiveCapitalism. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var posts = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        let post = Post(imagePath: "", title: "Post 1", description: "post one desciptions")
        let post2 = Post(imagePath: "", title: "Post 2", description: " This is more important than the first one")
        let post3 = Post(imagePath: "", title: "Post3", description: "This is the 3rd post and most important description")
        
        posts.append(post)
        posts.append(post2)
        posts.append(post3)
        tableView.reloadData()
      
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let post = posts[indexPath.row]
        if let cell = tableView.dequeueReusableCellWithIdentifier("PostCell") as? PostCell {
            cell.configureCell(post)
            return cell
        } else {
            let cell = PostCell()
            cell.configureCell(post)
            return cell
        }
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 87.0
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
}


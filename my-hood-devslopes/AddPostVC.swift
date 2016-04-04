//
//  AddPostVC.swift
//  my-hood-devslopes
//
//  Created by Edward White on 4/3/16.
//  Copyright © 2016 PositiveCapitalism. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
// Outlets
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var descField: UITextField!
    
    @IBOutlet weak var postImg: UIImageView!
//Varables and Constants
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//make the postImage a circle
        postImg.layer.cornerRadius = postImg.frame.size.width / 2
        postImg.clipsToBounds = true
//enable the image picker
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
    }
//Button actions
    @IBAction func addPicBtnPressed(sender: UIButton) {
        sender.setTitle("", forState: .Normal)
        presentViewController(imagePicker, animated: true, completion: nil)
        
    }
    @IBAction func makePostButtonPressed(sender: AnyObject) {
        if let title = titleField.text, let desc = descField.text, let img = postImg.image {
            
            let imgPath = DataService.instance.saveImageAndCreatePath(img)
            
            let post = Post(imagePath: imgPath, title: title, description: desc)
            DataService.instance.addPost(post)
            dismissViewControllerAnimated(true, completion: nil)
        }
    }

    @IBAction func cancelBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        postImg.image = image
    }
    
    
}

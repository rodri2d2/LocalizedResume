//
//  ViewController.swift
//  LocalizedResume
//
//  Created by Rodrigo  Candido on 28/2/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    // MARK: - Class properties
    let listOfFaceImages = ["fun", "hi", "peace", "thinking", "working"]

    
    // MARK: - Outlets
    @IBOutlet weak var faceImage: UIImageView!
    @IBOutlet weak var skillsImage: UIImageView!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        setupImageViewStyle()
        createTimer()
    }
    
    // MARK: - Actions
    @objc private func changeFaceImage(){
 
            self.faceImage.image = UIImage(named: self.listOfFaceImages.randomElement() ?? "hi")
    }
    
    

    
    // MARK: - Class functionalities
    private func setupImageViewStyle(){
    
        self.faceImage.layer.shadowColor = UIColor.systemGray.cgColor
        self.faceImage.layer.shadowOffset = CGSize(width: 4, height: 4)
        self.faceImage.layer.shadowOpacity = 1.0
        self.faceImage.layer.shadowRadius = 15
        self.faceImage.layer.masksToBounds = false
    }
    
    
    private func createTimer(){
        let faceTimer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(changeFaceImage), userInfo: nil, repeats: true)
        
        
        DispatchQueue.main.async {
            faceTimer.fire()

        }
        
         
    }
    
}

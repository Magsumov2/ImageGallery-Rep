//
//  ImageInfoViewController.swift
//  ImageGalleryBrowser
//
//  Created by муса магсумов on 11/04/2019.
//  Copyright © 2019 Муса Магсумов. All rights reserved.
//

import UIKit

class ImageInfoViewController: UIViewController {
   var image = UIImage()
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var hightLabel: UILabel!
    @IBOutlet weak var widthLabel: UILabel!
    @IBOutlet weak var stackViewOfInfo: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
          updateUI()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
      
        if let fittingSize = stackViewOfInfo?.sizeThatFits(UIView.layoutFittingCompressedSize){
            preferredContentSize = CGSize(width: fittingSize.width+20, height: fittingSize.height+20)
        }
    }
    func updateUI(){
        let imageData = image.jpegData(compressionQuality: 1.0)
     
       
        sizeLabel.text = "\(imageData?.count ?? 0) bytes"
        hightLabel.text = "\(image.size.height)"
        widthLabel.text = "\(image.size.width)"
        
    }
    



    

    

}

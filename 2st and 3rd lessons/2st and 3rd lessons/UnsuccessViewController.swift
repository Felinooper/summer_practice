//
//  UnsuccessViewController.swift
//  2st and 3rd lessons
//
//  Created by Тимур Миргалиев on 01.07.2022.
//

import UIKit

class UnsuccessViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image.layer.cornerRadius = image.frame.size.width / 2
        image.clipsToBounds = true
    }

    @IBAction func buttonDidTap(_ sender: Any) {
        dismiss(animated: true)
    }
}

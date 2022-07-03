//
//  ContactViewController.swift
//  2st and 3rd lessons
//
//  Created by Тимур Миргалиев on 02.07.2022.
//

import UIKit

class ContactViewController: UIViewController {
    
    var item: Contact?
    
    @IBOutlet weak var nameContact: UILabel!
    @IBOutlet weak var vkLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        numberLabel.text = item?.phone_num
        vkLabel.text = item?.vk
        nameContact.text = item?.name
    }
}


    


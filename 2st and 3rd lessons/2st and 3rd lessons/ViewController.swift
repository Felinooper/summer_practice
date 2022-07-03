//
//  ViewController.swift
//  2st and 3rd lessons
//
//  Created by Тимур Миргалиев on 01.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var telephoneTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonDidTap(_ sender: Any) {
        if (NSPredicate(format: "SELF MATCHES %@", "^89087\\d*")).evaluate(with: telephoneTextField.text) {
            guard let tableVC = storyboard?.instantiateViewController(withIdentifier: "ContactsTableViewController") else { return }
            navigationController?.pushViewController(tableVC, animated: true)
        } else {
            guard let lockVC = storyboard?.instantiateViewController(withIdentifier: "UnsuccessViewController") else { return }
            present(lockVC, animated: true)
        }
    }
}


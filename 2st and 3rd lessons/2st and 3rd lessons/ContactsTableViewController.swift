//
//  ContactsTableViewController.swift
//  2st and 3rd lessons
//
//  Created by Тимур Миргалиев on 01.07.2022.
//

import UIKit

struct Contact {
    let name: String
    let phone_num: String
    let vk: String
}

class ContactsTableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    let contacts: [Contact] = [
        Contact(name: "Тимур",
                phone_num: "+79625469419",
                vk: "@timfich"),
        Contact(name: "Илья",
                phone_num: "+79377752705",
                vk: "@felinooper"),
        Contact(name: "Даврон",
                phone_num: "79872982293",
                vk: "daronbek22"),
        Contact(name: "Ильнур",
                phone_num: "+79377752705",
                vk: "@ilnuroves")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ContactTableViewCell.self, forCellReuseIdentifier: "ContactTableViewCell")
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource
extension ContactsTableViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactTableViewCell", for: indexPath)
        cell.textLabel?.text = contacts[indexPath.row].name
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let contactVC = storyboard?.instantiateViewController(withIdentifier: "ContactViewController") as? ContactViewController else { return }
        contactVC.item = contacts[indexPath.row]
        present(contactVC, animated: true)
    }
}

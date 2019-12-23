//
//  ViewController.swift
//  TableView-59451722
//
//  Created by Mufakkharul Islam Nayem on 12/23/19.
//  Copyright © 2019 Mufakkharul Islam Nayem. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    let models = Operation.list()

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.register(UINib(nibName: "OperationTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "Cell")
        tableView.rowHeight = 100
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! OperationTableViewCell
        let model = models[indexPath.row]
        cell.topupButton.isHidden = !model.isAllOptionAvailable
        return cell
    }

}

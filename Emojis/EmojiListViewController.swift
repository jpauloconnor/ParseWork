//
//  EmojiListViewController.swift
//  Emojis
//
//  Created by Paul O'Connor on 10/2/15.
//  Copyright © 2015 OCApps. All rights reserved.
//

import UIKit

class EmojiListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel!.text = "XXXXX"
        return cell
    }

    
}

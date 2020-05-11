//
//  MovieQuotesTableViewController.swift
//  MovieQuotes
//
//  Created by Yifei Li on 5/11/20.
//  Copyright © 2020 Yifei Li. All rights reserved.
//

import UIKit

class MovieQuotesTableViewController:UITableViewController {
    let movieQuoteCellIndentifier = "MovieQuoteCell"
    var names = ["Dave", "Li", "Gao"]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: movieQuoteCellIndentifier, for: indexPath)
        // Configure the cell
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    
}

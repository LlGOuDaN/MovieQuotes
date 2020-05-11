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
//    var names = ["Dave", "Li", "Gao"]
    var movieQuotes = [MovieQuote]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(showAddQuoteDialog))
        movieQuotes.append(MovieQuote(quote: "I'll be back", movie: "The Terminator"))
        movieQuotes.append(MovieQuote(quote: "Yo Adrain!", movie: "Rocky"))
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieQuotes.count
    }
    
    @objc func showAddQuoteDialog(){
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: movieQuoteCellIndentifier, for: indexPath)
        // Configure the cell
//        cell.textLabel?.text = names[indexPath.row]
        cell.textLabel?.text = movieQuotes[indexPath.row].quote
        cell.detailTextLabel?.text = movieQuotes[indexPath.row].moive
        return cell
    }
    
}

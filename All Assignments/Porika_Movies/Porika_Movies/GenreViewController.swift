//
//  ViewController.swift
//  Porika_Movies
//
//  Created by student on 4/28/22.
//

import UIKit

class GenreViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let type = categoryArray
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        type.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = genreTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        cell.textLabel?.text = type[indexPath.row].type
        return cell
    }
    
    
    @IBOutlet weak var genreTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        genreTableView.dataSource = self
        genreTableView.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "movieSegue" {
            let destination = segue.destination as! MoviesViewController
            destination.moviesArray = type[genreTableView.indexPathForSelectedRow!.row].movies
            
        }
    }

}

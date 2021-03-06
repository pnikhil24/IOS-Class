//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Porika,Nikhil on 3/29/22.
//

import UIKit

class Product{
    var productName : String?
    var productCategory : String?
    
    init(prodName: String, prodCategory: String){

        self.productName = prodName;
        self.productCategory = prodCategory;
    }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           //return the cell with data.
           //Create cells dynamically
        var cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath)
        //Assign the data to the cell.
        cell.textLabel?.text = productsArray[indexPath.row].productName
        //return cell
        return cell
    }

    var productsArray = [Product]()
    
    

    @IBOutlet weak var tableViewOutlet: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
        let product1 = Product(prodName: "MacBookAir", prodCategory: "Laptop")
        
        productsArray.append(product1)
        
        let product2 = Product(prodName: "Iphone", prodCategory: "Mobiles")
        
        productsArray.append(product2)
        
        let product3 = Product(prodName: "SmartWatch", prodCategory: "Watches")
        
        productsArray.append(product3)
        
        let product4 = Product(prodName: "Airpods", prodCategory: "Accessories")
        
        productsArray.append(product4)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          
        let transition = segue.identifier
                if transition == "detailsSegue"{
                    let destination = segue.destination as! DetailsViewController
                    destination.product = productsArray[(tableViewOutlet.indexPathForSelectedRow?.row)!]
                    
    }
}
}

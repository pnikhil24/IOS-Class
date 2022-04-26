//
//  ViewController.swift
//  TableView
//
//  Created by student on 4/25/22.
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
    return productArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = TableViewOutlet.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = productArray[indexPath.row].productName
        return cell

    }
    

    @IBOutlet weak var TableViewOutlet: UITableView!
    
        var productArray = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TableViewOutlet.delegate = self
        TableViewOutlet.dataSource = self
        
        let product1 = Product(prodName: "MacBookAir", prodCategory: "Laptop")
        
        productArray.append(product1)
        
        let product2 = Product(prodName: "Iphone", prodCategory: "Mobiles")
        
        productArray.append(product2)
        
        let product3 = Product(prodName: "SmartWatch", prodCategory: "Watches")
        
        productArray.append(product3)
        
        let product4 = Product(prodName: "Airpods", prodCategory: "Accessories")
        
        productArray.append(product4)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        let transition = segue.identifier
                if transition == "AppleProductDescription"{
                    let destination = segue.destination as! ResultViewController
                    destination.product = productArray[(TableViewOutlet.indexPathForSelectedRow?.row)!]
    
    }

}

}

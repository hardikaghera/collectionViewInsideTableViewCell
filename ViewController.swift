//
//  ViewController.swift
//  CollectionViewInsideTableViewCell
//
//  Created by hardik aghera on 14/08/18.
//  Copyright © 2018 hardikaghera2306. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var moviesCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var returnCell: UITableViewCell!
        
        if indexPath.row == 0 { // You can also check for section index.section
            returnCell = tableView.dequeueReusableCell(withIdentifier: "MoviesTableViewCell", for: indexPath)
            
            //let capacityID = capacityParameters[indexPath.row]
           // cell.textLabel?.text = "Section \(indexPath.section) Row \(indexPath.row)"
            
            return returnCell
            
        } else {
            
            returnCell = tableView.dequeueReusableCell(withIdentifier: "SeriesTableViewCell", for: indexPath)
            return returnCell
            
        }

    }


}

extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var returnCell: UICollectionViewCell!
        if collectionView.tag == 1  { // You can also check for section index.section
            returnCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MoviesCollectionViewCell", for: indexPath) as! MoviesCollectionViewCell
            return returnCell
            
        } else {
            
            returnCell = collectionView.dequeueReusableCell(withReuseIdentifier: "SeriesCollectionViewCell", for: indexPath) as! SeriesCollectionViewCell
            
            return returnCell
        }

    }
    
    
    
    
    
}


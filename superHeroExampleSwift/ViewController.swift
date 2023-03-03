//
//  ViewController.swift
//  superHeroExampleSwift
//
//  Created by AyzaSoft on 3.03.2023.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource
{
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        //Resimlerin adlarını listeye ekledik
        var superHeroName = [String()]
        superHeroName.append("Batman")
        superHeroName.append("Superman")
        superHeroName.append("Hulk")
        superHeroName.append("Icardi")
        //Resimlerin pathleri
        var superHeroImage = [String()]
        superHeroImage.append("batman")
        superHeroImage.append("superman")
        superHeroImage.append("hulk")
        superHeroImage.append("icardi")
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Test"
        return cell
    }
    
}


//
//  ViewController.swift
//  superHeroExampleSwift
//
//  Created by Kadir GÜLLÜOĞLU on 3.03.2023.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource
{
    var superHeroName = [String()]
    var superHeroImage = [String()]
    var selectedName = ""
    var selectedImage = ""
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        //Resimlerin adlarını listeye ekledik
        superHeroName.append("Batman")
        superHeroName.append("Superman")
        superHeroName.append("Hulk")
        superHeroName.append("Icardi")
        
        //Resimlerin pathleri listeye eklendi
        superHeroImage.append("batman")
        superHeroImage.append("superman")
        superHeroImage.append("hulk")
        superHeroImage.append("icardi")
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superHeroName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superHeroName[indexPath.row]
        return cell
    }
    
    
     func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
         if editingStyle == .delete {
             superHeroName.remove(at: indexPath.row)
             superHeroImage.remove(at: indexPath.row)
             tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.left)
         }
                
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
         selectedImage = superHeroImage[indexPath.row]
         selectedName = superHeroName[indexPath.row]
        
        
        
        performSegue(withIdentifier: "toSuperHero", sender: nil)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSuperHero"{
            let destinationVC = segue.destination as! SuperHeroDetailsController
            destinationVC.selectedHeroImage = selectedImage
            destinationVC.selectedHeroName = selectedName
        }
    }
    
}


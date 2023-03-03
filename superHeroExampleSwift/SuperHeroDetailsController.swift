
import UIKit

class SuperHeroDetailsController: UIViewController {

    @IBOutlet weak var nameHero: UILabel!
    @IBOutlet weak var imageHero: UIImageView!
    
    var selectedHeroName = ""
    var selectedHeroImage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageHero.image = UIImage(named: selectedHeroImage)
        nameHero.text = selectedHeroName
    }
   

}

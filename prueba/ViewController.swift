//
//  ViewController.swift
//  prueba
//
//  Created by Julio Hermosa on 22/5/25.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var buttom: UIButton!
    @IBOutlet weak var headerImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.text = "Julio"
        titleLabel.text = "Bienvenido"
        headerImageView.image = UIImage(named: "header")
        buttom.backgroundColor = .orange
        // Do any additional setup after loading the view.
    }
    
    func navegar(){
//        let secondViewController = SecondViewController()
        let secondViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        nameTextField.text = nil
        secondViewController.name = nameTextField.text ?? "tu nombre"
//        self.navigationController?.pushViewController(secondViewController, animated: true)
        self.show(secondViewController, sender: nil)
//        self.present(secondViewController, animated: true , completion: nil)
//        performSegue(withIdentifier: "goToSecondVC", sender: nil)
    }

    @IBAction func buttonAction(_ sender: Any) {
        navegar()
    }
    
}


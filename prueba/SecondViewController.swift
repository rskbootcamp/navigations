//
//  SecondViewController.swift
//  prueba
//
//  Created by Julio Hermosa on 26/5/25.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    var name: String = "Humano"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "Hello, \(name)!"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
//        navigationController?.popViewController(animated: true)//show o pop con navigation
        dismiss(animated: true)//para present
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showThird" {
            if let vc = segue.destination as? ThirdViewController {
                vc.titleLabel.text = "Hello, World!"
            }
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}

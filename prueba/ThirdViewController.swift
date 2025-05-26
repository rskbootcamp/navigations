//
//  ThirdViewController.swift
//  prueba
//
//  Created by Julio Hermosa on 26/5/25.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goBack(_ sender: Any) {
        print(navigationController?.viewControllers ?? [])
        navigationController?.viewControllers.removeLast()
    }
    
    @IBAction func goToFirst(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

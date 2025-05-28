//
//  NewViewController.swift
//  prueba
//
//  Created by Julio Hermosa on 26/5/25.
//

import UIKit

class NewViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let nombres = ["Juan", "Pedro", "Luis", "Carlos", "Andrés", "Arturo"]
    let puntajes = ["100", "200", "300", "400", "500"]
    let puntos = [("Juan", "50"), ("Pedro", "100"), ("Luis", "150"), ("Carlos", "200"), ("Andrés", "250"), ("Arturo", "300")]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "PuntajesTableViewCell", bundle: nil), forCellReuseIdentifier: "puntajeID")
        tableView.dataSource = self
        tableView.delegate = self

    }

}

extension NewViewController {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 1 {
            return 3
        } else {
            return puntos.count
        }
//        return puntos.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        if section == 0 {
//            return "Mejores puntajes"
//        } else {
//            return "Puntajes de hoy"
//        }
//    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = .yellow
        return headerView
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView()
        footerView.backgroundColor = .green
        return footerView
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        let cell = UITableViewCell()
//        let label = UILabel()
//        label.text = puntos[indexPath.row].0 + " - " + puntos[indexPath.row].1
//        cell.addSubview(label)
//        cell.textLabel?.text = puntos[indexPath.row].0
//        cell.detailTextLabel?.text = puntos[indexPath.row].1
        let cell = tableView.dequeueReusableCell(withIdentifier: "puntajeID") as! PuntajesTableViewCell
        cell.puntajeLabel.text = "\(puntos[indexPath.row].1) puntos"
        if indexPath.section == 1 {
            cell.puntajeLabel.textColor = .red
        }
        return cell
    }
    
}

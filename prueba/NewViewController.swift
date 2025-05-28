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
        tableView.dataSource = self //tomar metodos de UITableViewDataSource configurados
        tableView.delegate = self //tomar metodos de UITableViewDelegate configurados

    }

}

extension NewViewController { //el extension sirve para agregar más métodos a nuestras clases
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 1 {
            return 3
        } else {
            return puntos.count //cantidad de elementos de la lista
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
        //le configuramos la vista que queremos reutilizar
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        let cell = UITableViewCell()
//        let label = UILabel()
//        label.text = puntos[indexPath.row].0 + " - " + puntos[indexPath.row].1
//        cell.addSubview(label)
//        cell.textLabel?.text = puntos[indexPath.row].0
//        cell.detailTextLabel?.text = puntos[indexPath.row].1
        let cell = tableView.dequeueReusableCell(withIdentifier: "puntajeID") as! PuntajesTableViewCell
        cell.puntajeLabel.text = "\(puntos[indexPath.row].1) puntos" //setear el texto de la celda segun la lista
        if indexPath.section == 1 { //verificar el numero de seccion para configurar las celdas
            cell.puntajeLabel.textColor = .red
        }
        return cell
    }
    
}

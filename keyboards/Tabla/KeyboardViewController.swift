//
//  KeyboardViewController.swift
//  keyboards
//
//  Created by LUCAS PAJARES PRIETO on 17/10/18.
//  Copyright © 2018 LUCAS PAJARES PRIETO. All rights reserved.
//

import UIKit

class KeyboardViewController: UIViewController {

    @IBOutlet weak var keyboardTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerSwitchCells()
        registerLabelCells()
        load()
        // Do any additional setup after loading the view.
    }
    internal var labelS: [Labels] = []
    internal var labelS2: [Labels] = []
    internal var labelN1:[LabelsN] = []
      internal var labelN2:[LabelsN] = []
    internal var currentindex = 0
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func registerSwitchCells(){
        let identifier = "SwitchCells"
        let cellNib = UINib(nibName: identifier, bundle: nil)
        keyboardTableView.register(cellNib, forCellReuseIdentifier: identifier)
    }
    private func registerLabelCells(){
        let identifier = "LabelCells"
        let cellNib = UINib(nibName: identifier, bundle: nil)
        keyboardTableView.register(cellNib, forCellReuseIdentifier: identifier)
    }
    private func load(){
        let label_1 = Labels(titulo: "Auto-Capitalization")
        let label_2 = Labels(titulo: "Auto-Correction")
        let label_3 = Labels(titulo: "Check Spelling")
        let label_4 = Labels(titulo: "Enable Caps Lock")
        let label_5 = Labels(titulo: "Predictive")
        let label_6 = Labels(titulo: "Smart Punctuation")
        let label_7 = Labels(titulo: "Character Preview")
        let label_8 = Labels(titulo: "'.'Shortcut")
        let labeln_1 = LabelsN(tituloN: "Keyboards", tituloN2: "3")
        let labeln_2 = LabelsN(tituloN: "Hardware Keyboards", tituloN2: "")
        let labeln2_1 = LabelsN(tituloN: "Text Replacement", tituloN2: "")
        let labeln2_2 = LabelsN(tituloN: "One Handed Keyboard", tituloN2: "Off")
        let label2_1 = Labels(titulo: "Enable Dictation")
        labelS = [label_1, label_2, label_3, label_4, label_5, label_6, label_7, label_8]
        labelS2 = [label2_1]
        labelN1 = [labeln_1, labeln_2]
        labelN2 = [labeln2_1, labeln2_2]
        
        /*let autocap = Piezas(titulo: "Auto-Capitalization")
        let autocor = Piezas(titulo: "Auto-Correction")
        let check = Piezas(titulo: "Check Spelling")
        let enable = Piezas(titulo: "Enable Caps Lock")
        let predictive = Piezas(titulo: "Predictive")
        let smart = Piezas(titulo: "Smart Punctuation")
        let charprev = Piezas(titulo: "Character Preview")
        let short = Piezas(titulo: "'.'SHortcut")
        pieza.append(autocap)
        pieza.append(autocor)
        pieza.append(check)
        pieza.append(enable)
        pieza.append(predictive)
        pieza.append(smart)
        pieza.append(charprev)
        pieza.append(short)
 */
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
    extension KeyboardViewController: UITableViewDelegate, UITableViewDataSource{
        func numberOfSections ( in tableView: UITableView) -> Int {
            return 4
            
        }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section : Int) -> Int{
           
            if (section == 2){
                return 8
            }
            else if(section != 3){
                return 2
            }
            else{
                return 1
            }
           
        }
        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            if(section == 2){
                return "ALL KEYBOARDS"
            }
            else if(section == 3){
                return "DICTATION"
            }
            else{
                return nil
            }
        }
        func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
            if(section == 2){
                return "Double tapping the space bar will insert a period followed by a space"
            }
            else{
                return nil
            }
        }
        func  tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            
        
                return 55.0
            
        }
        
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            if(indexPath.section == 2){
           let cell: SwitchCells = (tableView.dequeueReusableCell(withIdentifier: "SwitchCells", for: indexPath) as? SwitchCells)!
           let cellRow = labelS[indexPath.row]
            cell.lblSwitch?.text = cellRow.titulo
                return cell
            }
           else if(indexPath.section == 0){
            let cell: LabelCells = (tableView.dequeueReusableCell(withIdentifier: "LabelCells", for: indexPath) as? LabelCells)!
            let cellRow = labelN1[indexPath.row]
            cell.lblLeft?.text = cellRow.tituloN
            cell.lblRight?.text = cellRow.tituloN2
            cell.accessoryType = .disclosureIndicator
            return cell
                
            }
             else if(indexPath.section == 1){
            let cell: LabelCells = (tableView.dequeueReusableCell(withIdentifier: "LabelCells", for: indexPath) as? LabelCells)!
            let cellRow = labelN2[indexPath.row]
            cell.lblLeft?.text = cellRow.tituloN
            cell.lblRight?.text = cellRow.tituloN2
            cell.accessoryType = .disclosureIndicator
            return cell
            }
            else{
                let cell: SwitchCells = (tableView.dequeueReusableCell(withIdentifier: "SwitchCells", for: indexPath) as? SwitchCells)!
                let cellRow = labelS2[indexPath.row]
                cell.lblSwitch?.text = cellRow.titulo
                return cell
            }
         
}
}
                //let cell: MiembrosCells = (tableView.dequeueReusableCell(withIdentifier: "MiembrosCells", for: indexPath) as? //MiembrosCells)!
                
                //let cellRow = Actores[indexPath.row]
                
                //cell.name?.text = cellRow.name
                //cell.avatar?.image = UIImage(named: cellRow.avatar!)
                //return cell
            


        



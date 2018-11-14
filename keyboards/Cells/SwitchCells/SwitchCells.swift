//
//  SwitchCells.swift
//  keyboards
//
//  Created by LUCAS PAJARES PRIETO on 17/10/18.
//  Copyright © 2018 LUCAS PAJARES PRIETO. All rights reserved.
//

import UIKit

class SwitchCells: UITableViewCell {

    @IBOutlet weak var btnSwitch: UISwitch!
    @IBOutlet weak var lblSwitch: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func clickSwitch(_ sender: Any) {
        print(lblSwitch?.text)
        //jberwjbfhjerbfihberhb
    }
}

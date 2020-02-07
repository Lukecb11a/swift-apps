//
//  StudentCell.swift
//  AbsenceRecorder
//
//  Created by Compton-Burnett, Luke (PGW) on 07/02/2020.
//  Copyright © 2020 Luke Compton-Burnett. All rights reserved.
//

import UIKit

class StudentCell: UITableViewCell {


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        self.accessoryType = selected ? .checkmark : .none
        
    }

}

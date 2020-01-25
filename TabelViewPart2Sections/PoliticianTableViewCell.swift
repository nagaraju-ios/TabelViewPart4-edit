//
//  PoliticianTableViewCell.swift
//  TabelViewPart2Sections
//
//  Created by THOTA NAGARAJU on 12/30/19.
//  Copyright © 2019 THOTA NAGARAJU. All rights reserved.
//

import UIKit

class PoliticianTableViewCell: UITableViewCell {

    @IBOutlet weak var ptImage: UIImageView!
    
    
    @IBOutlet weak var ptLbl: UILabel!
   
    @IBOutlet weak var ptLbl2: UILabel!
    
    @IBOutlet weak var ptLbl3: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

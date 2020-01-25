//
//  CrickterTableViewCell.swift
//  TabelViewPart2Sections
//
//  Created by THOTA NAGARAJU on 12/30/19.
//  Copyright © 2019 THOTA NAGARAJU. All rights reserved.
//

import UIKit

class CrickterTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var ctImage: UIImageView!
    
    
    @IBOutlet weak var ctLbl2: UILabel!
    @IBOutlet weak var ctLbl1: UILabel!
    

    @IBOutlet weak var ctLbl3: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

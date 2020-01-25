//
//  ActorCustomTableViewCell.swift
//  TabelViewPart2Sections
//
//  Created by THOTA NAGARAJU on 12/30/19.
//  Copyright © 2019 THOTA NAGARAJU. All rights reserved.
//

import UIKit

class ActorCustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var atImage: UIImageView!
    
    @IBOutlet weak var atLbl1: UILabel!
    
    @IBOutlet weak var atLbl3: UILabel!
    @IBOutlet weak var atLbl2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    
    
}

//
//  PlayerTableViewCell.swift
//  Bizingo
//
//  Created by Mateus Rodrigues on 10/02/20.
//  Copyright © 2020 Mateus Rodrigues. All rights reserved.
//

import UIKit

class PlayerTableViewCell: UITableViewCell {

    @IBOutlet weak var statusView: UIView!
    @IBOutlet weak var nicknameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

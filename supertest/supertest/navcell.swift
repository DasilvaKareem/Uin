//
//  navcell.swift
//  supertest
//
//  Created by Kareem Dasilva on 12/23/14.
//  Copyright (c) 2014 Kareem Dasilva. All rights reserved.
//

import UIKit

class navcell: UITableViewCell {

    
    @IBOutlet weak var potrait: UIImageView!
    
    
    @IBOutlet weak var username: UILabel!
    
    
    @IBOutlet weak var textpost: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

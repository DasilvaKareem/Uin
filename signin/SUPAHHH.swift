//
//  SUPAHHH.swift
//  signin
//
//  Created by Kareem Dasilva on 12/21/14.
//  Copyright (c) 2014 Kareem Dasilva. All rights reserved.
//

import UIKit

class SUPAHHH: UITableViewCell {

    
    @IBOutlet weak var UserName: UILabel!
    
    
    @IBOutlet weak var textpost: UILabel!
    
   
    required init(coder aDecoder: (NSCoder!)) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

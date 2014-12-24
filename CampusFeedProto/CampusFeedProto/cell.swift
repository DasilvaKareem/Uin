//
//  cell.swift
//  CampusFeedProto
//
//  Created by Kareem Dasilva on 12/22/14.
//  Copyright (c) 2014 Kareem Dasilva. All rights reserved.
//

import UIKit




class cell: UITableViewCell {
    
    @IBOutlet weak var lastlabel: UILabel!
    
    @IBOutlet weak var firstlabel: UILabel!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  DetailsTableViewCell.swift
//  Web Task
//
//  Created by Manoj on 09/06/21.
//

import UIKit

class DetailsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblID: UILabel!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblEmail: UILabel!
    
    @IBOutlet weak var lblMobile: UILabel!
    
    @IBOutlet weak var userID: UILabel!
    
    @IBOutlet weak var userTittle: UILabel!
    
    @IBOutlet weak var userEmail: UILabel!
    
    @IBOutlet weak var userMobile: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
        
        
    }
    
    
    @IBAction func PostTap(_ sender: Any) {
        
        
    }
    
}

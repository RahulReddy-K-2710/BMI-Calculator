//
//  ShareandRateTableViewCustomCell.swift
//  BMI_Calculator
//
//  Created by Roja on 13/12/22.
//

import UIKit

class ShareandRateTableViewCustomCell: UITableViewCell {
    
    static let identifier = "ShareandRateTableViewCustomCell"
    
 //MARK: Outlets.
    @IBOutlet weak var tittleLabel: UILabel!
    @IBOutlet weak var subTittleLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func prepare(Model: ShareModel) {
        tittleLabel.text = Model.tittle
        subTittleLabel.text = Model.subTittle
        iconImageView.image = UIImage(systemName: Model.icon)
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

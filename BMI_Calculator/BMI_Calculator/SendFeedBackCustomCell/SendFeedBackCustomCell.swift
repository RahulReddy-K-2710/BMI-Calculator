//
//  SendFeedBackCustomCell.swift
//  BMI_Calculator
//
//  Created by Roja on 14/12/22.
//

import UIKit

class SendFeedBackCustomCell: UITableViewCell {
    
    static let identifier = "SendFeedBackCustomCell"
    
//MARK: Outlets.
    @IBOutlet weak var tittleLabel: UILabel!
    @IBOutlet weak var messageImageView: UIImageView!
    @IBOutlet weak var messageaTextField: UITextField!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func prepare(send: SendFeedBackModel) {
        tittleLabel.text = send.tittle
        messageImageView.image = UIImage(systemName: send.icon)
        messageaTextField.text = send.message
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

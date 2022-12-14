//
//  ChangeLanguageCustomCell.swift
//  BMI_Calculator
//
//  Created by Roja on 13/12/22.
//

import UIKit

class ChangeLanguageCustomCell: UITableViewCell {
    
    static let identifier = "ChangeLanguageCustomCell"
    
//MARK: Outlets.
    @IBOutlet weak var tittleLabel: UILabel!
    @IBOutlet weak var subTittleLabel: UILabel!
    @IBOutlet weak var appearanceLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var lightAndDarkSegmentedControll: UISegmentedControl!

    override func awakeFromNib() {
        super.awakeFromNib()
    
    }
    
    func prepare(changes: ChangeModel) {
        tittleLabel.text = changes.tittle
        subTittleLabel.text = changes.subtittle
        appearanceLabel.text = changes.appearance
        iconImageView.image = UIImage(systemName: changes.icon)
    }
    
    
    @IBAction func didChangeMode(_ sender: UISegmentedControl) {
         
        let appDelegate = UIApplication.shared.windows.first
    
        if sender.selectedSegmentIndex == 0 {
            appDelegate?.overrideUserInterfaceStyle = .light
        } else if sender.selectedSegmentIndex == 1 {
            appDelegate?.overrideUserInterfaceStyle = .dark
        } else {
            appDelegate?.overrideUserInterfaceStyle = .light
        }
            
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

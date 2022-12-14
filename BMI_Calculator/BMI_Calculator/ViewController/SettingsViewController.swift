//
//  SettingsViewController.swift
//  BMI_Calculator
//
//  Created by Roja on 13/12/22.
//

import UIKit

class SettingsViewController: UIViewController {
    
//MARK: Outlets.
    @IBOutlet weak var settingsTableView: UITableView!
    
    var share = [ShareModel]()
    var change = [ChangeModel]()
    var feeback = [SendFeedBackModel]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Settings"
        
        //ConfigerCustomCells Here.
        setCustomCells()
        
        share = DataModel.getshareData()
        change = DataModel.getchangeData()
        feeback = DataModel.getSendData()

    }
 //setupCustomCells.
    private func setCustomCells() {
        settingsTableView.register(UINib(nibName: "ShareandRateTableViewCustomCell", bundle: nil), forCellReuseIdentifier: "ShareandRateTableViewCustomCell")
        settingsTableView.register(UINib(nibName: "ChangeLanguageCustomCell", bundle: nil), forCellReuseIdentifier: "ChangeLanguageCustomCell")
        settingsTableView.register(UINib(nibName: "SendFeedBackCustomCell", bundle: nil), forCellReuseIdentifier: "SendFeedBackCustomCell")
    }
}

//MARK: Extention of UITableViewDataSource and UITableView Delegate.
extension SettingsViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return share.count
        } else if section == 1 {
            return change.count
        } else if section == 2 {
            return feeback.count
        }
          return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell?
        if indexPath.section == 0 {
            let shareCell = tableView.dequeueReusableCell(withIdentifier: "ShareandRateTableViewCustomCell", for: indexPath) as? ShareandRateTableViewCustomCell
            let share = share[indexPath.row]
            shareCell?.prepare(Model: share)
            cell = shareCell
        } else if indexPath.section == 1 {
            let changeCell = tableView.dequeueReusableCell(withIdentifier: "ChangeLanguageCustomCell", for: indexPath) as? ChangeLanguageCustomCell
            let change = change[indexPath.row]
            changeCell?.prepare(changes: change)
            cell = changeCell
        } else
        if indexPath.section == 2 {
            let feedbackCell = tableView.dequeueReusableCell(withIdentifier: "SendFeedBackCustomCell", for: indexPath) as? SendFeedBackCustomCell
            let feedback = feeback[indexPath.row]
            feedbackCell?.prepare(send: feedback)
            cell = feedbackCell
        }
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 80
        } else if indexPath.section == 1 {
            return 120
        } else
        if indexPath.section == 2 {
            return 80
        }
        
        return 0
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section == 0 {
            return "Thank you for your friends"
        }
        return " "
    }
    
}

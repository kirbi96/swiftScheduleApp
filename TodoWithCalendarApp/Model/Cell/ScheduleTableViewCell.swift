//
//  ScheduleTableViewCell.swift
//  TodoWithCalendarApp
//
//  Created by user on 28.01.2022.
//

import UIKit

class ScheduleTableViewCell: UITableViewCell {
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "TASK"
        label.textColor = .black
        label.textAlignment = .right
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let timeLabel: UILabel = {
        let label = UILabel()
        label.text = "00:00"
        label.textColor = .black
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setContent(index: Int){
        timeLabel.text = String("\(index):00")
    }
    
    func setConstrains(){
        self.addSubview(descriptionLabel)
        
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            descriptionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            descriptionLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            descriptionLabel.heightAnchor.constraint(equalToConstant: 25),
        ])
        
        self.addSubview(timeLabel)
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            descriptionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            descriptionLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            descriptionLabel.heightAnchor.constraint(equalToConstant: 25),
        ])
    }
}

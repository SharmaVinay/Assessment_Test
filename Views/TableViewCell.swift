//
//  TableViewCell.swift
//  Assessment_Xebia
//
//  Created by Vinay Sharma on 23/07/19.
//  Copyright © 2019 Vinay Sharma. All rights reserved.
//


import UIKit

class TableViewCell: UITableViewCell
{

    @IBOutlet weak var newsTitleLabel: UILabel!
    @IBOutlet weak var publisherNameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func setCellContent(dict: NewsModelClass)
    {
        self.newsTitleLabel.text = dict.title
        self.publisherNameLabel.text = dict.byline
        self.dateLabel.text = dict.published_date

        self.imgView.layer.cornerRadius = self.imgView.frame.size.width / 2;
        self.imgView.clipsToBounds = true;
        imgView.backgroundColor = UIColor.lightGray
        
    }

}

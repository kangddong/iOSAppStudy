//
//  MovieCell.swift
//  Chapter 08
//
//  Created by 강동영 on 2022/04/30.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var opendate: UILabel!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var thumbnail: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        NSLog("awakeFromNib Called")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        NSLog("prepareForReuse Called")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        NSLog("layoutSubviews Called")
    }
    
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        
        NSLog("layoutIfNeeded Called")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

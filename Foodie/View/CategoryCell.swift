//
//  CategoryCellTableViewCell.swift
//  Foodie
//
//  Created by Özgün Yildiz on 20.04.21.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    
    @IBOutlet weak var categoryImg: UIImageView!
    
    @IBOutlet weak var categoryTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        categoryImg.layer.cornerRadius = 10
    }
    
    func configureCell(category: FoodCategory) {
        categoryImg.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
    
}

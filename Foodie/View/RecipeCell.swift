//
//  RecipeCell.swift
//  Foodie
//
//  Created by Özgün Yildiz on 20.04.21.
//

import UIKit

class RecipeCell: UICollectionViewCell {

    
    
    @IBOutlet weak var recipeImage: UIImageView!
    
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
  
    func configureCell(recipe: Recipe) {
        recipeImage.image = UIImage(named: recipe.imageName)
    }
    
}

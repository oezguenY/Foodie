//
//  RecipeDetailVC.swift
//  Foodie
//
//  Created by Özgün Yildiz on 20.04.21.
//

import UIKit

class RecipeDetailVC: UIViewController {
    
    var selectedRecipeDetail: Recipe!

    
    @IBOutlet weak var recipeImg: UIImageView!
    
    @IBOutlet weak var recipeTitle: UILabel!
    
    @IBOutlet weak var recipeInstructions: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recipeTitle.text = selectedRecipeDetail.imageName
        recipeInstructions.text = selectedRecipeDetail.instructions
        recipeImg.image = UIImage(named: selectedRecipeDetail.imageName)
    }
 
}

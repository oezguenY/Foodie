//
//  RecipesSelectionVC.swift
//  Foodie
//
//  Created by Özgün Yildiz on 20.04.21.
//

import UIKit

class RecipesSelectionVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!

    var passedCategory: String!
    var data = DataSet()
    var recipes: [Recipe]!
    var selectedRecipe: Recipe?

    override func viewDidLoad() {
        collectionView.dataSource = self
        collectionView.delegate = self
        recipes = data.getRecipes(forCategoryTitle: passedCategory)
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recipes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recipeCell", for: indexPath) as? RecipeCell {
            cell.configureCell(recipe: recipes[indexPath.item])
            return cell
        }
        return UICollectionViewCell()
}
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.bounds.width
        let cellDimension = (width / 2) - 15
        return CGSize(width: cellDimension, height: cellDimension)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedRecipe = recipes[indexPath.item]
        performSegue(withIdentifier: "toRecipeSelection", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? RecipeDetailVC {
            destination.selectedRecipeDetail = selectedRecipe
        }
    }
}

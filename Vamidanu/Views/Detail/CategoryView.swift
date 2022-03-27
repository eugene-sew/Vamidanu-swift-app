//
//  CategoryView.swift
//  Vamidanu
//
//  Created by Eugene Sewor  on 26/03/2022.
//

import SwiftUI

struct CategoryView: View {
    var category:Category
//    create computed property
    var recipes:[Recipe]{
        return Recipe.all.filter{$0.category == category.rawValue}
    }
    var body: some View {
        ScrollView{
            RecipeList(recipes: recipes)
        }
        .navigationTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.soup )
    }
}

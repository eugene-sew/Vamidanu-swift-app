//
//  RecipeView.swift
//  Vamidanu
//
//  Created by Eugene Sewor  on 26/03/2022.
//

import SwiftUI

struct RecipeView: View {
    var recipe: Recipe
    var body: some View {
        ScrollView{
            Image(recipe.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 300)
                .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3),Color(.gray)]), startPoint: .top, endPoint: .bottom))
            
              .clipShape(RoundedRectangle(cornerRadius: 00, style: .continuous))
//                .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 10)
            
            VStack(spacing: 30){
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                VStack(alignment: .leading, spacing: 30){
                    if(!recipe.description.isEmpty){
                        Text(recipe.description)

                    }
                    
                    if(!recipe.ingredients.isEmpty){
                        VStack(alignment: .leading, spacing: 20){
                            Text("Ingredients")
                                .font(.headline)
                            
                            Text(recipe.ingredients)
                        }
                    }
                    if(!recipe.directions.isEmpty){
                        VStack(alignment: .leading, spacing: 20){
                            Text("Directions")
                                .font(.headline)
                            
                            Text(recipe.directions)
                        }
                    }
                }
                .frame(maxWidth:.infinity, alignment: .leading)

            }
            .padding(.horizontal)
            
        }
        .ignoresSafeArea(.container,edges: .top)
        
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe.all[0])
    }
}

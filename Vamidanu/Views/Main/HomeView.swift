//
//  HomeView.swift
//  Vamidanu
//
//  Created by Eugene Sewor  on 26/03/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView{
            RecipeList(recipes: Recipe.all)
            }
            .navigationTitle("Va Midanu")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

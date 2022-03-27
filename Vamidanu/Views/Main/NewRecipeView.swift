//
//  NewRecipeView.swift
//  Vamidanu
//
//  Created by Eugene Sewor  on 26/03/2022.
//

import SwiftUI

struct NewRecipeView: View {
    var body: some View {
        NavigationView {
            Text("New Recipe")
                .navigationTitle("New Recipe")
        }
        .navigationViewStyle(.stack)

    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}

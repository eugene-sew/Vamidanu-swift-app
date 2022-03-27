//
//  FavoritesView.swift
//  Vamidanu
//
//  Created by Eugene Sewor  on 26/03/2022.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            Text("No favorite recipes saved yet!")
                .padding()
                .navigationTitle("Favorites")
        }
        .navigationViewStyle(.stack)

    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}

//
//  ContentView.swift
//  Study-URLSessionWithCombine
//
//  Created by David Malicke on 9/6/22.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @StateObject var mediaQuery =  MediaQuery()
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Search", text: $mediaQuery.iTunesQuery)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                List(mediaQuery.searchResults) { item in
                    VStack(alignment: .leading) {
                        Text(item.trackName).font(.headline)
                        Text(item.artistName).font(.subheadline)
                    }
                    
                }
            }
            .navigationBarTitle("Search Music")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

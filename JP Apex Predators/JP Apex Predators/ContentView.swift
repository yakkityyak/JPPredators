//
//  ContentView.swift
//  JP Apex Predators
//
//  Created by Jakob Hjortshøj on 18/08/2022.
//

import SwiftUI

struct ContentView: View {
    let apController = PredatorController()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(apController.apexPredators) {
                    predator in
                    NavigationLink(destination: Text("Dino details go here")) {
                        Text(predator.name)
                    }
                }
            }
            .navigationTitle("Apex Predators")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

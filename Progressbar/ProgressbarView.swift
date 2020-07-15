//
//  ProgressbarView.swift
//  Progressbar
//
//  Created by Bart Bruijnesteijn on 04/07/2020.
//

import SwiftUI

struct ProgressbarView: View {
    @State private var progress = 0.0
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                ProgressView("", value: self.progress, total: 100)
                
                Text("Current Progress: \(Int(self.progress))%")
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button("Next step") {
                        if self.progress < 100 {
                            self.progress += 10
                        }
                    }
                    
                    Spacer()
                    
                    Button("Reset") {
                        self.progress = 0.0
                    }
                    
                    Spacer()
                }
                .navigationBarTitle("Progress Bar")
            }
            .padding()
        }
    }
}

struct ProgressbarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}


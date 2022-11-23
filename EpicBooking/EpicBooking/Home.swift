//
//  Home.swift
//  EpicBooking
//
//  Created by Team Developers on 2022-11-22.
//

import SwiftUI
 
struct Home: View {
     
    @State private var selection = 1
     
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Browse").font(.largeTitle)
                     
                    Button(action: {
                         
                    }) {
                        HStack(spacing: 4) {
                            Picker(selection: $selection, label: Text("Movie In")) {
                                Text("Cinema 1").tag(1)
                                Text("Cinema 2").tag(2)
                            }
                            Image(systemName: "chevron.down").font(.body)
                        }
                    }
                    .foregroundColor(.black)
                }
                 
                Spacer()
                 
                Button(action: {
                     
                }) {
                    Image(systemName: "slider.horizontal.3")
                }
                 
            }
        }.padding(.top, 1)
    }
}
 
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

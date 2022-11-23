//
//  SearchView.swift
//  EpicBooking
//
//  Created by Team Developers on 2022-11-22.
//

import SwiftUI
 
struct SearchView: View {
    @State var txt = ""
     
    var body: some View {
         
        HStack(spacing: 15) {
            Image(systemName: "magnifyingglass").font(.body)
            TextField("Search Movies", text: $txt)
        }
        .padding()
        .foregroundColor(.black)
        .background(Color("Color"))
        .cornerRadius(20)
        //.padding(.vertical, 15)
    }
}
 
struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

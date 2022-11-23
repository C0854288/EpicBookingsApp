//
//  ContentView.swift
//  EpicBooking
//
//  Created by Team Developers on 2022-11-22.
//


import SwiftUI

struct ContentView: View {
      
   @State var show = false
    
   var body: some View {
       VStack {
         Home()
         SearchView()
            
         HStack {
           Text("All Movies")
                
           Spacer()
                
           Button(action: {
                    
           }) {
               HStack(spacing: 10) {
                   Text("Filter")
                   Image(systemName: "text.justify.right")
               }
           }.foregroundColor(.black)
         }.padding(.bottom, 15)
            
         Cards()
            
       }.padding()
   }
}


struct ContentView_Previews: PreviewProvider {
   static var previews: some View {
       ContentView()
   }
}

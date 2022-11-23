//
//  Details.swift
//  EpicBooking
//
//  Created by Team Developers on 2022-11-22.
//


import SwiftUI

struct Details: View {
    
   @State var selected = ""
   @State var timeselection = ""
    
   var body: some View {
       VStack {
           Image("1").resizable().aspectRatio(1, contentMode: .fill).frame(height:300)
            
           VStack {
               VStack(spacing: 10) {
                   Text("Avengers").foregroundColor(.white)
                    
                   HStack(spacing: 10) {
                        
                       HStack {
                           Image(systemName: "star.fill").foregroundColor(.white)
                           Text("4.52").foregroundColor(.white)
                       }
                          
                       HStack {
                           Image(systemName: "clock").foregroundColor(.white)
                           Text("45 Min").foregroundColor(.white)
                       }
                        
                       HStack {
                           Image(systemName: "film").foregroundColor(.white)
                           Text("Imax").foregroundColor(.white)
                       }
                   }
                    
                   Divider().padding(.vertical, 10)
                   VStack(alignment: .leading) {
                       Text("StoryLine")
                           .background(Color.gray)
                           .foregroundColor(.white)
                           .padding(.bottom, 5)
                       Text("Earth's mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.").font(.caption)
                   }
               }
               .padding()
               .background(Color("Color"))
               .foregroundColor(Color.black.opacity(0.5))
               .cornerRadius(20)
                
               VStack(alignment: .leading) {
                   Text("Date")
                   HStack(spacing: 5) {
                       ForEach(dates) { i in
                            
                           Button(action: {
                               self.selected = i.date
                           }) {
                               VStack(spacing :5) {
                                   Text(i.date)
                                       .font(.system(size: 30, weight: .bold))
                                   Text(i.day)
                               }.padding()
                           }
                           .foregroundColor(Color.white)
                           .background(self.selected == i.date ? Color.blue : Color.gray)
                           .cornerRadius(5)
                       }
                   }
                   .padding(.vertical, 5)
                    
                   Text("Time")
                   HStack(spacing: 5) {
                       ForEach(times) { t in
                            
                           Button(action: {
                               self.timeselection = t.time
                           }) {
                               VStack(spacing :5) {
                                   Text(t.time)
                               }.padding()
                           }
                           .foregroundColor(Color.white)
                           .background(self.timeselection == t.time ? Color.blue : Color.gray)
                           .cornerRadius(5)
                       }
                   }
                   .padding(.vertical, 5)
               }
                

                
               HStack(spacing: 15) {
                   Text("$45")
                    
                   Button(action : {
                        
                   }) {
                       Text("Book Now").padding(.vertical, 15).padding(.horizontal, 15)
                   }
                   .foregroundColor(.white)
                   .background(Color.orange)
                   .clipShape(Capsule())
               }.padding(.top, 15)
                
               Spacer()
           }
           .padding(.horizontal, 25)
           .padding(.top, -35)
       }
   }
}

struct Details_Previews: PreviewProvider {
   static var previews: some View {
       Details()
   }
}

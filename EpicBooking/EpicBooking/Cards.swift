//
//  Cards.swift
//  EpicBooking
//
//  Created by Team Developers on 2022-11-22.
//

import SwiftUI
 
struct Cards: View {
     
    @State var show = false
     
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing:10) {
                ForEach(datamodel) {rs in
                   
                    ScrollView(.horizontal,showsIndicators: false) {
                         
                        HStack(spacing : 10) {
                             
                            ForEach(rs.row) { i in
                                VStack(alignment: .leading, spacing: 12) {
                                    Image(i.image).renderingMode(.original).resizable().cornerRadius(15)
                                        .onTapGesture {
                                            self.show.toggle()
                                        }
                                    Text(i.name).font(.caption).lineLimit(1)
                                    Text(i.time).font(.caption)
                                }
                                .foregroundColor(Color.black.opacity(0.5))
                                .frame(width: UIScreen.main.bounds.width / 2 - 25, height: 250)
                            }
 
                        }
                    }
                }
            }
        }
        .padding(.horizontal, 5)
        .sheet(isPresented: $show) {
            Details()
        }
    }
}
 
struct Cards_Previews: PreviewProvider {
    static var previews: some View {
        Cards()
    }
}

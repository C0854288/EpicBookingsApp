//
//  Model.swift
//  EpicBooking
//
//  Created by Team Developers on 2022-11-22.
//

import SwiftUI
 
struct type : Identifiable {
    var id : Int
    var row : [row]
}
 
struct row : Identifiable {
    var id : Int
    var name : String
    var time : String
    var image : String
}
 
struct datetype : Identifiable {
    var id : Int
    var date : String
    var day : String
}
 
var datamodel = [type(id: 0, row: [
    row(id: 0, name: "Avengers", time: "1h 12m", image: "1"),
    row(id: 1, name: "Onward", time: "1h 42m", image: "2"),
    row(id: 2, name: "Soul", time: "1h 40m", image: "3"),
]),
type(id: 1, row: [
    row(id: 0, name: "Cruella", time: "1h 12m", image: "4"),
    row(id: 1, name: "Jungle Cruise", time: "1h 42m", image: "5"),
    row(id: 2, name: "The Call of the Wild", time: "1h 40m", image: "6"),
]),
type(id: 2, row: [
    row(id: 0, name: "Joker", time: "1h 12m", image: "7"),
    row(id: 1, name: "Mulan", time: "1h 42m", image: "8"),
    row(id: 2, name: "Mortal Komba", time: "1h 40m", image: "9"),
])]
 
var dates = [datetype(id: 0, date: "15", day: "01/20"),
             datetype(id: 1, date: "16", day: "01/20"),
             datetype(id: 2, date: "17", day: "01/20"),
             datetype(id: 3, date: "18", day: "01/20")]
 
struct timetype : Identifiable {
    var id : Int
    var time : String
}
 
var times = [timetype(id: 0, time: "0:00"),
            timetype(id: 1, time: "1:00"),
            timetype(id: 2, time: "2:00"),
            timetype(id: 3, time: "3:00")]

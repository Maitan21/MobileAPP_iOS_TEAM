//
//  User.swift
//  knuunse
//
//  Created by 성진용 on 2020/06/01.
//  Copyright © 2020 COMP420. All rights reserved.
//

import Foundation

class User {
    var birthYear : Int
    var birthMonth : Int
    var birthDay : Int
    var name : String
    var id : Int
    
    init(id: Int, name : String, year:Int, month:Int, day:Int)
    {
        birthDay = day
        birthMonth = month
        birthYear = year
        self.name = name
        self.id = id
    }
}

//
//  MessageData.swift
//  Send-It
//
//  Created by Brandon Marella on 10/14/19.
//  Copyright © 2019 Allegory. All rights reserved.
//

import Foundation

class MessageData: ObservableObject {
    var id: Int
    var message: String
    
    init(id: Int, message: String) {
        self.id = id
        self.message = message
    }
}

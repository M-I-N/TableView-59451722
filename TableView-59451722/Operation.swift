//
//  Operation.swift
//  TableView-59451722
//
//  Created by Mufakkharul Islam Nayem on 12/23/19.
//  Copyright © 2019 Mufakkharul Islam Nayem. All rights reserved.
//

import Foundation

struct Operation {
    let isAllOptionAvailable: Bool

    static func list() -> [Operation] {
        return [ Operation(isAllOptionAvailable: true), Operation(isAllOptionAvailable: false), Operation(isAllOptionAvailable: true) ]
    }
}

//
//  File.swift
//  
//
//  Created by Arda Onat on 10.02.2022.
//

public extension Optional where Wrapped == Float {
    var valueOrEmpty: Float {
        switch self {
        case .none:
            return 0
        case .some(let wrapped):
            return wrapped
        }
    }
}

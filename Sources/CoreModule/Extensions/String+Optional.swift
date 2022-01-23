//
//  File.swift
//  
//
//  Created by Arda Onat on 23.01.2022.
//

public extension Optional where Wrapped == String {
    public var valueOrEmpty: String {
        switch self {
        case .none:
            return ""
        case .some(let wrapped):
            return wrapped
        }
    }
}


//
//  WeakRef.swift
//  
//
//  Created by Arda Onat on 22.08.2021.
//

final class WeakRef<T: AnyObject> {
    
    weak var object: T?
    
    init(_ object: T) {
        self.object = object
    }
}

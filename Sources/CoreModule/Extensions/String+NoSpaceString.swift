//
//  File.swift
//  
//
//  Created by Arda Onat on 15/03/2022.
//

// TODO: Move to CoreModule
public extension String {
    var nonSpaceString: String {
        return self.replacingOccurrences(of: " ", with: "")
    }
}

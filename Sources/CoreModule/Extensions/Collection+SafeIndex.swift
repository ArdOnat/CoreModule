//
//  File.swift
//  
//
//  Created by Arda Onat on 23.01.2022.
//
public extension Collection {
    public subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

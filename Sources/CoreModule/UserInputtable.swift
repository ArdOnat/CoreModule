//
//  UserInputtable.swift
//  
//
//  Created by Arda Onat on 16.02.2022.
//

public protocol UserInputtable {
    var isValidInput: Bool { get }
    func showError()
    func hideError()
}

//
//  ParameterEncoder.swift
//
//
//  Created by Arda Onat on 6.09.2021.
//

import Foundation

protocol ParameterEncoder {
    static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws
}

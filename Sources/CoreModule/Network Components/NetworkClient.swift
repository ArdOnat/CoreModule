//
//  File.swift
//  
//
//  Created by Arda Onat on 10.10.2021.
//

import Foundation

public protocol NetworkClient {
    func request<T>(_ request: Request, queue: DispatchQueue, completion: @escaping (Result<T, Error>) -> ()) where T : Decodable
}

//
//  RMService.swift
//  rickyandmorty
//
//  Created by Sanath Raj Petkar on 22/07/24.
//

import Foundation

///Primary api service object to get ricky and mort data

final class RMService {
    static let shared = RMService()
    
    private init () {}
    
    public func execute<T: Codable>(
        _ request:RMRequest,
        expecting type: T.Type,
        completion:@escaping (Result<String,Error>) -> Void){
        
    }
}

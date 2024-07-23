//
//  RMRequest.swift
//  rickyandmorty
//
//  Created by Sanath Raj Petkar on 22/07/24.
//

import Foundation

final class RMRequest {
    
    
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    private let endpoint : RMEndpoint
    
    private let pathComponents: Set<String>
    
    private let queryParamaters:[URLQueryItem]
    
    private var urlString:String{
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty{
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParamaters.isEmpty{
            string += "?"
            let argumentString = queryParamaters.compactMap({
                guard let value = $0.value else {return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    public var url:URL?{
        return URL(string: urlString)
    }
    
    let httpMethod = "GET"
    
    
    init(endpoint: RMEndpoint, pathComponents: [String]=[], queryParamaters: [URLQueryItem]=[]) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParamaters = queryParamaters
    }
    
}

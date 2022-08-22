//
//  NetworkService.swift
//  MVVM
//
//  Created by Menna on 08/05/2022.
//

import Foundation
import Alamofire

class MovieServices{
    
    func fetchMovieData(completion : @escaping(MovieJSONData?,Error?)->()){
        AF.request(URLs.url)
            .validate()
            .responseDecodable(of: MovieJSONData.self){(response) in
                switch response.result {
                case .success( _):
                    guard let mov = response.value else{return}
                    completion(mov,nil)
                    
                case  .failure (let error):
                    completion(nil,error)
                }
                
                
            }
    }
    
}

//
//  MovieViewModel.swift
//  MVVM
//
//  Created by Menna on 08/05/2022.
//

import Foundation
import UIKit
class MovieViewModel{
    
    var movieServices: MovieServices!
    var movieData : MovieJSONData!{
        didSet{
            self.bindMovieViewModelToView()
        }
    }
    
    var error : String!{
        didSet{
            self.bindErrorViewModelToView()
        }
    }
    
    
    var bindMovieViewModelToView : (()->()) = {}
    var bindErrorViewModelToView : (()->()) = {}
    
    
    init(){
        self.movieServices = MovieServices()
        self.fetchMovieDataFromAPI()
    }
    
    
    
    
    func fetchMovieDataFromAPI(){
        movieServices.fetchMovieData(completion: {(movieData,error) in
            
            if let error = error {
                let message = error.localizedDescription
                self.error = message
            }else{
                self.movieData = movieData
            }
            
        })
        
    }
    
    
    
    
}

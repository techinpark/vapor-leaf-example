//
//  FrontendRouter.swift
//  
//
//  Created by Fernando on 2020/09/16.
//

import Vapor

struct FrontendRouter: RouteCollection {
    
    let controller = FrontendController()
    
    func boot(routes: RoutesBuilder) throws {
        routes.get(use: self.controller.homeView)
    }
    
}

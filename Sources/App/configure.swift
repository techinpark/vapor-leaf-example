import Vapor
import Leaf

// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    
    app.views.use(.leaf)
    app.leaf.cache.isEnabled = app.environment.isRelease
    
    let routers: [RouteCollection] = [
        FrontendRouter()
    ]
    
    for router in routers {
        try router.boot(routes: app.routes)
    }
    
    // register routes
    //try routes(app)
}

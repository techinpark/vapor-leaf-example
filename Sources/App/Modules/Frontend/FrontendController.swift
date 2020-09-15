import Vapor

struct FrontendController {
    
    func homeView(req: Request) throws -> EventLoopFuture<View> {
        
        struct Context: Encodable {
            let title: String
            let header: String
            let message: String
        }
        
        let context = Context(title: "페이지 제목",
                              header: "헤더타이틀 영역",
                              message: "Vapor을 통해 메세지 전달이 가능합니다.")
        
        return req.view.render("home", context)
    }
}

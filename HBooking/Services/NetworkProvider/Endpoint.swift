import UIKit

struct Endpoint {
    var path: String
}

extension Endpoint {
    var url: URL? {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "run.mocky.io"
        components.path = "/v3/" + path
        
        return components.url
    }
}

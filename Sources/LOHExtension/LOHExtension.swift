import Foundation

extension URLComponents {
    /// Parse only query subcomponent.
    ///
    /// If `query` is nil, the result is nil. If `query` is an empty string, it returns `[]`
    ///
    /// - Parameter query: The query component string
    static func parseQuery(_ query: String?) -> [URLQueryItem]? {
        var urlComponents = URLComponents()
        urlComponents.percentEncodedQuery = query
        return urlComponents.queryItems
    }

}

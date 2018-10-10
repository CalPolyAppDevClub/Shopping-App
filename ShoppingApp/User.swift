

import Foundation
class User: Hashable {
    private let username: String
    init(username: String) {
        self.username = username
    }
    
    public func getUsername() -> String {
        return self.username
    }
    
    static func ==(lhs: User, rhs: User) -> Bool {
        return lhs.username == rhs.username
    }
}

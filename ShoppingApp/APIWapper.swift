
import Foundation
class APIWrapper {
    var currentUser: String?
    var userIdentifier: [User:String] = [User:String]()
    func getItems(numItems: Int, callback: (Array<Item>)->()) {

    }
    
    func getLikes(item: Item, callback: (Array<String>) -> ()) {
        
    }
    
    
    //error: String
    func buy(item: Item, callback: (String?)->()) {
        
    }
    
    
    //error: String
    func like(item: Item, callback: (String?)->()) {
        
    }
    
    //error: String
    func dislike(item: Item, callback: (String?) -> ()) {
        
    }
    
    func getFriends(user: User, callback: (Array<User>) -> ()) {
        //gets this from server
        var users = [Dictionary<String,String>]()
        
        for user in users {
            let userId = user["id"]!
            let username = user["username"]!
            self.userIdentifier[User(username: username)] = userId
        }
        
    }
    
    //error: String
    func addFriend(user: User, callback: (String?) -> ()) {
        
    }
    
    //error: String
    func removeFriend(user: User, callback: (String?) -> ()) {
        
    }
    
    
    
}

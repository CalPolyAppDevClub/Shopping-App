
import Foundation
class APIWrapper {
    var currentUser: String?
    var users = [User:String]()
    func getItems(numItems: Int, callback: (Array<Item>)->()) {
        //GET /items {i}
    }
    
    //func getLikes(item: Item, callback: (Array<String>) -> ()) {
        
    //}
    
    
    //error: String
    func buy(item: Item, callback: (String?) -> ()) {
        
    }
    
    
    //error: String
    func like(item: Item, callback: (String?) -> ()) {
        
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
            self.users[User(username: username)] = userId
        }
        
    }
    
    //error: String
    func addFriend(user: User, callback: (String?) -> ()) {
        
    }
    
    //error: String
    func removeFriend(user: User, callback: (String?) -> ()) {
        
    }
    
    func addReview(review: Review, callback: (String?) -> ()) {
        
    }
    
    func getReviews(item: Item, amount: Int, callback: (Array<Review>) -> ()) {
        
    }
}

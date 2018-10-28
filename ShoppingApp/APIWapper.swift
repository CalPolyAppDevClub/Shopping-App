import Foundation
class APIWrapper {
    
    private var person1 = [
    "id" : "514",
    "friends" : [
    "515",
    "516",
    "517",
    "518",
    "519",
    "520",
    "521",
    "522",
    "523",
    "524"
    ],
    "name" : "abcd",
    "likes" : [
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h"
    ],
        ] as [String : Any]
    
    private var person2 = [
    "id" : "515",
    "friends" : [
    "514",
    "516",
    "517",
    "518",
    "519",
    "520",
    "521",
    "522",
    "523",
    "524"
    ],
    "name" : "abdc",
    "likes" : [
    "a"
    ]
        ] as [String : Any]
    
    private var person3 = [
    "id" : "516",
    "friends" : [
    "514",
    "515",
    "517",
    "518"
    ],
    "name" : "acbd",
    "likes" : [
    "a",
    "b",
    "c",
    "d"
    ]
        ] as [String : Any]
    
    private var person4 = [
    "id" : "517",
    "friends" : [
    "514",
    "515",
    "516",
    "518",
    "519",
    "520"
    ],
    "name" : "acdb",
    "likes" : [
    "a",
    "b",
    "c",
    "d",
    "e",
    "f"
    ]
        ] as [String : Any]
    
    private var person5 = [
    "id" : "518",
    "friends" : [
    "514",
    "515",
    "516",
    "517",
    "519"
    ],
    "name" : "adbc",
    "likes" : [
    "a",
    "b",
    "c",
    "d",
    "e"
    ]
        ] as [String : Any]
    
    private var person6 = [
    "id" : "519",
    "friends" : [
    ],
    "name" : "adcb",
    "likes" : [
    "a"
    ]
        ] as [String : Any]
    
    private var person7 = [
    "id" : "520",
    "friends" : [
    "514",
    "515",
    "516"
    ],
    "name" : "bacd",
    "likes" : [
    "a",
    "b",
    "c",
    "d"
    ]
        ] as [String : Any]

    var currentUser: String?
    var users = [User:String]()
    //var items = [Item:String]()

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
            let name = user["name"]!
            self.users[User(id: userId, username: username, name: name)] = userId
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

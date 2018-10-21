import Foundation
import UIKit

class User: Hashable {
    private let id: String
    private var username: String
    private var name: String
    private var friends: [String : User]
    private var likes: [String : Item]
    private var profilePicture: UIImage?

    public var hashValue: Int {
        return username.hashValue
    }

    init(id: String, username: String, name: String) {
        self.id = id
        self.username = username
        self.name = name
        self.friends = [String : User]()
        self.likes = [String : Item]()
    }

    func getId() -> String {
        return self.id
    }
    
    func getUsername() -> String {
        return self.username
    }

    func setUsername(username: String) -> String {
        self.username = username
        return self.username
    }

    func getName() -> String {
        return self.name
    }

    func setName(name: String) -> String {
        self.name = name
        return self.name
    }

    func getFriends() -> [String : User] {
        return self.friends
    }

    func setFriends(friends: [String : User]) -> [String : User] {
        self.friends = friends
        return self.friends
    }

    func getLikes() -> [String : Item] {
        return self.likes
    }

    func setLikes(likes: [String : Item]) -> [String : Item] {
        self.likes = likes
        return self.likes
    }
    
    static func ==(lhs: User, rhs: User) -> Bool {
        return lhs.username == rhs.username
    }
   
    func hash(into hasher: inout Hasher) {
        hasher.combine(username)
   }

   func addFriend(friend: User) -> [String : User] {
       self.friends[friend.getUsername()] = friend
       return self.friends
   }

    func removeFriend(friend: User) -> [String : User]{
        self.friends.removeValue(forKey: friend.username)
        return self.friends
    }
    
    func likeItem(item: Item) -> [String : Item] {
        self.likes[item.getId()] = item
        return self.likes
    }
    
    func unlikeItem(item: Item) -> [String : Item] {
        self.likes.removeValue(forKey: item.getId())
        return self.likes
    }

    func getProfilePicture() -> UIImage? {
        return self.profilePicture
    }
    
    func setProfilePicture(image: UIImage?) -> UIImage? {
        self.profilePicture = image
        return self.profilePicture
    }

}

//
//  buzzEntry.swift
//  ShoppingApp
//
//  Created by Garrett Wayne on 10/14/18.
//  Copyright © 2018 App Dev Club. All rights reserved.
//

import Foundation

class BuzzEntry {
    private var item: Item
    private var user: User
    private var timeStamp: Date
    private var buzz: String
    private var rating: Double?
    private var likes: Int
    private var id: String
    
    init(item: Item, user: User, buzz: String, rating: Double?) {
        self.item = item
        self.user = user
        self.buzz = buzz
        self.rating = rating
        self.likes = 0
        self.timeStamp = Date()
        self.id = item.getId() + user.getUsername() + timeStamp.description
    }
    
    func getItem() -> Item {
        return self.item
    }
    
    func setItem(item: Item) -> Item {
        self.item = item
        return self.item
    }
    
    func getUser() -> User {
        return self.user
    }
    
    func setUser(user: User) -> User {
        self.user = user
        return self.user
    }
    
    func getTimeStamp() -> Date {
        return self.timeStamp
    }
    
    func setTimeStamp(timeStamp: Date) -> Date {
        self.timeStamp = timeStamp
        return self.timeStamp
    }
    
    func getBuzz() -> String {
        return self.buzz
    }
    
    func setBuzz(buzz: String) -> String {
        self.buzz = buzz
        return self.buzz
    }
    
    func getRating() -> Double? {
        return self.rating
    }
    
    func setRating(rating: Double?) -> Double? {
        self.rating = rating
        return self.rating
    }
    
    func getLikes() -> Int {
        return self.likes
    }
    
    func setLikes(likes: Int) -> Int {
        self.likes = likes
        return self.likes
    }
    
    func addLike() -> Int {
        self.likes = self.likes + 1
        return self.likes
    }
    
    func removeLike() -> Int {
        self.likes = self.likes - 1
        return self.likes
    }
    
}

#!/usr/bin/python3.7
import random
from perm_lex import perm_gen_lex
"""
{
    "id" : "2323",
    "friends" : [
        "2324",
        "1212",
        "23"
    ],
    "name" : "Jared J",
    "likes" : [
        "dsjsdsds",
        "shwhdh"
    ]
}
"""

def rev_factorial(n, num = 1, total = 1):
    if total >= n:
        return num - 1
    else:
        return rev_factorial(n, num + 1, total * num)
    

def make_json_array(name, l):
    start = "\t\"{}\" : [".format(name)
    data = ["\n\t\t\"{}\",".format(x) for x in l]
    data = "".join(data)
    data = data[:len(data) - 1]
    return start + data + "\n\t]"

#print(make_json_array("likes", ["a", "b", "c"]))

def makeUser(start, id, users, names):
    likes = ["a", "b", "c", "d", "e", "f", "g", "h"]
    num_friends = random.randint(0, len(users) - 1)
    name = names[int(id) - start]
    friends = users[:num_friends]
    if str(id) in friends:
        friends.remove(str(id))
        friends.append(users[num_friends])
    friends = [str(x) for x in friends]
    num_likes = random.randint(0, len(likes))
    like_l = likes[:num_likes]
    construction = "{\n\t" + "\"id\" : \"{}\",\n{},\n\t\"name\" : \"{}\",\n{}\n".format(
        id, make_json_array("friends", friends), name, make_json_array("likes",like_l)) + "}"
    return construction


def makeDummies(num):
    alpha = "abcdefghijklmnopqrstuvwxyz"
    names = perm_gen_lex(alpha[:rev_factorial(num)])
    with open("jsondummies.json", 'w') as f:
        ids = list(map(lambda x: str(x), list(range(514, 515 + num))))
        totalStr = ''
        for i, id in enumerate(ids):
            totalStr += makeUser(514, id, ids, names) + "\n\n"
        #print(totalStr)
        f.write(totalStr)
        f.write("Hello")
    print('Done')

makeDummies(10)

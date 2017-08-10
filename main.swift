import Foundation

class Friend : Comparable {
	let name : String
	let age : Int

	init(name : String, age: Int) {
		self.name = name
		self.age = age
	}
}
func < (lhs: Friend, rhs: Friend) -> Bool {
	return lhs.age < rhs.age 
} 
func > (lhs: Friend, rhs: Friend) -> Bool {
	return lhs.age > rhs.age
}
func == (lhs: Friend, rhs: Friend) -> Bool {
	return lhs.age == rhs.age
}
func === (lhs: Friend, rhs: Friend) -> Bool {
	var returnValue = false
	if (lhs.name == rhs.name) && (lhs.age == rhs.age)
	{
		returnValue = true
	}
	return returnValue
}

// Declare a function that can take variadic parameters
func printOutFriendNames(friends: Friend...)  {
	for friend in friends {
		print("\(friend.name) is \(friend.age) years old")
	}
}

var friend1 = Friend(name: "Nishant", age: 24)
var friend2 = Friend(name: "Monish", age: 22)

printOutFriendNames(friends: friend1, friend2)

if friend1 < friend2 {
	print("\(friend1.name) is younger than \(friend2.name)")
} else if friend1 > friend2 {
	print("\(friend1.name) is older than \(friend2.name)")
} else if friend1 === friend2 {
	print("\(friend1.name) and \(friend2.name) are the same person")
} else if friend1 == friend2 {
	print("\(friend1.name) and \(friend2.name) are the same age")
}

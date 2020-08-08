import Foundation
import FoundationNetworking

doSomething()

print("Hello there")
let aDictionary = ["aKey": "aValue",
"anotherKey" : "value 2"]
print("This is the dictionary: \(aDictionary)")

let aSet = Set(arrayLiteral: "string1", "string2")
print("This is the set: \(aSet)")


let aQueue = DispatchQueue(label: "myQueue")
aQueue.sync{ print("This is a block on the main queue, done asynchronously.")  }


if let aURL = URL(string: "www.apple.com")
{
    print("This is a URL: \(aURL)")
}
else 
{
    print("Could not create URL")
}

let urlSession = URLSession(configuration: .default)
print("This is a URLSession: \(urlSession)")

let anInt8: UInt8 = 0x8F
print("the int: \(String(format: "%02X", anInt8 ))")

let aData = Data()
print("The data: \(aData)")

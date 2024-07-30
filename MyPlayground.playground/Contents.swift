import UIKit

@propertyWrapper
struct Capitalized {
    private var value: String
    
    var wrappedValue: String {
        get{
            value
        }
        set{
            value = newValue.capitalized
        }
    }
    
    init(wrappedValue: String) {
        self.value = wrappedValue.capitalized
    }
}

@propertyWrapper
struct Capitalized2 {
    var wrappedValue: String {
        didSet {
            wrappedValue = wrappedValue.capitalized
        }
    }
}

struct Book {
    @Capitalized var name: String
    @Capitalized2 var add: String
}

var book = Book(name: "fx studio", add: "hello baby")

print(book.name)
book.add.append(" jr")
print(book.add)

@propertyWrapper
struct MyDouble<T: Numeric> {
    private var value: T
    
    var wrappedValue: T {
        set{
            value = newValue
        }
        get{
            value*2
        }
    }
    
    init(wrappedValue: T) {
        self.value = wrappedValue
    }
}

class SomeClass {
    @MyDouble var count: Float
    @MyDouble var total: Int = 10
    
    init(count: Float) {
        self.count = count
    }
}

var obj = SomeClass(count: 1)
print(obj.count)
print(obj.total)

obj.count = 19
print(obj.count)


//MARK: projectedValue


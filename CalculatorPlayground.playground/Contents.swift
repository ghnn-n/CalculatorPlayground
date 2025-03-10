class Calculator {
    func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    func subtract(_ a: Int, _ b: Int) -> Int {
        return a - b
    }
    
    func multiply(_ a: Int, _ b: Int) -> Int {
        return a * b
    }
    
    func divide(_ a: Int, _ b: Int) -> Int {
        return a / b
    }
    
    func remainder(_ a: Int, _ b: Int) -> Int {
        return a % b
    }
}

var question = Calculator()

print(question.add(20, 49))
print(question.subtract(230, 410))
print(question.multiply(23, 132))
print(question.divide(125, 5))
print(question.remainder(53, 3))

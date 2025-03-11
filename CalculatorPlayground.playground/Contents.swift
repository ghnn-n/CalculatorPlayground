class AddOperation {
    func result(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber + secondNumber
    }
}

class SubtractOperation {
    func result(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber - secondNumber
    }
}

class MultiplyOperation {
    func result(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber * secondNumber
    }
}

class DivideOperation {
    func result(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber / secondNumber
    }
}

class Calculator {
    let add = AddOperation()
    let subtract = SubtractOperation()
    let multiply = MultiplyOperation()
    let divide = DivideOperation()
    
    func remainder(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber % secondNumber
    }
}

var question = Calculator()

print(question.add.result(32, 32))
print(question.subtract.result(239, 235))
print(question.multiply.result(23, 53))
print(question.divide.result(234, 34))

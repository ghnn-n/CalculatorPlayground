protocol AbstractOperation {
    func result(_ firstNumber: Int, _ secondNumber: Int) -> Int
}

class AddOperation: AbstractOperation {
    func result(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber + secondNumber
    }
}

class SubtractOperation: AbstractOperation {
    func result(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber - secondNumber
    }
}

class MultiplyOperation: AbstractOperation {
    func result(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber * secondNumber
    }
}

class DivideOperation: AbstractOperation {
    func result(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber / secondNumber
    }
}

class RemainderOperation: AbstractOperation {
    func result(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber % secondNumber
    }
}

class Calculator {
    var operate: AbstractOperation
    
    init(operate: AbstractOperation) {
        self.operate = operate
    }
    
    func calculating(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        operate.result(firstNumber, secondNumber)
    }
}

let add = AddOperation()
let subtract = SubtractOperation()
let multiply = MultiplyOperation()
let divide = DivideOperation()
let remainder = RemainderOperation()

var question = Calculator(operate: add)
print(question.calculating(10, 20))

question.operate = subtract
print(question.calculating(10, 20))

question.operate = multiply
print(question.calculating(10, 20))

question.operate = divide
print(question.calculating(10, 20))

question.operate = remainder
print(question.calculating(10, 20))

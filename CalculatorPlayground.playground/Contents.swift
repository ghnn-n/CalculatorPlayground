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
    private var operate: AbstractOperation
    
    init(operate: AbstractOperation) {
        self.operate = operate
    }
    
    func changeOperate(_ newOperate: AbstractOperation) {
        self.operate = newOperate
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

question.changeOperate(subtract)
print(question.calculating(10, 20))

question.changeOperate(multiply)
print(question.calculating(10, 20))

question.changeOperate(divide)
print(question.calculating(10, 20))

question.changeOperate(remainder)
print(question.calculating(10, 20))

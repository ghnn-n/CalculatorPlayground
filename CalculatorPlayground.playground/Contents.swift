// 추상화된 프로토콜 생성
protocol AbstractOperation {
    func result(_ firstNumber: Int, _ secondNumber: Int) -> Int
}

// 각 클래스들에 프로토콜 채택
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
        if secondNumber != 0 {
            return firstNumber / secondNumber
        } else {
            print("0으로 나눌 수 없습니다. ")
            return Int.min
        }
    }
}

class RemainderOperation: AbstractOperation {
    func result(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber % secondNumber
    }
}

class Calculator {
    private var operate: AbstractOperation  // 프로퍼티에 프로토콜 채택
    
    init(operate: AbstractOperation) {  // 초기화
        self.operate = operate
    }
    
    // 프로퍼티의 operator를 변경하는 메서드
    func changeOperate(_ newOperate: AbstractOperation) {
        self.operate = newOperate
    }
    
    // 각각 operator의 해당하는 계산을 해줄 메서드
    func calculating(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        operate.result(firstNumber, secondNumber)
    }
}

// 클래스들의 인스턴스 생성
let add = AddOperation()
let subtract = SubtractOperation()
let multiply = MultiplyOperation()
let divide = DivideOperation()
let remainder = RemainderOperation()

// 메인 클래스의 인스턴스 생성 및 구동
var question = Calculator(operate: add)
print(question.calculating(10, 20))

// 다른 연산을 사용하려면 changeOperate 메서드를 사용해야 함
question.changeOperate(subtract)
print(question.calculating(10, 20))

question.changeOperate(multiply)
print(question.calculating(10, 20))

question.changeOperate(divide)
print(question.calculating(10, 20))

question.changeOperate(remainder)
print(question.calculating(10, 20))

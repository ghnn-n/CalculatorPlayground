import Foundation

// 추상화된 프로토콜 생성
public protocol AbstractOperation {
    func result(_ firstNumber: Double, _ secondNumber: Double) -> Double
}

// 각 클래스들에 프로토콜 채택
public class AddOperation: AbstractOperation {
    public init() {}
    public func result(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        firstNumber + secondNumber
    }
}

public class SubtractOperation: AbstractOperation {
    public init() {}
    public func result(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        firstNumber - secondNumber
    }
}

public class MultiplyOperation: AbstractOperation {
    public init() {}
    public func result(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        firstNumber * secondNumber
    }
}

public class DivideOperation: AbstractOperation {
    public init() {}
    public func result(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        if secondNumber != 0 {
            return firstNumber / secondNumber
        } else {
            fatalError("0으로 나눌 수 없습니다. ")
        }
    }
}

public class ModuloOperation: AbstractOperation {
    public init() {}
    public func result(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        if secondNumber == 0 {
            fatalError("0으로 나눌 수 없습니다. ")
        } else if (firstNumber - round(firstNumber) != 0) ||
                    (secondNumber - round(secondNumber) != 0) {
            fatalError("나머지 연산은 정수만 입력 가능합니다. ")
        } else {
            return firstNumber.remainder(dividingBy: secondNumber)
        }
    }
}

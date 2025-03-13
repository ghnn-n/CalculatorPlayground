// 추상화된 프로토콜 생성
public protocol AbstractOperation {
    func result(_ firstNumber: Int, _ secondNumber: Int) -> Int
}

// 각 클래스들에 프로토콜 채택
public class AddOperation: AbstractOperation {
    public init() {}
    public func result(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber + secondNumber
    }
}

public class SubtractOperation: AbstractOperation {
    public init() {}
    public func result(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber - secondNumber
    }
}

public class MultiplyOperation: AbstractOperation {
    public init() {}
    public func result(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber * secondNumber
    }
}

public class DivideOperation: AbstractOperation {
    public init() {}
    public func result(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        if secondNumber != 0 {
            return firstNumber / secondNumber
        } else {
            print("0으로 나눌 수 없습니다. ")
            return Int.min
        }
    }
}

public class RemainderOperation: AbstractOperation {
    public init() {}
    public func result(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        if secondNumber != 0 {
            return firstNumber % secondNumber
        } else {
            print("0으로 나눌 수 없습니다. ")
            return Int.min
        }
    }
}

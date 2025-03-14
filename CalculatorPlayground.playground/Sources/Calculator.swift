//
//  Calculator.swift
//  
//
//  Created by 최규현 on 3/13/25.
//

public class Calculator {
    public private(set) var operate: AbstractOperation  // 프로퍼티에 프로토콜 채택
    
    public init(operate: AbstractOperation) {  // 초기화
        self.operate = operate
    }
    
    // 프로퍼티의 operator를 변경하는 메서드
    public func changeOperate(_ newOperate: AbstractOperation) {
        self.operate = newOperate
    }
    
    // 각각 operator의 해당하는 계산을 해줄 메서드
    public func calculating(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        operate.result(firstNumber, secondNumber)
    }
}

enum OperationType {
    case add
    case sub
    case mul
    case div
    case mod
}

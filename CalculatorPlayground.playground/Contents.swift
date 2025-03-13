import CalculatorPlayground_Sources

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

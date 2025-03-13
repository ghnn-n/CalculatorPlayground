# Calculator
AbstractOperation Protocol을 이용한 계산기 입니다. 

각각의 클래스들이 필요한 계산 기능을 AbstractOperation Protocol을 채택해 구현했고

Calculator 클래스에서 AbstractOperation Protocol에 접근해서 각각 클래스들을 이용할 수 있습니다. 

# 사용법
question.calculating(Int, Int) 의 방법으로 사용할 수 있고

question.changeOperate(인스턴스명)으로 필요한 계산 기능으로 전환할 수 있습니다. 

class AbstractOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        fatalError()
    }
}
class AddOperation: AbstractOperation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber + secondNumber
    }
}
class SubstractOperation: AbstractOperation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber - secondNumber
    }
}
class MultiplyOperation: AbstractOperation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber * secondNumber
    }
}
class DivideOperation: AbstractOperation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber / secondNumber
    }
}
class RemainderOperation: AbstractOperation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return Double(Int(firstNumber) % Int(secondNumber))
    }
}
class Calculator {
    let abstractOperation: AbstractOperation
    let addOperation = AddOperation()
    let substractOperation = SubstractOperation()
    let multiplyOperation = MultiplyOperation()
    let divideOperation = DivideOperation()
    let remainderOperation = RemainderOperation()
    
    init(abstractOperation: AbstractOperation) {
        self.abstractOperation = abstractOperation
    }
    
    func calculate(op: String, firstNumber: Double, secondNumber: Double) -> Double {
        switch op {
        case "+" :
            return addOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "-" :
            return substractOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "*" :
            return multiplyOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "/" :
            return divideOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "%" :
            return remainderOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        default:
            return 0
        }
    }
}
let abstractOperation = AbstractOperation()
let calculator = Calculator(abstractOperation: abstractOperation)


let addResult = calculator.calculate(op: "+", firstNumber: 5, secondNumber: 2)

let substractResult = calculator.calculate(op: "-", firstNumber: 2, secondNumber: 2)

let multiplyResult = calculator.calculate(op: "*", firstNumber: 6, secondNumber: 2)

let divideResult = calculator.calculate(op: "/", firstNumber: 8, secondNumber: 2)

let remaindResult = calculator.calculate(op: "%", firstNumber: 9, secondNumber: 2)

print("addResult: \(addResult)")
print("substractResult: \(substractResult)")
print("multiplyResult: \(multiplyResult)")
print("divideResult: \(divideResult)")
print("remaindResult: \(remaindResult)")

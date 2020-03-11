//
//  ViewController.swift
//  Calculator_TDD
//
//  Created by Toru Nakandakari on 2020/02/29.
//  Copyright © 2020 仲村渠亨. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numLabel: UILabel!
    @IBOutlet weak var additionButton: UIButton!
    @IBOutlet weak var subtractionButton: UIButton!
    @IBOutlet weak var multiplicationButton: UIButton!
    @IBOutlet weak var divisionButton: UIButton!
    
    let operationErrorStr = "エラー"
    
    // 入力中の数値が小数かどうか
    var hasDecimalPointInNumLabel: Bool {
        return numLabel.text?.contains(".") ?? false
    }
    
    // 入力した数字をラベルの末尾に追加するかどうかのフラグ
    var canAppendDigit = true
    
    // 最後に押された四則演算記号
    var lastPushedOperation: String = "None"
    
    var firstInputtedNum: NSDecimalNumber = NSDecimalNumber()
    var secondInputtedNum: NSDecimalNumber? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /* 数字 */
    @IBAction func pushedOne(_ sender: Any) {
        onPushedOne()
    }
    @IBAction func pushedTwo(_ sender: Any) {
        onPushedTwo()
    }
    @IBAction func pushedThree(_ sender: Any) {
        onPushedThree()
    }
    @IBAction func pushedFour(_ sender: Any) {
        onPushedFour()
    }
    @IBAction func pushedFive(_ sender: Any) {
        onPushedFive()
    }
    @IBAction func pushedSix(_ sender: Any) {
        onPushedSix()
    }
    @IBAction func pushedSeven(_ sender: Any) {
        onPushedSeven()
    }
    @IBAction func pushedEight(_ sender: Any) {
        onPushedEight()
    }
    @IBAction func pushedNine(_ sender: Any) {
        onPushedNine()
    }
    @IBAction func pushedZero(_ sender: Any) {
        onPushedZero()
    }
    
    /* 小数点(.) */
    @IBAction func pushedDot(_ sender: Any) {
        onPushedDot()
    }
    
    /* イコールと四則演算 */
    @IBAction func pushedEqual(_ sender: Any) {
        onPushedEqual()
    }
    @IBAction func pushedAddition(_ sender: Any) {
        onPushedAddition()
    }
    @IBAction func pushedSubtraction(_ sender: Any) {
        onPushedSubtraction()
    }
    @IBAction func pushedMultiplication(_ sender: Any) {
        onPushedMultiplication()
    }
    @IBAction func pushedDivision(_ sender: Any) {
        onPushedDivision()
    }
    
    /* その他 (AC, ±, %) */
    @IBAction func pushedAllClear(_ sender: Any) {
        onPushedAllClear()
    }
    @IBAction func pushedPlusMinus(_ sender: Any) {
        onPushedPlusMinus()
    }
    @IBAction func pushedPercent(_ sender: Any) {
        onPushedPercent()
    }
    
    /* OnPushed アクションメソッド */
    func onPushedOne() {
        appendDigit(str: "1")
    }
    func onPushedTwo() {
        appendDigit(str: "2")
    }
    func onPushedThree() {
        appendDigit(str: "3")
    }
    func onPushedFour() {
        appendDigit(str: "4")
    }
    func onPushedFive() {
        appendDigit(str: "5")
    }
    func onPushedSix() {
        appendDigit(str: "6")
    }
    func onPushedSeven() {
        appendDigit(str: "7")
    }
    func onPushedEight() {
        appendDigit(str: "8")
    }
    func onPushedNine() {
        appendDigit(str: "9")
    }
    func onPushedZero() {
        appendDigit(str: "0")
    }

    func appendDigit(str: String) {
        if canAppendDigit {
            RemoveZeroIfOnly()
            self.numLabel.text?.append(str)
            return
        }

        // 四則演算のボタンの選択状態を解除する
        unSelectedNumOperationsButton()

        // 新しく数値を入力し直す
        self.numLabel.text? = str
        
        canAppendDigit = true
    }
    
    // .(小数点)を押したときの挙動
    func onPushedDot() {
        // すでに小数点が入っている場合
        if hasDecimalPointInNumLabel {
            return
        }
        if canAppendDigit {
            self.numLabel.text?.append(".")
            return
        }
        self.numLabel.text?.append("0.")
        unSelectedNumOperationsButton()
        canAppendDigit = true
    }
    
    /* イコール のアクションメソッド */
    func onPushedEqual() {
        // "エラー"と表示されているときの処理
        if self.firstInputtedNum.doubleValue.isNaN {
            exceptionOperation()
            return
        }
        if let secondInputtedNum = self.secondInputtedNum {
            if secondInputtedNum.doubleValue.isNaN {
                exceptionOperation()
                return
            }
        }
        
        var result = NSDecimalNumber()
        var n1 = NSDecimalNumber()
        var n2 = NSDecimalNumber()
        switch self.lastPushedOperation {
        case "+":
            if let secondInputtedNum = self.secondInputtedNum {
                n1 = secondInputtedNum
                n2 = NSDecimalNumber(string: self.numLabel.text)
            } else {
                n1 = self.firstInputtedNum
                n2 = NSDecimalNumber(string: self.numLabel.text)
            }
            result = n1.adding(n2)
            break
        case "-":
            if let secondInputtedNum = self.secondInputtedNum {
                n1 = NSDecimalNumber(string: self.numLabel.text)
                n2 = secondInputtedNum
                result = n1.subtracting(n2)
            } else {
                n1 = self.firstInputtedNum
                n2 = NSDecimalNumber(string: self.numLabel.text)
                result = n1.subtracting(n2)
            }
            break
        case "*":
            if let secondInputtedNum = self.secondInputtedNum {
                n1 = NSDecimalNumber(string: self.numLabel.text)
                n2 = secondInputtedNum
                result = n1.multiplying(by: n2)
            } else {
                n1 = self.firstInputtedNum
                n2 = NSDecimalNumber(string: self.numLabel.text)
                result = n1.multiplying(by: n2)
            }
            break
        case "/":
            if let secondInputtedNum = self.secondInputtedNum {
                if secondInputtedNum.doubleValue == 0.0 {
                    exceptionOperation()
                    return
                } else {
                    n1 = NSDecimalNumber(string: self.numLabel.text)
                    n2 = secondInputtedNum
                    result = n1.dividing(by: n2)
                }
            } else {
                let inputtedNumber = NSDecimalNumber(string: self.numLabel.text)
                if inputtedNumber.doubleValue == 0 {
                    self.secondInputtedNum = inputtedNumber
                    exceptionOperation()
                    return
                } else {
                    n1 = self.firstInputtedNum
                    n2 = NSDecimalNumber(string: self.numLabel.text)
                    result = n1.dividing(by: n2)
                }
            }
            break
        default:
            break
        }

        /*
         TODO: コメント内容を精査
         1 + 2 = = -> 5 を対応するため
         この処理を入れないと 1 + 2 = = -> 4 になり、2回目に入力した「2」という数字を保持しておく必要がある
         */
        if self.secondInputtedNum == nil {
            self.secondInputtedNum = NSDecimalNumber(string: self.numLabel.text)
        }

        // 小数点部分が全て0なら整数として扱う
        if compareNealyInteger(num: result.doubleValue) {
            self.numLabel.text = String(Int(result.doubleValue))
        } else {
            self.numLabel.text = String(trim(_text: result.stringValue))
        }

        // 四則演算のボタンの選択状態を解除する
        unSelectedNumOperationsButton()
        
        canAppendDigit = false
    }
    
    func exceptionOperation() {
        self.numLabel.text = operationErrorStr
        unSelectedNumOperationsButton()
        canAppendDigit = false
    }
    
    // 小数部分が全て0かどうか返す
    func compareNealyInteger(num: Double) -> Bool {
        return abs(num.truncatingRemainder(dividingBy: 1.0)).isLess(than: .ulpOfOne)
    }
    
    // 小数点以下の桁数をトリムする
    func trim(_text: String, digit: Int = 8) -> String {
        var text = _text
        if text.count <= digit {
            return text
        }
        if !text.contains(".") {
            return text
        }
        let removeFirstIndex = text.index(text.firstIndex(of: ".")!, offsetBy: digit)
        text.removeSubrange(removeFirstIndex..<text.endIndex)
        return text
    }
    
    /* 四則演算 のアクションメソッド */
    func onPushedAddition() {
        onPushedNumOperationButtons(operationButton: self.additionButton, operation: "+")
    }
    func onPushedSubtraction() {
        onPushedNumOperationButtons(operationButton: self.subtractionButton, operation: "-")
    }
    func onPushedMultiplication() {
        onPushedNumOperationButtons(operationButton: self.multiplicationButton, operation: "*")
    }
    func onPushedDivision() {
        onPushedNumOperationButtons(operationButton: self.divisionButton, operation: "/")
    }

    func onPushedNumOperationButtons(operationButton: UIButton, operation: String) {
        if operationButton.isSelected {
            return
        }
        self.unSelectedNumOperationsButton()
        operationButton.isSelected = true
        self.secondInputtedNum = nil
        self.canAppendDigit = false
        self.lastPushedOperation = operation
        saveInputingNumber()
    }

    func saveInputingNumber() {
        self.firstInputtedNum = NSDecimalNumber(string: self.numLabel.text)
    }
    
    /* その他(AC, ±, %) のアクションメソッド */
    func onPushedAllClear() {
        self.numLabel.text? = "0"
        self.lastPushedOperation = "None"
        self.firstInputtedNum = 0.0
        self.secondInputtedNum = nil
        self.canAppendDigit = true
        self.unSelectedNumOperationsButton()
    }
    func onPushedPercent() {
        if self.numLabel.text == "0" {
            return
        }
        guard let inputtingText = numLabel.text else {
            return
        }
        guard let inputtingNumber = Double(inputtingText) else {
            return
        }
        numLabel.text? = String(inputtingNumber / 100.0)
    }
    func onPushedPlusMinus() {
        guard var inputtingText = numLabel.text else {
            return
        }
        if inputtingText.first == "-" {
            inputtingText.remove(at: inputtingText.startIndex)
        } else {
            inputtingText.insert("-", at: inputtingText.startIndex)
        }
        self.numLabel.text = inputtingText
    }

    func RemoveZeroIfOnly() {
        if hasDecimalPointInNumLabel {
            return
        }
        
        guard var text = self.numLabel.text else {
            return
        }
        
        if !text.contains("0") {
            return
        }
        
        // 先頭が "0" の場合は "0" を消す
        if text.first == "0" {
            self.numLabel.text?.remove(at: text.startIndex)
            return
        }
        
        // 先頭が "-" でその次が "0" の場合は "0" を消す
        let zeroIndex = text.index(text.startIndex, offsetBy: 1)
        if text.removeFirst() == "-" && text.removeFirst() == "0" {
            self.numLabel.text?.remove(at: zeroIndex)
        }
    }
    
    func unSelectedNumOperationsButton() {
        if additionButton.isSelected {
            additionButton.isSelected = false
        }
        if subtractionButton.isSelected {
            subtractionButton.isSelected = false
        }
        if multiplicationButton.isSelected {
            multiplicationButton.isSelected = false
        }
        if divisionButton.isSelected {
            divisionButton.isSelected = false
        }
    }

    func convertLabelToDouble(str: String?) -> Double {
        guard let text = self.numLabel.text else {
            return 0.0
        }
        guard let num = Double(text) else {
            return 0.0
        }
        return num
    }

}

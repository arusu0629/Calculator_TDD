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
    }
    
    /* イコールと四則演算 */
    @IBAction func pushedEqual(_ sender: Any) {
    }
    @IBAction func pushedAddition(_ sender: Any) {
    }
    @IBAction func pushedSubtraction(_ sender: Any) {
    }
    @IBAction func pushedMultiplication(_ sender: Any) {
    }
    @IBAction func pushedDivision(_ sender: Any) {
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
        RemoveZeroIfOnly()
        self.numLabel.text?.append("1")
    }
    func onPushedTwo() {
        RemoveZeroIfOnly()
        self.numLabel.text?.append("2")
    }
    func onPushedThree() {
        RemoveZeroIfOnly()
        self.numLabel.text?.append("3")
    }
    func onPushedFour() {
        RemoveZeroIfOnly()
        self.numLabel.text?.append("4")
    }
    func onPushedFive() {
        RemoveZeroIfOnly()
        self.numLabel.text?.append("5")
    }
    func onPushedSix() {
        RemoveZeroIfOnly()
        self.numLabel.text?.append("6")
    }
    func onPushedSeven() {
        RemoveZeroIfOnly()
        self.numLabel.text?.append("7")
    }
    func onPushedEight() {
        RemoveZeroIfOnly()
        self.numLabel.text?.append("8")
    }
    func onPushedNine() {
        RemoveZeroIfOnly()
        self.numLabel.text?.append("9")
    }
    func onPushedZero() {
        RemoveZeroIfOnly()
        self.numLabel.text?.append("0")
    }
    
    /* その他(AC, ±, %) のアクションメソッド */
    func onPushedAllClear() {
        self.numLabel.text? = "0"
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
}

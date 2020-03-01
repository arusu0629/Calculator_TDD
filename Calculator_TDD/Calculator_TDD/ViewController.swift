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
    }
    @IBAction func pushedPercent(_ sender: Any) {
    }
    
    /* OnPushed アクションメソッド */
    func onPushedOne() {
        RemoveTextIfZeroOnly()
        self.numLabel.text?.append("1")
    }
    func onPushedTwo() {
        RemoveTextIfZeroOnly()
        self.numLabel.text?.append("2")
    }
    func onPushedThree() {
        RemoveTextIfZeroOnly()
        self.numLabel.text?.append("3")
    }
    func onPushedFour() {
        RemoveTextIfZeroOnly()
        self.numLabel.text?.append("4")
    }
    func onPushedFive() {
        RemoveTextIfZeroOnly()
        self.numLabel.text?.append("5")
    }
    func onPushedSix() {
        RemoveTextIfZeroOnly()
        self.numLabel.text?.append("6")
    }
    func onPushedSeven() {
        RemoveTextIfZeroOnly()
        self.numLabel.text?.append("7")
    }
    func onPushedEight() {
        RemoveTextIfZeroOnly()
        self.numLabel.text?.append("8")
    }
    func onPushedNine() {
        RemoveTextIfZeroOnly()
        self.numLabel.text?.append("9")
    }
    func onPushedZero() {
        RemoveTextIfZeroOnly()
        self.numLabel.text?.append("0")
    }
    
    /* その他(AC, ±, %) のアクションメソッド */
    func onPushedAllClear() {
        self.numLabel.text? = "0"
    }

    func RemoveTextIfZeroOnly() {
        guard let text = self.numLabel.text else {
            return
        }
        if text == "0" {
            self.numLabel.text? = ""
        }
    }
}

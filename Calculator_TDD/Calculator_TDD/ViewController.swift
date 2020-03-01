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
    @IBAction func pushedZero(_ sender: Any) {
    }
    @IBAction func pushedOne(_ sender: Any) {
        onPushedOne()
    }
    @IBAction func pushedTwo(_ sender: Any) {
    }
    @IBAction func pushedThree(_ sender: Any) {
    }
    @IBAction func pushedFour(_ sender: Any) {
    }
    @IBAction func pushedFive(_ sender: Any) {
    }
    @IBAction func pushedSix(_ sender: Any) {
    }
    @IBAction func pushedSeven(_ sender: Any) {
    }
    @IBAction func pushedEight(_ sender: Any) {
    }
    @IBAction func pushedNine(_ sender: Any) {
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

    func RemoveTextIfZeroOnly() {
        guard let text = self.numLabel.text else {
            return
        }
        if text == "0" {
            self.numLabel.text? = ""
        }
    }
}

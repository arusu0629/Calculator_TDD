//
//  Calculator_TDDTests.swift
//  Calculator_TDDTests
//
//  Created by Toru Nakandakari on 2020/03/01.
//  Copyright © 2020 仲村渠亨. All rights reserved.
//

import XCTest
@testable import Calculator_TDD

class Calculator_TDDTests: XCTestCase {
    
    var viewController: ViewController!

    override func setUp() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        self.viewController = (storyboard.instantiateInitialViewController() as! ViewController)

        /*
         IBOutletのUIオブジェクト(=viewController.numLabel)を
         インスタンス化させるためにviewDidLoadを呼んであげるために必要な処理
        */
        self.viewController.beginAppearanceTransition(true, animated: false)
        self.viewController.endAppearanceTransition()
    }
    
    /* 数字 */
    func testOnPushedOne() {
        viewController.onPushedOne()
        var result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "1", "One OnPushedOne is incorrect")
        
        viewController.onPushedOne()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "11", "Double OnPushedOne is incorrect")
        
        viewController.onPushedOne()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "111", "Triple OnPushedOne is incorrect")
        
        viewController.onPushedTwo()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "1112", "Triple OnPushedOne and One OnPushedTwo are incorrect")
    }
    func testOnPushedTwo() {
        viewController.onPushedTwo()
        var result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "2", "One OnPushedTwo is incorrect")
        
        viewController.onPushedTwo()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "22", "Double OnPushedTwo is incorrect")
        
        viewController.onPushedTwo()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "222", "Triple OnPushedTwo is incorrect")
        
        viewController.onPushedOne()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "2221", "Triple OnPushedTwo and One OnPushedOne are incorrect")
    }
    func testOnPushedThree() {
        viewController.onPushedThree()
        var result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "3", "One OnPushedThree is incorrect")
        
        viewController.onPushedThree()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "33", "Double OnPushedThree is incorrect")
        
        viewController.onPushedThree()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "333", "Triple OnPushedThree is incorrect")
        
        viewController.onPushedTwo()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "3332", "Triple OnPushedThree and One OnPushedTwo are incorrect")
    }
    func testOnPushedFour() {
        viewController.onPushedFour()
        var result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "4", "One OnPushedFour is incorrect")
        
        viewController.onPushedFour()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "44", "Double OnPushedFour is incorrect")
        
        viewController.onPushedFour()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "444", "Triple OnPushedFour is incorrect")
        
        viewController.onPushedThree()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "4443", "Triple OnPushedFour and One OnPushedThere are incorrect")
    }
    func testOnPushedFiveTest() {
        viewController.onPushedFive()
        var result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "5", "One OnPushedFive is incorrect")
        
        viewController.onPushedFive()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "55", "Double OnPushedFive is incorrect")
        
        viewController.onPushedFive()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "555", "Triple OnPushedFive is incorrect")
        
        viewController.onPushedFour()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "5554", "Triple OnPushedFive and One OnPushedFour are incorrect")
    }
    func testOnPushedSix() {
        viewController.onPushedSix()
        var result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "6", "One OnPushedSix is incorrect")
        
        viewController.onPushedSix()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "66", "Double OnPushedSix is incorrect")
        
        viewController.onPushedSix()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "666", "Triple OnPushedSix is incorrect")
        
        viewController.onPushedFive()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "6665", "Triple OnPushedSix and One OnPushedFive are incorrect")
    }
    func testOnPushedSeven() {
        viewController.onPushedSeven()
        var result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "7", "One OnPushedSeven is incorrect")
        
        viewController.onPushedSeven()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "77", "Double OnPushedSeven is incorrect")
        
        viewController.onPushedSeven()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "777", "Triple OnPushedSeven is incorrect")
        
        viewController.onPushedSix()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "7776", "Triple OnPushedSeven and One OnPushedSix are incorrect")
    }
    func testOnPushedEight() {
        viewController.onPushedEight()
        var result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "8", "One OnPushedEight is incorrect")
        
        viewController.onPushedEight()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "88", "Double OnPushedEight is incorrect")
        
        viewController.onPushedEight()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "888", "Triple OnPushedEight is incorrect")
        
        viewController.onPushedSeven()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "8887", "Triple OnPushedEight and One OnPushedSeven are incorrect")
    }
    func testOnPushedNine() {
        viewController.onPushedNine()
        var result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "9", "One OnPushedNight is incorrect")
        
        viewController.onPushedNine()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "99", "Double OnPushedNight is incorrect")
        
        viewController.onPushedNine()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "999", "Triple OnPushedNight is incorrect")
        
        viewController.onPushedEight()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "9998", "Triple OnPushedNine and One OnPushedEight are incorrect")
    }
    func testOnPushedZero() {
        viewController.onPushedZero()
        var result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "0", "One OnPushedZero is incorrect")
        
        viewController.onPushedOne()
        viewController.onPushedZero()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "10", "One OnPushedOne and One OnPushedZero are incorrect")
        
        viewController.onPushedZero()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "100", "One OnPushedOne and Two OnPushedZero are incorrect")
    }
    
    /* その他(AC, ±, %) */
    func testOnPushedAllClear() {
        viewController.onPushedAllClear()
        var result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "0", "One OnPushedAllClear is incorrect")
        
        viewController.onPushedOne()
        viewController.onPushedAllClear()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "0", "One OnPushedOne and OnPushedAllClear are incorrect")
        
        viewController.onPushedOne()
        viewController.onPushedTwo()
        viewController.onPushedAllClear()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "0", "One OnPushedOne and One OnPushedTwo and OnPushedAllClear are incorrect")
    }
    
    func testOnPushedPercent() {
        viewController.onPushedPercent()
        var result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "0", "One OnPushedPercent is incorrect")
        
        viewController.onPushedOne()
        viewController.onPushedPercent()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "0.01", "One OnPushedOne and One OnPushedPercent are incorrect")
        
        viewController.onPushedAllClear()
        viewController.onPushedOne()
        viewController.onPushedPercent()
        viewController.onPushedPercent()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "0.0001", "One OnPushedOne and Two OnPushedPercent are incorrect")

        viewController.onPushedAllClear()
        viewController.onPushedOne()
        viewController.onPushedNine()
        viewController.onPushedPercent()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "0.19", "One OnPushedOne and One OnPushedNine and One OnPushedPercent are incorrect")
    }
    
    func testOnPushedPlusMinus() {
        viewController.onPushedPlusMinus()
        var result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "-0", "One OnPushedPlusMinus is incorrect")
        
        viewController.onPushedAllClear()
        viewController.onPushedPlusMinus()
        viewController.onPushedPlusMinus()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "0", "Two OnPushedPlusMinus is incorrect")
        
        viewController.onPushedAllClear()
        viewController.onPushedPlusMinus()
        viewController.onPushedOne()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "-1", "One OnPushedPlusMinus and One OnPushedOne are incorrect")
        
        viewController.onPushedAllClear()
        viewController.onPushedPlusMinus()
        viewController.onPushedSix()
        viewController.onPushedPercent()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "-0.06", "One OnPushedPlusMinus and One OnPushedSix and One OnPushedPercent are incorrect")
    }
    
    /* 四則演算(+, -, *, /) */
    func testOnPushedAddition() {
        // 1 + 2 = -> 3
        viewController.onPushedOne()
        viewController.onPushedAddition()
        viewController.onPushedTwo()
        viewController.onPushedEqual()
        var result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "3", "1 + 2 = is incorrect")
        
        viewController.onPushedAllClear()
        
        // 11 + 22 = -> 33
        viewController.onPushedOne()
        viewController.onPushedOne()
        viewController.onPushedAddition()
        viewController.onPushedTwo()
        viewController.onPushedTwo()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "33", "11 + 22 = is incorrect")

        viewController.onPushedAllClear()

        // 2 + = -> 4
        viewController.onPushedTwo()
        viewController.onPushedAddition()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "4", "2 + = is incorrect")

        viewController.onPushedAllClear()
        
        // 10 + = = -> 30
        viewController.onPushedOne()
        viewController.onPushedZero()
        viewController.onPushedAddition()
        viewController.onPushedEqual()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "30", "10 + = = is incorrect")
        
        viewController.onPushedAllClear()
        
        // 1 + 2 = = -> 5
        viewController.onPushedOne()
        viewController.onPushedAddition()
        viewController.onPushedTwo()
        viewController.onPushedEqual()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "5", "1 + 2 = = is incorrect")

        viewController.onPushedAllClear()
        
        // 1 + 2 = = = = -> 9
        viewController.onPushedOne()
        viewController.onPushedAddition()
        viewController.onPushedTwo()
        viewController.onPushedEqual()
        viewController.onPushedEqual()
        viewController.onPushedEqual()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "9", "1 + 2 = = = = is incorrect")
        
        viewController.onPushedAllClear()

        // 35 + = 6 = -> 41
        viewController.onPushedThree()
        viewController.onPushedFive()
        viewController.onPushedAddition()
        viewController.onPushedEqual()
        viewController.onPushedSix()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "41", " 35 + = 6 = is incorrect")
    }
    
    func testOnPushedSubtraction() {
        // 2 - 1 = -> 1
        viewController.onPushedTwo()
        viewController.onPushedSubtraction()
        viewController.onPushedOne()
        viewController.onPushedEqual()
        var result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "1", "2 - 1 = is incorrect")
        
        viewController.onPushedAllClear()
        
        // 1 - 2 = -> -1
        viewController.onPushedOne()
        viewController.onPushedSubtraction()
        viewController.onPushedTwo()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "-1", "1 - 2 = is incorrect")
        
        viewController.onPushedAllClear()
        
        // 35 - 12 = -> 23
        viewController.onPushedThree()
        viewController.onPushedFive()
        viewController.onPushedSubtraction()
        viewController.onPushedOne()
        viewController.onPushedTwo()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "23", "35 - 12 = is incorrect")
        
        viewController.onPushedAllClear()
        
        // 12 - 35 = -> -23
        viewController.onPushedOne()
        viewController.onPushedTwo()
        viewController.onPushedSubtraction()
        viewController.onPushedThree()
        viewController.onPushedFive()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "-23", "12 - 35 = is incorrect")
        
        viewController.onPushedAllClear()
        
        // 4 - = -> 0
        viewController.onPushedFour()
        viewController.onPushedSubtraction()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "0", "4 - = is incorrect")

        viewController.onPushedAllClear()
        
        // 4 - = = -> -4
        viewController.onPushedFour()
        viewController.onPushedSubtraction()
        viewController.onPushedEqual()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "-4", "4 - = = is incorrect")
        
        viewController.onPushedAllClear()
        
        // 12 - = -> 0
        viewController.onPushedOne()
        viewController.onPushedTwo()
        viewController.onPushedSubtraction()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "0", "12 - = is incorrect")

        viewController.onPushedAllClear()
        
        // 12 - = = -> -12
        viewController.onPushedOne()
        viewController.onPushedTwo()
        viewController.onPushedSubtraction()
        viewController.onPushedEqual()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "-12", "12 - = = is incorrect")
        
        viewController.onPushedAllClear()

        // 12 - = = = = -> -36
        viewController.onPushedOne()
        viewController.onPushedTwo()
        viewController.onPushedSubtraction()
        viewController.onPushedEqual()
        viewController.onPushedEqual()
        viewController.onPushedEqual()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "-36", "12 - = = = = is incorrect")

        viewController.onPushedAllClear()
        
        // 35 - = 6 = -> -29
        viewController.onPushedThree()
        viewController.onPushedFive()
        viewController.onPushedSubtraction()
        viewController.onPushedEqual()
        viewController.onPushedSix()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "-29", "35 - = 6 = is incorrect")
    }
    
    func testOnPushedMultiplication() {
        // 4 * 2 = -> 8
        viewController.onPushedFour()
        viewController.onPushedMultiplication()
        viewController.onPushedTwo()
        viewController.onPushedEqual()
        var result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "8", "4 * 2 = is incorrect")
        
        viewController.onPushedAllClear()
        
        // 2 * 4 = -> 8
        viewController.onPushedTwo()
        viewController.onPushedMultiplication()
        viewController.onPushedFour()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "8", "2 * 4 = is incorrect")
        
        viewController.onPushedAllClear()
        
        // 3 * -6 = -> -18
        viewController.onPushedThree()
        viewController.onPushedMultiplication()
        viewController.onPushedSix()
        viewController.onPushedPlusMinus()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "-18", "3 * -6 = is incorrect")
        
        viewController.onPushedAllClear()
        
        // -6 * 3 = -> -18
        viewController.onPushedSix()
        viewController.onPushedPlusMinus()
        viewController.onPushedMultiplication()
        viewController.onPushedThree()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "-18", "-6 * 3 = is incorrect")
        
        viewController.onPushedAllClear()
        
        // -6 * -3 = -> -18
        viewController.onPushedSix()
        viewController.onPushedPlusMinus()
        viewController.onPushedMultiplication()
        viewController.onPushedThree()
        viewController.onPushedPlusMinus()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "18", "-6 * -3 = is incorrect")
        
        viewController.onPushedAllClear()
        
        // 3 * = -> 9
        viewController.onPushedThree()
        viewController.onPushedMultiplication()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "9", "3 * = is incorrect")
        
        viewController.onPushedAllClear()
        
        // 4 * = = -> 64
        viewController.onPushedFour()
        viewController.onPushedMultiplication()
        viewController.onPushedEqual()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "64", "4 * = = is incorrect")
        
        viewController.onPushedAllClear()
        
        // 11 * = -> 121
        viewController.onPushedOne()
        viewController.onPushedOne()
        viewController.onPushedMultiplication()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "121", "11 * = is incorrect")

        viewController.onPushedAllClear()
        
        // 11 * = = -> 1331
        viewController.onPushedOne()
        viewController.onPushedOne()
        viewController.onPushedMultiplication()
        viewController.onPushedEqual()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "1331", "11 * = = is incorrect")
        
        viewController.onPushedAllClear()
        
        // 35 * = 6 = -> 210
        viewController.onPushedThree()
        viewController.onPushedFive()
        viewController.onPushedMultiplication()
        viewController.onPushedEqual()
        viewController.onPushedSix()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "210", "35 * = 6 = is incorrect")
        
        viewController.onPushedAllClear()
        
        // 35 * = 6 = = -> 210
        viewController.onPushedThree()
        viewController.onPushedFive()
        viewController.onPushedMultiplication()
        viewController.onPushedEqual()
        viewController.onPushedSix()
        viewController.onPushedEqual()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "7350", "35 * = 6 = = is incorrect")
        
        viewController.onPushedAllClear()
        
        // 1212 * 0 = -> 0
        viewController.onPushedOne()
        viewController.onPushedTwo()
        viewController.onPushedOne()
        viewController.onPushedTwo()
        viewController.onPushedMultiplication()
        viewController.onPushedZero()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "0", "1212 * 0 = is incorrect")
    }
    
    func testOnPushedDivision() {
        // 6 / 3 = -> 2
        viewController.onPushedSix()
        viewController.onPushedDivision()
        viewController.onPushedThree()
        viewController.onPushedEqual()
        var result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "2", "6 / 3 = is incorrect")

        viewController.onPushedAllClear()

        // 3 / 6 = -> 0.5
        viewController.onPushedThree()
        viewController.onPushedDivision()
        viewController.onPushedSix()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "0.5", "3 / 6 = is incorrect")

        viewController.onPushedAllClear()

        // 2 / = -> 1
        viewController.onPushedTwo()
        viewController.onPushedDivision()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "1", "2 / = is incorrect")

        viewController.onPushedAllClear()

        // 2 / = = -> 0.5
        viewController.onPushedTwo()
        viewController.onPushedDivision()
        viewController.onPushedEqual()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "0.5", "2 / = = is incorrect")

        viewController.onPushedAllClear()

        // 7 / 0 = -> エラー
        viewController.onPushedSeven()
        viewController.onPushedDivision()
        viewController.onPushedZero()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "エラー", "7 / 0 = is incorrect")

        viewController.onPushedAllClear()

        // 7 / 0 = 7 = -> エラー
        viewController.onPushedSeven()
        viewController.onPushedDivision()
        viewController.onPushedZero()
        viewController.onPushedEqual()
        viewController.onPushedSeven()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "エラー", "7 / 0 = 7 = is incorrect")

        viewController.onPushedAllClear()

        // 45 / 6 = -> 7.5
        viewController.onPushedFour()
        viewController.onPushedFive()
        viewController.onPushedDivision()
        viewController.onPushedSix()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "7.5", "45 / 6 = is incorrect")

        viewController.onPushedAllClear()

        // 18 / 25 = -> 0.72
        viewController.onPushedOne()
        viewController.onPushedEight()
        viewController.onPushedDivision()
        viewController.onPushedTwo()
        viewController.onPushedFive()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "0.72", "18 / 25 = is incorrect")
    }
    
    func testOnPushedDot() {
        // . -> 0.
        viewController.onPushedDot()
        var result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "0.", "One Pushed Dot is incorrect")
        
        viewController.onPushedAllClear()
        
        // . . -> 0.
        viewController.onPushedDot()
        viewController.onPushedDot()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "0.", "Two Pushed Dot is incorrect")
        
        viewController.onPushedAllClear()
        
        // 0.3 * 6 = -> 1.8
        viewController.onPushedZero()
        viewController.onPushedDot()
        viewController.onPushedThree()
        viewController.onPushedMultiplication()
        viewController.onPushedSix()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "1.8", "0.3 * 6 = is incorrct")
        
        viewController.onPushedAllClear()
        
        // 3.3 / 5 = -> 0.66
        viewController.onPushedThree()
        viewController.onPushedDot()
        viewController.onPushedThree()
        viewController.onPushedDivision()
        viewController.onPushedFive()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "0.66", "3.3 / 5 = is incorrct")
        
        viewController.onPushedAllClear()
        
        // 78.64 * 6.9 = -> 542.616
        viewController.onPushedSeven()
        viewController.onPushedEight()
        viewController.onPushedDot()
        viewController.onPushedSix()
        viewController.onPushedFour()
        viewController.onPushedMultiplication()
        viewController.onPushedSix()
        viewController.onPushedDot()
        viewController.onPushedNine()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "542.616", "78.64 * 6.9 = is incorrct")

        viewController.onPushedAllClear()
        
        // 88.641 / 9.3 = -> 9.5312903
        viewController.onPushedEight()
        viewController.onPushedEight()
        viewController.onPushedDot()
        viewController.onPushedSix()
        viewController.onPushedFour()
        viewController.onPushedOne()
        viewController.onPushedDivision()
        viewController.onPushedNine()
        viewController.onPushedDot()
        viewController.onPushedThree()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "9.5312903", "88.641 / 9.3 = is incorrct")
    }
    
    func testIrregularOperation() {
        // 8 * 9 / -> 72
        viewController.onPushedEight()
        viewController.onPushedMultiplication()
        viewController.onPushedNine()
        viewController.onPushedDivision()
        var result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "72", "8 * 9 / is incorrct")
        
        viewController.onPushedAllClear()
        
        // 4 * 5 = / 10 = -> 2
        viewController.onPushedFour()
        viewController.onPushedMultiplication()
        viewController.onPushedFive()
        viewController.onPushedEqual()
        viewController.onPushedDivision()
        viewController.onPushedOne()
        viewController.onPushedZero()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "2", "4 * 5 / 10 = is incorrct")
        
        // 2 * 4 / = -> 1
        viewController.onPushedTwo()
        viewController.onPushedMultiplication()
        viewController.onPushedFour()
        viewController.onPushedDivision()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "1", "2 * 4 / = is incorrct")
        
        viewController.onPushedAllClear()
        
        // 2 * 4 / = = -> 0.125
        viewController.onPushedTwo()
        viewController.onPushedMultiplication()
        viewController.onPushedFour()
        viewController.onPushedDivision()
        viewController.onPushedEqual()
        viewController.onPushedEqual()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "0.125", "2 * 4 / = = is incorrct")
    }
}

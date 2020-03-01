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
    
    func testOnPushedOneTest() {
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
    func testOnPushedTwoTest() {
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
    func testOnPushedThreeTest() {
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
    func testOnPushedFourTest() {
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
    func testOnPushedSixTest() {
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
    func testOnPushedSevenTest() {
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
    func testOnPushedEightTest() {
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
    func testOnPushedNineTest() {
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
    func testOnPushedZeroTest() {
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
}

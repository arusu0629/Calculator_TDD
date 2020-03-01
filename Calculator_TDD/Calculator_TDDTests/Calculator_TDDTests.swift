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
        XCTAssertEqual(result, "1", "One OnPushedOne is is incorrect")
        
        viewController.onPushedOne()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "11", "Double OnPushedOne is is incorrect")
        
        viewController.onPushedOne()
        result = viewController.numLabel.text ?? ""
        XCTAssertEqual(result, "111", "Triple OnPushedOne is is incorrect")
    }
}

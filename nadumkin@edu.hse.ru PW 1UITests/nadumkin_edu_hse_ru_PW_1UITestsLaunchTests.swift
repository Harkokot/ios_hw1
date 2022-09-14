//
//  nadumkin_edu_hse_ru_PW_1UITestsLaunchTests.swift
//  nadumkin@edu.hse.ru PW 1UITests
//
//  Created by Никита Думкин on 14.09.2022.
//

import XCTest

class nadumkin_edu_hse_ru_PW_1UITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}

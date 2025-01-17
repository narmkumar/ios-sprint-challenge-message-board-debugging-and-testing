//
//  MessageThreadTests.swift
//  MessageBoardTests
//
//  Created by Andrew R Madsen on 9/13/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest
@testable import Message_Board

class MessageThreadTests: XCTestCase {
    
    private let messageController = MessageThreadController()
    
    func testFetchMessageThread() {
        messageController.fetchMessageThreads {
            XCTAssertNotNil(self.messageController.messageThreads)
        }
    }
    
    func testCreateMessage() {
        let messageTitle = "A New Message Thread"
        
        messageController.createMessageThread(with: messageTitle) {
        }
        
        XCTAssertNotNil(messageController.messageThreads.count)
    }
    
    func testExpectation() {
        let didFinish = expectation(description: "didFinish")
        var name = ""
        let url = URL(string: "https://apple.com")!

        URLSession.shared.dataTask(with: url) { (data, _, _) in
            didFinish.fulfill()
            name = "Dave"
        }.resume()

        wait(for: [didFinish], timeout: 5) // blocking sync wait

        // Assertion only happens after the time out, or web request completes
        XCTAssertEqual("Dave", name)
    }
    
}

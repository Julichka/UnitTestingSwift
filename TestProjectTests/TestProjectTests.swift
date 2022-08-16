//
//  TestProjectTests.swift
//  TestProjectTests
//
//  Created by SF on 01.06.2021.
//

import XCTest
@testable import TestProject

class TestProjectTests: XCTestCase {
    
    let mockUser = UserMock(firstName: "Andry", lastName: "Jigo", bio: "I love sf", city: "Moscow", friends: [], isClosed: true)
    let mockFriend = UserMock(firstName: "Sam", lastName: "Majow", bio: "I love sf", city: "St.Petersburg", friends: [], isClosed: false)
    let mockName = "Alex"
    let mockLastName = "Smith"
    let mockBio = "Born in 1991"
    let mockCity = "San Francisco"
    let mockClosed = false
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testChangeName() throws {
        mockUser.changeName(mockName)
        XCTAssertTrue(mockUser.changeNameCalled)
        XCTAssertTrue(mockUser.changeNameCalledCount > 0)
        XCTAssertTrue(mockUser.firstName == mockName)
    }
    
    func testChangeLastName() throws {
        mockUser.changeLastName(mockLastName)
        XCTAssertTrue(mockUser.changeLastNameCalled)
        XCTAssertTrue(mockUser.changeLastNameCalledCount > 0)
        XCTAssertTrue(mockUser.lastName == mockLastName)
    }
    
    func testChangeBio() throws {
        mockUser.changeBio(mockBio)
        XCTAssertTrue(mockUser.changeBioCalled)
        XCTAssertTrue(mockUser.changeBioCalledCount > 0)
        XCTAssertTrue(mockUser.bio == mockBio)
    }
    
    func testChangeCity() throws {
        mockUser.changeCity(mockCity)
        XCTAssertTrue(mockUser.cityCalled)
        XCTAssertTrue(mockUser.cityCalledCount > 0)
        XCTAssertTrue(mockUser.city == mockCity)
    }
    
    func testClosed() throws {
        mockUser.changeClosed(mockClosed)
        XCTAssertTrue(mockUser.isClosedCalled)
        XCTAssertTrue(mockUser.isClosedCalledCount > 0)
        XCTAssertTrue(mockUser.isClosed == mockClosed)
    }
    
    func testAddFriend() throws {
        mockUser.addFriend(mockFriend)
        XCTAssertTrue(mockUser.addFriendCalled)
        XCTAssertTrue(mockUser.addFriendCalledCount > 0)
        XCTAssertTrue(mockUser.friends.count > 0)
        XCTAssertTrue(mockUser.friends[0].firstName == mockFriend.firstName)
    }
}

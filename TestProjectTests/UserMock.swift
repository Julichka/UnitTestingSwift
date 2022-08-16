import Foundation
@testable import TestProject

class UserMock: User {
 
    var changeNameCalledCount = 0
    var changeLastNameCalledCount = 0
    var changeBioCalledCount = 0
    var addFriendCalledCount = 0
    var isClosedCalledCount = 0
    var cityCalledCount = 0
 
    var changeNameCalled = false
    var changeLastNameCalled = false
    var changeBioCalled = false
    var addFriendCalled = false
    var isClosedCalled = false
    var cityCalled = false
    
    override func changeCity(_ city: String) {
        cityCalledCount += 1
        cityCalled = true
        super.changeCity(city)
    }
    
    override func changeClosed(_ isClosed: Bool) {
        isClosedCalledCount += 1
        isClosedCalled = true
        super.changeClosed(isClosed)
    }
    
    override func changeName(_ firstName: String) {
        changeNameCalledCount += 1
        changeNameCalled = true
        super.changeName(firstName)
    }
    
    override func changeLastName(_ lastName: String) {
        changeLastNameCalledCount += 1
        changeLastNameCalled = true
        super.changeLastName(lastName)
    }
    
    override func changeBio(_ bio: String) {
        changeBioCalledCount += 1
        changeBioCalled = true
        super.changeBio(bio)
    }
 
    override func addFriend(_ friend: User) {
        addFriendCalledCount += 1
        addFriendCalled = true
        super.addFriend(friend)
    }
}

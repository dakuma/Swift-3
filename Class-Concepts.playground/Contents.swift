import UIKit

class Trunck {
    private var capacity: Int
    
    init(capacity: Int) {
        self.capacity = capacity
    }
    
    func getCapacity() -> Int {
        self.capacity
    }
} // Trunck

class Car {
    // props should always be private or protected(inheritance)
    private var color: String
    private var cylinderCount: Int
    private var odometer: Int = 0
    private var trunck: Trunck
    
    // called upon instantiation
    init(color: String, cylinderCount: Int, capacity: Int) {
        self.color = color
        self.cylinderCount = cylinderCount
        self.trunck = Trunck(capacity: capacity)
    } // init()
    
    // Getters
    func getColor() -> String {
        return self.color
    }
    func getCylinders() -> Int {
        return self.cylinderCount
    }
    func getOdometer() -> Int {
        return self.odometer
    }
    func getTrunckCapacity() -> Int {
        trunck.getCapacity()
    }
    
    // Setters
    func setColor(color: String) {
        self.color = color
    }
    func setCylinders(cylinderCount: Int) {
        self.cylinderCount = cylinderCount
    }
    func setOdometer(odometer: Int) {
        self.odometer = odometer
    }
    
    func drive(distance: Int) {
        self.odometer += distance
    }
} // Car

let car = Car(color: "Blue", cylinderCount: 12, capacity: 20)
car.setOdometer(odometer: 300)
car.drive(distance: 500)
print("The car color is: \(car.getColor())")
print("The car has \(car.getOdometer()) miles on it.")
print("The car has \(car.getTrunckCapacity()) spaces available.")

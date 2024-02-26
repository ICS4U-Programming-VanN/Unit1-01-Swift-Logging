//
//  Logging.swift
//
//  Created by Van
//  Created on 2024-02-21
//  Version 1.0
//  Copyright (c) 2024 Van Nguyen. All rights reserved.
//
//  Tell the user the number of logs that can go on a truck

import Foundation
// Declared Constants
let LOG_LENGTH1: Double = 0.25
let LOG_LENGTH2: Double = 0.5
let LOG_LENGTH3: Double = 1
let WEIGHT_PER_METER: Double = 20
let TRUCK_MAX_WEIGHT: Double = 1100

// Initialize Variables
var isValidInput = false
var userLength: Double = 0.0

// Checks for valid input
while !isValidInput {
    print("What is the length of your logs: ")
    guard let userInput = readLine(),
          let length = Double(userInput) else {
        print("Invalid input. Please enter a valid double value.")
        continue
    }

    userLength = length
    isValidInput = true
    // Add the following line to exit the loop when valid input is obtained
    break
}

// Initialize Variable
var numMaxLogs: Double = 0.0

// Calculates and displays the log math
switch userLength {
    case LOG_LENGTH1:
        let logWeight = LOG_LENGTH1 * WEIGHT_PER_METER
        numMaxLogs = TRUCK_MAX_WEIGHT / logWeight
        print("The max number of logs the truck can hold is: \(numMaxLogs)")
    case LOG_LENGTH2:
        let logWeight = LOG_LENGTH2 * WEIGHT_PER_METER
        numMaxLogs = TRUCK_MAX_WEIGHT / logWeight
        print("The max number of logs the truck can hold is: \(numMaxLogs)")
    case LOG_LENGTH3:
        let logWeight = LOG_LENGTH3 * WEIGHT_PER_METER
        numMaxLogs = TRUCK_MAX_WEIGHT / logWeight
        print("The max number of logs the truck can hold is: \(numMaxLogs)")
    default:
        print("You must input 0.25m, 0.5m, or 1m.")
}

//
//  File.swift
//  
//
//  Created by Ramy Wagdy on 9/16/21.
//

import Foundation
import SwiftCLI

class GreetCommand: Command {
    let name = "greet"

    @Param var person: String

    func execute() throws {
        stdout <<< "Hello \(person)!"
        print("location", "warning: BartyCrouch: ", "message")
    }
}

let greeter = CLI(name: "rcheck")
greeter.commands = [GreetCommand()]
greeter.go()

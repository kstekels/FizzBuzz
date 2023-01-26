//
//  FizzBuzzAlgorithmModel.swift
//  FizzBuzz
//
//  Created by karlis.stekels on 26/01/2023.
//

import Foundation

struct FizzBuzzAlgorithmModel: Identifiable {
    let id = UUID()
    let name: String
    var commentCode: (String) -> String = { code in
        return "\\ " + code
    }
    var versionNumber: Double? = nil
    var imports: String = ""
    var boilerWrapper: (String) -> String = { code in
        return code
    }
    let maxConstDefinition: String
    let loopWrapper: (String) -> String
    let printString: (String) -> String
    let printInt: () -> String
    let equality: String = "=="
    var moduloSymbol: String = "%"
    let ifStatement: (String, String) -> String
    let elseIfStatement: (String, String) -> String
    let elseStatement: (String) -> String
    
    var actualFizzBuzzCode: String {
        "FizzBuzz in \(name)"
    }
}

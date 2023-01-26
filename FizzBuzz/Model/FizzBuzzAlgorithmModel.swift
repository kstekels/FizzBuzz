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
        return #"\\ "# + code
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
        let mod3 = "i \(moduloSymbol) 3 \(equality) 0"
        let codeFizz = printString("Fizz")
        
        let mod5 = "i \(moduloSymbol) 5 \(equality) 0"
        let codeBuzz = printString("Buzz")
        
        let mod15 = "i \(moduloSymbol) 15 \(equality) 0"
        let codeFizzBuzz = printString("FizzBuzz")

        let printInt = printInt()
        let codeInLoop =
        """
        \(ifStatement(mod15, codeFizzBuzz)) \(elseIfStatement(mod3, codeFizz.indent())) \(elseIfStatement(mod5, codeBuzz.indent())) \(elseStatement(printInt.indent()))
        """
        
        let mainCode =
        """
        \(maxConstDefinition)
        \(loopWrapper(codeInLoop))
        """
        
        var versionString = ""
        
        if let versionNumber = versionNumber {
            versionString = "implementation version (\(versionNumber))"
        }
        
        return """
        \(commentCode("FizzBuzz\(versionString) is implemented in the \(name) programming language."))
        \(imports)
        \(boilerWrapper(mainCode))
        """
    }
}

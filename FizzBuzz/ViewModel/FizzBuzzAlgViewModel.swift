//
//  FizzBuzzAlgViewModel.swift
//  FizzBuzz
//
//  Created by karlis.stekels on 26/01/2023.
//

import Foundation

class FizzBuzzAlgViewModel: ObservableObject {
    @Published var fizzBuzzModels: [FizzBuzzAlgorithmModel] = []
    
    init() {
        fizzBuzzModels = [
            .init(
                name: "Swift",
                maxConstDefinition: "let MAX = 100",
                loopWrapper: { code in
                    """
                    for i in 1...MAX {
                        \(code.indent())
                    }
                    """
                },
                printString: { str in
                    #"print("\#(str)\t", terminator: "")"#
                },
                printInt: {
                    #"print("\(i)\t", terminator: "")"#
                },
                ifStatement: { logic, code in
                    """
                    if \(logic) {
                        \(code)
                    }
                    """
                },
                elseIfStatement: { logic, code in
                    """
                    else if \(logic) {
                        \(code)
                    }
                    """
                },
                elseStatement: { code in
                    """
                    else {
                        \(code)
                    }
                    """
                }
            ),
            .init(
                name: "C",
                versionNumber: 1.0,
                imports: "#include <stdio.h>",
                boilerWrapper: { code in
                    """
                    int main() {
                        \(code.indent())
                    }
                    """
                },
                maxConstDefinition: "#define MAX 100",
                loopWrapper: { code in
                    """
                    for (int i = 1; i <= MAX; ++i) {
                        \(code.indent())
                    }
                    """
                },
                printString: { str in
                    #"printf("\#(str)\t");"#
                },
                printInt: {
                    #"printf("%d\t", i);"#
                },
                ifStatement: { logic, code in
                    """
                    if (\(logic)) {
                        \(code)
                    }
                    """
                },
                elseIfStatement: { logic, code in
                    """
                    else if (\(logic)) {
                        \(code)
                    }
                    """
                },
                elseStatement: { code in
                    """
                    else {
                        \(code)
                    }
                    """
                }
            ),
            .init(
                name: "Python",
                commentCode: { code in
                    return #"# "# + code
                },
                versionNumber: 3.7,
                boilerWrapper: { code in
                    """
                    if __name__ == "__main__"
                        \(code.indent())
                    """
                },
                maxConstDefinition: "MAX = 100",
                loopWrapper: { code in
                    """
                    for i in range(1, MAX)
                    \(code.indent())
                    """
                },
                printString: { str in
                    #"print("\#(str)\t, end="")"#
                },
                printInt: {
                    #"print(f"{i}\t", end="")"#
                },
                ifStatement: { logic, code in
                    """
                    if \(logic):
                        \(code.indent())\n
                    """
                },
                elseIfStatement: { logic, code in
                    """
                    elif \(logic):
                        \(code.indent())\n
                    """
                },
                elseStatement: { code in
                    """
                    else
                        \(code.indent())
                    """
                }
            ),
            .init(
                name: "Rust",
                commentCode: { code in
                    return #"// "# + code
                },
                versionNumber: 1.0,
                imports: "",
                boilerWrapper: { code in
                    """
                    fn main() {
                        \(code.indent())
                    }
                    """
                },
                maxConstDefinition: "const MAX: i32 = 100;",
                loopWrapper: { code in
                    """
                    for i in 1..MAX+1)
                        \(code)
                    """
                },
                printString: { str in
                    #"print!("\#(str)\t);"#
                },
                printInt: {
                    #"print!(f"{i}\t");"#
                },
                ifStatement: { logic, code in
                    """
                    if \(logic) {
                        \(code)
                    }
                    """
                },
                elseIfStatement: { logic, code in
                    """
                    else if \(logic) {
                        \(code)
                    }
                    """
                },
                elseStatement: { code in
                    """
                    else {
                        \(code)
                    }
                    """
                }
            ),
        ]
    }
}

//let MAX = 100
//for i in 1..<MAX {
//    if i % 15 == 0 {
//        print("FizzBuzz\t", terminator: "")
//    }
//    else if i % 3 == 0 {
//        print("Fizz\t", terminator: "")
//    }
//    else if i % 5 == 0 {
//        print("Buzz\t", terminator: "")
//    }
//    else {
//        print("\(i)\t", terminator: "")
//    }
//}

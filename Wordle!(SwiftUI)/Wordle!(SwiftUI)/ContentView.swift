import SwiftUI

struct ContentView: View {
    @State private var userInput = ""
    @State private var score = 0.0
    @State private var showingPreviosWins = false
    @State private var firstLetter = ""
    @State private var isFirstLetterDone = false
    @State private var secondLetter = ""
    @State private var isSecondtLetterDone = false
    @State private var thirdLetter = ""
    @State private var isThirdLetterDone = false
    @State private var fourthLetter = ""
    @State private var isFourthLetterDone = false
    @State private var FifthLetter = ""
    @State private var isFifthLetterDone = false
    @State private var firstcorrectLetter = false
    @State private var secondCorrectLetter = false
    @State private var thirdCorrectLetter = false
    @State private var fourthCorrectLetter = false
    @State private var fifthCorrectLetter = false
    @State private var firstRowDone = true
    @State private var secondRowDone = false
    @State private var thirdRowDone = false
    @State private var fourthRowDone = false
    @State private var fifthRowDone = false
    @State private var win = false
    @State private var showingAlert = false
    @State private var alertTitle = ""
    @State private var alertMessage = ""

    
    var words: [String] = [
        "APPLE", "HAPPY", "GRAPE", "CANDY", "DANCE",
        "MUSIC", "SMILE", "PEACE", "JUICE", "CHAIR",
        "BEACH", "CLOUD", "DREAM", "FROST", "GLIDE",
        "HEART", "IMAGE", "JOLLY", "KNEEL", "LIGHT",
        "MERRY", "NOBLE", "OASIS", "PIANO", "QUIET",
        "RALLY", "SMOKE", "TEASE", "UMBRA", "VIVID",
        "WALTZ", "XEROX", "YACHT", "ZEBRA"
    ]
     var word: String
    
    init() {
        self.word = words.randomElement() ?? "unknown word"
    }
    
    
    
    var body: some View {
        NavigationStack {
            Spacer()
            HStack(spacing: 0) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(firstRowDone && firstcorrectLetter ? Color.orange : Color.gray)
                        .stroke(.black, lineWidth: 5)
                        .frame(width: 50, height: 50)
                        
                   
                    Text(firstRowDone && isFirstLetterDone ? firstLetter : "")
                        .font(.title3)
                        .foregroundStyle(.black)
                        
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(firstRowDone && secondCorrectLetter ? Color.orange : win ?  Color.green : Color.gray)
                        .stroke(.black, lineWidth: 5)
                        .frame(width: 50, height: 50)
                   Text(firstRowDone && isSecondtLetterDone ? secondLetter : "")
                    .font(.title3)
                    .foregroundStyle(.black)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(firstRowDone && thirdCorrectLetter ? Color.orange : win ? Color.green : Color.gray)
                        .stroke(.black, lineWidth: 5)
                        .frame(width: 50, height: 50)
                  Text(firstRowDone && isThirdLetterDone ? thirdLetter : "")
                    .font(.title3)
                    .foregroundStyle(.black)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(firstRowDone && fourthCorrectLetter ? Color.orange: win ?  Color.green : Color.gray)
                        .stroke(.black, lineWidth: 5)
                        .frame(width: 50, height: 50)
                    Text(firstRowDone && isFourthLetterDone ? fourthLetter : "")
                    .font(.title3)
                    .foregroundStyle(.black)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(firstRowDone && fifthCorrectLetter ? Color.orange : win ?  Color.green : Color.gray)
                        .stroke(.black, lineWidth: 5)
                        .frame(width: 50, height: 50)
                     Text(firstRowDone && isFifthLetterDone ? FifthLetter : "")
                    .font(.title3)
                    .foregroundStyle(.black)
                }
            }
            .shadow(radius: 25)
            
            HStack(spacing: 0) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(secondRowDone && firstcorrectLetter ? Color.orange : win ?  Color.green : Color.gray)
                        .stroke(.black, lineWidth: 5)
                        .frame(width: 50, height: 50)
                    Text(secondRowDone && isFirstLetterDone ? firstLetter : "")
                        .font(.title3)
                        .foregroundStyle(.primary)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(secondRowDone && secondCorrectLetter ? Color.orange : win ?  Color.green : Color.gray)
                        .stroke(.black, lineWidth: 5)
                        .frame(width: 50, height: 50)
                    Text(secondRowDone && isSecondtLetterDone ? secondLetter : "")
                        .font(.title3)
                        .foregroundStyle(.black)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(secondRowDone && thirdCorrectLetter ? Color.orange : win ?  Color.green : Color.gray)
                        .stroke(.black, lineWidth: 5)
                        .frame(width: 50, height: 50)
                    Text(secondRowDone && isThirdLetterDone ? thirdLetter : "")
                        .font(.title3)
                        .foregroundStyle(.black)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(secondRowDone && fourthCorrectLetter ? Color.orange: win ?  Color.green : Color.gray)
                        .stroke(.black, lineWidth: 5)
                        .frame(width: 50, height: 50)
                    Text(secondRowDone && isFourthLetterDone ? fourthLetter : "")
                        .font(.title3)
                        .foregroundStyle(.black)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(secondRowDone && fifthCorrectLetter ? Color.orange : win ?  Color.green : Color.gray)
                        .stroke(.black, lineWidth: 5)
                        .frame(width: 50, height: 50)
                    Text(secondRowDone && isFifthLetterDone ? FifthLetter : "")
                        .font(.title3)
                        .foregroundStyle(.black)
                }
            }
            .shadow(radius: 25)
            HStack(spacing:0) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(thirdRowDone && firstcorrectLetter ? Color.orange : win ?  Color.green : Color.gray)
                        .stroke(.black, lineWidth: 5)
                        .frame(width: 50, height: 50)
                    Text(thirdRowDone && isFirstLetterDone ? firstLetter : "")
                        .font(.title3)
                        .foregroundStyle(.black)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(thirdRowDone && secondCorrectLetter ? Color.orange : win ?  Color.green : Color.gray)
                        .stroke(.black, lineWidth: 5)
                        .frame(width: 50, height: 50)
                    Text(thirdRowDone && isSecondtLetterDone ? secondLetter : "")
                        .font(.title3)
                        .foregroundStyle(.black)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(thirdRowDone && thirdCorrectLetter ? Color.orange : win ?  Color.green : Color.gray)
                        .stroke(.black, lineWidth: 5)
                        .frame(width: 50, height: 50)
                    Text(thirdRowDone && isThirdLetterDone ? thirdLetter : "")
                        .font(.title3)
                        .foregroundStyle(.black)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(thirdRowDone && fourthCorrectLetter ? Color.orange : win ?  Color.green : Color.gray)
                        .stroke(.black, lineWidth: 5)
                        .frame(width: 50, height: 50)
                    Text(thirdRowDone && isFourthLetterDone ? fourthLetter : "")
                        .font(.title3)
                        .foregroundStyle(.black)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(thirdRowDone && fifthCorrectLetter ? Color.orange : win ?  Color.green : Color.gray)
                        .stroke(.black, lineWidth: 5)
                        .frame(width: 50, height: 50)
                    Text(thirdRowDone && isFifthLetterDone ? FifthLetter : "")
                        .font(.title3)
                        .foregroundStyle(.black)
                }
            }
            .shadow(radius: 25)
            
            HStack(spacing: 0) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(fourthRowDone && firstcorrectLetter ? Color.orange : win ?  Color.green : Color.gray)
                        .stroke(.black, lineWidth: 5)
                        .frame(width: 50, height: 50)
                    Text(fourthRowDone && isFirstLetterDone ? firstLetter : "")
                        .font(.title3)
                        .foregroundStyle(.black)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(fourthRowDone && secondCorrectLetter ? Color.orange : win ?  Color.green : Color.gray)
                        .stroke(.black, lineWidth: 5)
                        .frame(width: 50, height: 50)
                    Text(fourthRowDone && isSecondtLetterDone ? secondLetter : "")
                        .font(.title3)
                        .foregroundStyle(.black)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(fourthRowDone && thirdCorrectLetter ? Color.orange : win ?  Color.green : Color.gray)
                        .stroke(.black, lineWidth: 5)
                        .frame(width: 50, height: 50)
                    Text(fourthRowDone && isThirdLetterDone ? thirdLetter : "")
                        .font(.title3)
                        .foregroundStyle(.black)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(fourthRowDone && fourthCorrectLetter ? Color.orange : win ?  Color.green : Color.gray)
                        .stroke(.black, lineWidth: 5)
                        .frame(width: 50, height: 50)
                    Text(fourthRowDone && isFourthLetterDone ? fourthLetter : "")
                        .font(.title3)
                        .foregroundStyle(.black)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(fourthRowDone && fifthCorrectLetter ? Color.orange : win ?  Color.green : Color.gray)
                        .stroke(.black, lineWidth: 5)
                        .frame(width: 50, height: 50)
                    Text(fourthRowDone && isFifthLetterDone ? FifthLetter : "")
                        .font(.title3)
                        .foregroundStyle(.black)
                }
            }
            .shadow(radius: 25)
            HStack(spacing: 0) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(fifthRowDone && firstcorrectLetter ? Color.orange : win ?  Color.green : Color.gray)
                        .stroke(.black, lineWidth: 5)
                        .frame(width: 50, height: 50)
                    Text(fifthRowDone && isFirstLetterDone ? firstLetter : "")
                        .font(.title3)
                        .foregroundStyle(.black)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(fifthRowDone && secondCorrectLetter ? Color.orange : win ?  Color.green : Color.gray)
                        .stroke(.black, lineWidth: 5)
                        .frame(width: 50, height: 50)
                    Text(fifthRowDone && isSecondtLetterDone ? secondLetter : "")
                        .font(.title3)
                        .foregroundStyle(.black)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(fifthRowDone && thirdCorrectLetter ? Color.orange : win ?  Color.green : Color.gray)
                        .stroke(.black, lineWidth: 5)
                        .frame(width: 50, height: 50)
                    Text(fifthRowDone && isThirdLetterDone ? thirdLetter : "")
                        .font(.title3)
                        .foregroundStyle(.black)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(fifthRowDone && fourthCorrectLetter ? Color.orange : win ?  Color.green : Color.gray)
                        .stroke(.black, lineWidth: 5)
                        .frame(width: 50, height: 50)
                    Text(fifthRowDone && isFourthLetterDone ? fourthLetter : "")
                        .font(.title3)
                        .foregroundStyle(.black)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(fifthRowDone && fifthCorrectLetter ? Color.orange : win ?  Color.green : Color.gray)
                        .stroke(.black, lineWidth: 5)
                        .frame(width: 50, height: 50)
                    Text(fifthRowDone && isFifthLetterDone ? FifthLetter : "")
                        .font(.title3)
                        .foregroundStyle(.black)
                }
            }
            .shadow(radius: 25)
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 370, height: 300)
                    .foregroundStyle(.thinMaterial)
                    .shadow(radius: 10)
                VStack {
                    HStack {
                        // QWERTYUIOP
                        Group {
                            Button("Q") {
                                userInput += "Q"
                                if isFirstLetterDone == false {
                                    firstLetter += "Q"
                                    isFirstLetterDone = true
                                } else if isSecondtLetterDone == false {
                                    secondLetter += "Q"
                                    isSecondtLetterDone = true
                                } else if isThirdLetterDone == false {
                                    thirdLetter += "Q"
                                    isThirdLetterDone = true
                                } else if isFourthLetterDone == false {
                                    fourthLetter += "Q"
                                    isFourthLetterDone = true
                                }else if isFifthLetterDone == false {
                                    FifthLetter += "Q"
                                    isFifthLetterDone = true
                                }
                            }
                            .font(.title3)
                            .foregroundStyle(.black)
                            .frame(width: 30, height: 50)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Button("W") {
                                userInput += "W"
                                if isFirstLetterDone == false {
                                    firstLetter += "W"
                                    isFirstLetterDone = true
                                } else if isSecondtLetterDone == false {
                                    secondLetter += "W"
                                    isSecondtLetterDone = true
                                } else if isThirdLetterDone == false {
                                    thirdLetter += "W"
                                    isThirdLetterDone = true
                                } else if isFourthLetterDone == false {
                                    fourthLetter += "W"
                                    isFourthLetterDone = true
                                }else if isFifthLetterDone == false {
                                    FifthLetter += "W"
                                    isFifthLetterDone = true
                                }
                            }
                            .font(.title3)
                            .foregroundStyle(.black)
                            .frame(width: 30, height: 50)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Button("E") {
                                userInput += "E"
                                if isFirstLetterDone == false {
                                    firstLetter += "E"
                                    isFirstLetterDone = true
                                } else if isSecondtLetterDone == false {
                                    secondLetter += "E"
                                    isSecondtLetterDone = true
                                } else if isThirdLetterDone == false {
                                    thirdLetter += "E"
                                    isThirdLetterDone = true
                                } else if isFourthLetterDone == false {
                                    fourthLetter += "E"
                                    isFourthLetterDone = true
                                }else if isFifthLetterDone == false {
                                    FifthLetter += "E"
                                    isFifthLetterDone = true
                                }
                            }
                            .font(.title3)
                            .foregroundStyle(.black)
                            .frame(width: 30, height: 50)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Button("R") {
                                userInput += "R"
                                if isFirstLetterDone == false {
                                    firstLetter += "R"
                                    isFirstLetterDone = true
                                } else if isSecondtLetterDone == false {
                                    secondLetter += "R"
                                    isSecondtLetterDone = true
                                } else if isThirdLetterDone == false {
                                    thirdLetter += "R"
                                    isThirdLetterDone = true
                                } else if isFourthLetterDone == false {
                                    fourthLetter += "R"
                                    isFourthLetterDone = true
                                }else if isFifthLetterDone == false {
                                    FifthLetter += "R"
                                    isFifthLetterDone = true
                                }
                            }
                            .font(.title3)
                            .foregroundStyle(.black)
                            .frame(width: 30, height: 50)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Button("T") {
                                userInput += "T"
                                if isFirstLetterDone == false {
                                    firstLetter += "T"
                                    isFirstLetterDone = true
                                } else if isSecondtLetterDone == false {
                                    secondLetter += "T"
                                    isSecondtLetterDone = true
                                } else if isThirdLetterDone == false {
                                    thirdLetter += "T"
                                    isThirdLetterDone = true
                                } else if isFourthLetterDone == false {
                                    fourthLetter += "T"
                                    isFourthLetterDone = true
                                }else if isFifthLetterDone == false {
                                    FifthLetter += "T"
                                    isFifthLetterDone = true
                                }
                            }
                            .font(.title3)
                            .foregroundStyle(.black)
                            .frame(width: 30, height: 50)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Button("Y") {
                                userInput += "Y"
                                if isFirstLetterDone == false {
                                    firstLetter += "Y"
                                    isFirstLetterDone = true
                                } else if isSecondtLetterDone == false {
                                    secondLetter += "Y"
                                    isSecondtLetterDone = true
                                } else if isThirdLetterDone == false {
                                    thirdLetter += "Y"
                                    isThirdLetterDone = true
                                } else if isFourthLetterDone == false {
                                    fourthLetter += "Y"
                                    isFourthLetterDone = true
                                }else if isFifthLetterDone == false {
                                    FifthLetter += "Y"
                                    isFifthLetterDone = true
                                }
                            }
                            .font(.title3)
                            .foregroundStyle(.black)
                            .frame(width: 30, height: 50)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Button("U") {
                                userInput += "U"
                                if isFirstLetterDone == false {
                                    firstLetter += "U"
                                    isFirstLetterDone = true
                                } else if isSecondtLetterDone == false {
                                    secondLetter += "U"
                                    isSecondtLetterDone = true
                                } else if isThirdLetterDone == false {
                                    thirdLetter += "U"
                                    isThirdLetterDone = true
                                } else if isFourthLetterDone == false {
                                    fourthLetter += "U"
                                    isFourthLetterDone = true
                                }else if isFifthLetterDone == false {
                                    FifthLetter += "U"
                                    isFifthLetterDone = true
                                }
                            }
                            .font(.title3)
                            .foregroundStyle(.black)
                            .frame(width: 30, height: 50)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Button("I") {
                                userInput += "I"
                                if isFirstLetterDone == false {
                                    firstLetter += "I"
                                    isFirstLetterDone = true
                                } else if isSecondtLetterDone == false {
                                    secondLetter += "I"
                                    isSecondtLetterDone = true
                                } else if isThirdLetterDone == false {
                                    thirdLetter += "I"
                                    isThirdLetterDone = true
                                } else if isFourthLetterDone == false {
                                    fourthLetter += "I"
                                    isFourthLetterDone = true
                                }else if isFifthLetterDone == false {
                                    FifthLetter += "I"
                                    isFifthLetterDone = true
                                }
                            }
                            .font(.title3)
                            .foregroundStyle(.black)
                            .frame(width: 30, height: 50)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Button("O") {
                                userInput += "O"
                                if isFirstLetterDone == false {
                                    firstLetter += "O"
                                    isFirstLetterDone = true
                                } else if isSecondtLetterDone == false {
                                    secondLetter += "O"
                                    isSecondtLetterDone = true
                                } else if isThirdLetterDone == false {
                                    thirdLetter += "O"
                                    isThirdLetterDone = true
                                } else if isFourthLetterDone == false {
                                    fourthLetter += "O"
                                    isFourthLetterDone = true
                                }else if isFifthLetterDone == false {
                                    FifthLetter += "O"
                                    isFifthLetterDone = true
                                }
                            }
                            .font(.title3)
                            .foregroundStyle(.black)
                            .frame(width: 30, height: 50)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                        
                        Button("P") {
                            userInput += "P"
                            if isFirstLetterDone == false {
                                firstLetter += "P"
                                isFirstLetterDone = true
                            } else if isSecondtLetterDone == false {
                                secondLetter += "P"
                                isSecondtLetterDone = true
                            } else if isThirdLetterDone == false {
                                thirdLetter += "P"
                                isThirdLetterDone = true
                            } else if isFourthLetterDone == false {
                                fourthLetter += "P"
                                isFourthLetterDone = true
                            }else if isFifthLetterDone == false {
                                FifthLetter += "P"
                                isFifthLetterDone = true
                            }
                        }
                        .font(.title3)
                        .foregroundStyle(.black)
                        .frame(width: 30, height: 50)
                        .background(.orange)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                    }
                    
                    HStack {
                        // GROUP ASDFGHJKL
                        Group {
                            Button("A") {
                                userInput += "A"
                                if isFirstLetterDone == false {
                                    firstLetter += "A"
                                    isFirstLetterDone = true
                                } else if isSecondtLetterDone == false {
                                    secondLetter += "A"
                                    isSecondtLetterDone = true
                                } else if isThirdLetterDone == false {
                                    thirdLetter += "A"
                                    isThirdLetterDone = true
                                } else if isFourthLetterDone == false {
                                    fourthLetter += "A"
                                    isFourthLetterDone = true
                                }else if isFifthLetterDone == false {
                                    FifthLetter += "A"
                                    isFifthLetterDone = true
                                }
                            }
                            .font(.title3)
                            .foregroundStyle(.black)
                            .frame(width: 30, height: 50)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Button("S") {
                                userInput += "S"
                                if isFirstLetterDone == false {
                                    firstLetter += "S"
                                    isFirstLetterDone = true
                                } else if isSecondtLetterDone == false {
                                    secondLetter += "S"
                                    isSecondtLetterDone = true
                                } else if isThirdLetterDone == false {
                                    thirdLetter += "S"
                                    isThirdLetterDone = true
                                } else if isFourthLetterDone == false {
                                    fourthLetter += "S"
                                    isFourthLetterDone = true
                                }else if isFifthLetterDone == false {
                                    FifthLetter += "S"
                                    isFifthLetterDone = true
                                }
                            }
                            .font(.title3)
                            .foregroundStyle(.black)
                            .frame(width: 30, height: 50)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Button("D") {
                                userInput += "D"
                                if isFirstLetterDone == false {
                                    firstLetter += "D"
                                    isFirstLetterDone = true
                                } else if isSecondtLetterDone == false {
                                    secondLetter += "D"
                                    isSecondtLetterDone = true
                                } else if isThirdLetterDone == false {
                                    thirdLetter += "D"
                                    isThirdLetterDone = true
                                } else if isFourthLetterDone == false {
                                    fourthLetter += "D"
                                    isFourthLetterDone = true
                                }else if isFifthLetterDone == false {
                                    FifthLetter += "D"
                                    isFifthLetterDone = true
                                }
                            }
                            .font(.title3)
                            .foregroundStyle(.black)
                            .frame(width: 30, height: 50)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Button("F") {
                                userInput += "F"
                                if isFirstLetterDone == false {
                                    firstLetter += "F"
                                    isFirstLetterDone = true
                                } else if isSecondtLetterDone == false {
                                    secondLetter += "F"
                                    isSecondtLetterDone = true
                                } else if isThirdLetterDone == false {
                                    thirdLetter += "F"
                                    isThirdLetterDone = true
                                } else if isFourthLetterDone == false {
                                    fourthLetter += "F"
                                    isFourthLetterDone = true
                                }else if isFifthLetterDone == false {
                                    FifthLetter += "F"
                                    isFifthLetterDone = true
                                }
                            }
                            .font(.title3)
                            .foregroundStyle(.black)
                            .frame(width: 30, height: 50)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Button("G") {
                                userInput += "G"
                                if isFirstLetterDone == false {
                                    firstLetter += "G"
                                    isFirstLetterDone = true
                                } else if isSecondtLetterDone == false {
                                    secondLetter += "G"
                                    isSecondtLetterDone = true
                                } else if isThirdLetterDone == false {
                                    thirdLetter += "G"
                                    isThirdLetterDone = true
                                } else if isFourthLetterDone == false {
                                    fourthLetter += "G"
                                    isFourthLetterDone = true
                                }else if isFifthLetterDone == false {
                                    FifthLetter += "G"
                                    isFifthLetterDone = true
                                }
                            }
                            .font(.title3)
                            .foregroundStyle(.black)
                            .frame(width: 30, height: 50)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Button("H") {
                                userInput += "H"
                                if isFirstLetterDone == false {
                                    firstLetter += "H"
                                    isFirstLetterDone = true
                                } else if isSecondtLetterDone == false {
                                    secondLetter += "H"
                                    isSecondtLetterDone = true
                                } else if isThirdLetterDone == false {
                                    thirdLetter += "H"
                                    isThirdLetterDone = true
                                } else if isFourthLetterDone == false {
                                    fourthLetter += "H"
                                    isFourthLetterDone = true
                                }else if isFifthLetterDone == false {
                                    FifthLetter += "H"
                                    isFifthLetterDone = true
                                }
                            }
                            .font(.title3)
                            .foregroundStyle(.black)
                            .frame(width: 30, height: 50)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Button("J") {
                                userInput += "J"
                                if isFirstLetterDone == false {
                                    firstLetter += "J"
                                    isFirstLetterDone = true
                                } else if isSecondtLetterDone == false {
                                    secondLetter += "J"
                                    isSecondtLetterDone = true
                                } else if isThirdLetterDone == false {
                                    thirdLetter += "J"
                                    isThirdLetterDone = true
                                } else if isFourthLetterDone == false {
                                    fourthLetter += "J"
                                    isFourthLetterDone = true
                                }else if isFifthLetterDone == false {
                                    FifthLetter += "J"
                                    isFifthLetterDone = true
                                }
                            }
                            .font(.title3)
                            .foregroundStyle(.black)
                            .frame(width: 30, height: 50)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Button("K") {
                                userInput += "K"
                                if isFirstLetterDone == false {
                                    firstLetter += "K"
                                    isFirstLetterDone = true
                                } else if isSecondtLetterDone == false {
                                    secondLetter += "K"
                                    isSecondtLetterDone = true
                                } else if isThirdLetterDone == false {
                                    thirdLetter += "K"
                                    isThirdLetterDone = true
                                } else if isFourthLetterDone == false {
                                    fourthLetter += "K"
                                    isFourthLetterDone = true
                                }else if isFifthLetterDone == false {
                                    FifthLetter += "K"
                                    isFifthLetterDone = true
                                }
                            }
                            .font(.title3)
                            .foregroundStyle(.black)
                            .frame(width: 30, height: 50)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Button("L") {
                                userInput += "L"
                                if isFirstLetterDone == false {
                                    firstLetter += "L"
                                    isFirstLetterDone = true
                                } else if isSecondtLetterDone == false {
                                    secondLetter += "L"
                                    isSecondtLetterDone = true
                                } else if isThirdLetterDone == false {
                                    thirdLetter += "L"
                                    isThirdLetterDone = true
                                } else if isFourthLetterDone == false {
                                    fourthLetter += "L"
                                    isFourthLetterDone = true
                                }else if isFifthLetterDone == false {
                                    FifthLetter += "L"
                                    isFifthLetterDone = true
                                }
                            }
                            .font(.title3)
                            .foregroundStyle(.black)
                            .frame(width: 30, height: 50)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }
                    
                    HStack {
                        // GROUP ZXCVBNM
                        Group {
                            
                            Button("Z") {
                                userInput += "Z"
                                if isFirstLetterDone == false {
                                    firstLetter += "Z"
                                    isFirstLetterDone = true
                                } else if isSecondtLetterDone == false {
                                    secondLetter += "Z"
                                    isSecondtLetterDone = true
                                } else if isThirdLetterDone == false {
                                    thirdLetter += "Z"
                                    isThirdLetterDone = true
                                } else if isFourthLetterDone == false {
                                    fourthLetter += "Z"
                                    isFourthLetterDone = true
                                }else if isFifthLetterDone == false {
                                    FifthLetter += "Z"
                                    isFifthLetterDone = true
                                }
                            }
                            .font(.title3)
                            .foregroundStyle(.black)
                            .frame(width: 30, height: 50)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Button("X") {
                                userInput += "X"
                                if isFirstLetterDone == false {
                                    firstLetter += "X"
                                    isFirstLetterDone = true
                                } else if isSecondtLetterDone == false {
                                    secondLetter += "X"
                                    isSecondtLetterDone = true
                                } else if isThirdLetterDone == false {
                                    thirdLetter += "X"
                                    isThirdLetterDone = true
                                } else if isFourthLetterDone == false {
                                    fourthLetter += "X"
                                    isFourthLetterDone = true
                                }else if isFifthLetterDone == false {
                                    FifthLetter += "X"
                                    isFifthLetterDone = true
                                }
                            }
                            .font(.title3)
                            .foregroundStyle(.black)
                            .frame(width: 30, height: 50)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Button("C") {
                                userInput += "C"
                                if isFirstLetterDone == false {
                                    firstLetter += "C"
                                    isFirstLetterDone = true
                                } else if isSecondtLetterDone == false {
                                    secondLetter += "C"
                                    isSecondtLetterDone = true
                                } else if isThirdLetterDone == false {
                                    thirdLetter += "C"
                                    isThirdLetterDone = true
                                } else if isFourthLetterDone == false {
                                    fourthLetter += "C"
                                    isFourthLetterDone = true
                                }else if isFifthLetterDone == false {
                                    FifthLetter += "C"
                                    isFifthLetterDone = true
                                }
                            }
                            .font(.title3)
                            .foregroundStyle(.black)
                            .frame(width: 30, height: 50)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Button("V") {
                                userInput += "V"
                                if isFirstLetterDone == false {
                                    firstLetter += "V"
                                    isFirstLetterDone = true
                                } else if isSecondtLetterDone == false {
                                    secondLetter += "V"
                                    isSecondtLetterDone = true
                                } else if isThirdLetterDone == false {
                                    thirdLetter += "V"
                                    isThirdLetterDone = true
                                } else if isFourthLetterDone == false {
                                    fourthLetter += "V"
                                    isFourthLetterDone = true
                                }else if isFifthLetterDone == false {
                                    FifthLetter += "V"
                                    isFifthLetterDone = true
                                }
                            }
                            .font(.title3)
                            .foregroundStyle(.black)
                            .frame(width: 30, height: 50)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Button("B") {
                                userInput += "B"
                                if isFirstLetterDone == false {
                                    firstLetter += "B"
                                    isFirstLetterDone = true
                                } else if isSecondtLetterDone == false {
                                    secondLetter += "B"
                                    isSecondtLetterDone = true
                                } else if isThirdLetterDone == false {
                                    thirdLetter += "B"
                                    isThirdLetterDone = true
                                } else if isFourthLetterDone == false {
                                    fourthLetter += "B"
                                    isFourthLetterDone = true
                                }else if isFifthLetterDone == false {
                                    FifthLetter += "B"
                                    isFifthLetterDone = true
                                }
                            }
                            .font(.title3)
                            .foregroundStyle(.black)
                            .frame(width: 30, height: 50)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Button("N") {
                                userInput += "N"
                                if isFirstLetterDone == false {
                                    firstLetter += "N"
                                    isFirstLetterDone = true
                                } else if isSecondtLetterDone == false {
                                    secondLetter += "N"
                                    isSecondtLetterDone = true
                                } else if isThirdLetterDone == false {
                                    thirdLetter += "N"
                                    isThirdLetterDone = true
                                } else if isFourthLetterDone == false {
                                    fourthLetter += "N"
                                    isFourthLetterDone = true
                                }else if isFifthLetterDone == false {
                                    FifthLetter += "N"
                                    isFifthLetterDone = true
                                }
                            }
                            .font(.title3)
                            .foregroundStyle(.black)
                            .frame(width: 30, height: 50)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Button("M") {
                                userInput += "M"
                                if isFirstLetterDone == false {
                                    firstLetter += "M"
                                    isFirstLetterDone = true
                                } else if isSecondtLetterDone == false {
                                    secondLetter += "M"
                                    isSecondtLetterDone = true
                                } else if isThirdLetterDone == false {
                                    thirdLetter += "M"
                                    isThirdLetterDone = true
                                } else if isFourthLetterDone == false {
                                    fourthLetter += "M"
                                    isFourthLetterDone = true
                                }else if isFifthLetterDone == false {
                                    FifthLetter += "M"
                                    isFifthLetterDone = true
                                }
                            }
                            .font(.title3)
                            .foregroundStyle(.black)
                            .frame(width: 30, height: 50)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                        }
                        
                    }
                    
                    HStack {
                        // GROUP for first 3 buttons
                        Group {
                            
                            Button("ENTER") {
                                print(word)
                                print(userInput)
                                for char in word {
                                    userInput = firstLetter + secondLetter + thirdLetter + fourthLetter + FifthLetter
                                    if firstLetter.contains(char) {
                                        firstcorrectLetter = true
                                    } else if secondLetter.contains(char) {
                                        secondCorrectLetter = true
                                    } else if thirdLetter.contains(char) {
                                        thirdCorrectLetter = true
                                    } else if fourthLetter.contains(char) {
                                        fourthCorrectLetter = true
                                    } else if FifthLetter.contains(char) {
                                        fifthCorrectLetter = true
                                    }
                                }
                                
                                if firstRowDone {
                                    firstRowDone = false
                                    secondRowDone = true
                                } else if secondRowDone {
                                    secondRowDone = false
                                    thirdRowDone = true
                                } else if thirdRowDone {
                                    thirdRowDone = false
                                    fourthRowDone = true
                                } else if fourthRowDone {
                                    fourthRowDone = false
                                    fifthRowDone = true
                                } else if fifthRowDone && !FifthLetter.isEmpty {
                                    showingAlert = true
                                    alertTitle = "Oops you lost !"
                                    alertMessage = "No problem !, try again and see if you can win!"
                                }
                                
                                if word == userInput {
                                    print("thats a win")
                                    showingAlert = true
                                    alertTitle = "You Won!"
                                    alertMessage = "Good Job, you won ! lets see if you can win again"
                                }
                                
                                firstLetter = ""
                                secondLetter = ""
                                thirdLetter = ""
                                fourthLetter = ""
                                FifthLetter = ""
                                isFirstLetterDone = false
                                isSecondtLetterDone = false
                                isThirdLetterDone = false
                                isFourthLetterDone = false
                                isFifthLetterDone = false
                                userInput = ""
                         
                            }
                            .font(.title3)
                            .foregroundStyle(.black)
                            .frame(width: 100, height: 25)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Button("CLEAR") {
                                firstLetter = ""
                                secondLetter = ""
                                thirdLetter = ""
                                fourthLetter = ""
                                FifthLetter = ""
                                isFirstLetterDone = false
                                isSecondtLetterDone = false
                                isThirdLetterDone = false
                                isFourthLetterDone = false
                                isFifthLetterDone = false
                                userInput = ""
                            }
                            .font(.title3)
                            .foregroundStyle(.black)
                            .frame(width: 100, height: 25)
                            .background(.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                        
                        
                    }
                    
                    
                }
                .alert(alertTitle, isPresented: $showingAlert) {
                    Button("Retry") {
                        firstRowDone = true
                        secondRowDone = false
                        thirdRowDone = false
                        fourthRowDone = false
                        fifthRowDone = false
                        firstcorrectLetter = false
                        secondCorrectLetter = false
                        thirdCorrectLetter = false
                        fourthCorrectLetter = false
                        fifthCorrectLetter = false
                        win = false
                        firstLetter = ""
                        secondLetter = ""
                        thirdLetter = ""
                        fourthLetter = ""
                        FifthLetter = ""
                        isFirstLetterDone = false
                        isSecondtLetterDone = false
                        isThirdLetterDone = false
                        isFourthLetterDone = false
                        isFifthLetterDone = false
                        userInput = ""
//                        word = words.randomElement() ?? "Unknown word"
                    }
                    
                    Button("Cancel") { }
                } message: {
                    Text(alertMessage)
                }
                .sheet(isPresented: $showingPreviosWins) {
                    PreviousWinsView()
                }
                .navigationTitle("Wordle")
                .toolbar {
                    Button {
                        showingPreviosWins.toggle()
                    } label: {
                        Image(systemName: "arrow.uturn.backward.circle.badge.ellipsis")
                    }
                    .foregroundStyle(.white)
                }
            }
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}

// 812 or so lines of code !!

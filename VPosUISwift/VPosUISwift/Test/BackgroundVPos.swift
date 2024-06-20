//
//  BackgroundVPos.swift
//  VPosUISwift
//
//  Created by QRVN on 08/04/2024.
//

import Foundation
import SwiftUI

struct BackgroundVPos: View {
    var body: some View {
        VStack {
            HStack {
                Text("A")
                Spacer()
                Text("B")
                Spacer()
                Text("C")
                Spacer()
                Text("D")
            }
            .padding()
            .frame(height: 44)
            .background(Color.white)
            
            Spacer()
            
            ScrollView(showsIndicators: false) {
                VStack {
                    ForEach(1...20, id: \.self) { index in
                        Text("Item \(index)")
                            .padding()
                            .frame(width: UIScreen.SCREEN_W - 10)
                    }
                    MoTaGiayPhep()

                }
            }
            .background(Color.white)
        }
        .background(Color.gray)
    }
}

struct MoTaGiayPhep: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("Công ty cổ phần dịch vụ nền di động Việt Nam")
                .font(.footnote)
            Text("Giấy phép trung gian thanh toán 41/GP - NHNN 12/03/2018")
                .font(.footnote)
                .padding(.top, 1)
            HStack(alignment: .center) {
                Text("VPos")
                    .font(.largeTitle)
                Text("phiên bản 1.1")
                    .font(.title2)
                    .padding(.leading, 10)
            }
            .frame(width: UIScreen.SCREEN_W - 10, height: 44)
            Text("")
                .frame(height: 50)
        }
    }
}

struct NhomDangKy: View {
    var body: some View {
        VStack(alignment: .center) {
            HStack(alignment: .center) {
                Text("Pass")
            }
            Divider()
            HStack(alignment: .center) {
                Text("Pass token")
            }
            HStack {
                Button(action: {
                    //action here
                }, label: {
                    Text("Đăng ký")
                        .padding()
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(12)
                })
            }
        }
    }
}

struct FormV: View {
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                Form {
                    Section {
                        Text("Wua man buing Yang")
                    }
                }
                .navigationTitle("Title Swift")
                .navigationBarTitleDisplayMode(.inline)
            }
        } else {
            // Fallback on earlier versions
        }
        Form {
            Section {
                Text("Hello team 1")
            }
            
            Section {
                Text("ChaoXin")
                Text("BuingYang")
            }
        }
    }
}

struct ViewALoop: View {
    let students = ["John", "Smith", "QuynCy", "LongJump"]
    @State private var selectedStudent = "John"
    
    var body: some View {
        NavigationStack {
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
            .navigationTitle("Select a student")
        }
    }
}

struct ReadingTextField: View {
    @State private var checkAmount: Double = 0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    let locale = Locale.current.identifier
    let tipPercentages = [10, 15, 20, 25, 0]
    let listNumbers = {
        var result = [Int]()
        for i in 2...10 {
            result.append(i)
        }
        return result
    }()
    
    var totalPer: Double {
        let peopleCount = Double(numberOfPeople)
        let tipSelect = Double(tipPercentage)
        let tipValue = checkAmount*tipSelect/100
        let grandTotal = checkAmount + tipValue
        let amountPer = grandTotal/peopleCount
        return amountPer
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: locale))
                        .keyboardType(.decimalPad)
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(listNumbers, id: \.self) {
                            Text("\($0) people")
                        }
                    }
                }
                
                Section("HOW MUCH DO YOU WANT TO TIP?") {
                    Picker("Tip", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section {
                    Text(totalPer, format: .currency(code: locale))
                }
            }
            .navigationTitle("WeSplit")
        }
    }
}

#Preview {
    ReadingTextField()
}

extension UIScreen {
    static let SCREEN_W = UIScreen.main.bounds.size.width
    static let SCREEN_H = UIScreen.main.bounds.size.height
}


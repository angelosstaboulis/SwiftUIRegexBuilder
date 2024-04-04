//
//  ContentView.swift
//  SwiftUIRegExBuilder
//
//  Created by Angelos Staboulis on 5/4/24.
//

import SwiftUI
import RegexBuilder
struct ContentView: View {
    @State var email:String
    @State var result:Bool
    var body: some View {
        VStack {
            Text("Email")
            TextField("", text:$email).autocapitalization(.none)
            Button(action: {
              result = checkEmail(email: email)
            }, label: {
                Text("Check Email")
            })
            Text(String(result))
        }
        .padding()
    }
    func checkEmail(email:String)->Bool{
        let result = Regex {
            OneOrMore(.word)
            "@"
            OneOrMore(.word)
            "."
            OneOrMore(.word)
        }
        return email.contains(result)
    }
}

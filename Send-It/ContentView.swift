//
//  ContentView.swift
//  Send-It
//
//  Created by Brandon Marella on 10/14/19.
//  Copyright © 2019 Allegory. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var data: MessageData
    var body: some View {
        VStack() {
            Spacer()
            Text("Send-It")
                .font(.largeTitle)
            Text("Welcome, \n Sign in Below")
                .multilineTextAlignment(.center)
                .font(.callout)
            Spacer()
            
            TextField("Send to ID", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding(.leading)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            TextField("Message", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding(.leading)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Send")
                    .padding()
            }
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            Spacer()
            Text("Copyright 2019 - Allegory Inc")

            Text("Privacy & Information")
                .font(.caption)
                .foregroundColor(.blue)
                .underline()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group() {
            ContentView(data: MessageData(id: 1, message: "Test"))
                .colorScheme(.light)
            ContentView(data: MessageData(id: 1, message: "Test"))
                .colorScheme(.dark)
        }
    }
}

//
//  ContentView.swift
//  questionapp
//
//  Created by Michelle Elias Flores on 5/1/23.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        NavigationView {
            FirstView()
        }
    }
}

struct FirstView: View {
    @State private var goToSecondView: Bool = false
    @State private var selectedText: String = ""

    var body: some View {
        VStack {
            Text("Pick a coffee!")
                .font(.largeTitle)
                .foregroundColor(.yellow)
            // Add the three buttons with custom messages
                       Button(action: {
                           selectedText = "I love coffee! Lattes are awesome!"
                       }) {
                           Text("COFFEE!")
                               .padding()
                               .foregroundColor(.white)
                               .background(Color.orange)
                               .cornerRadius(10)
                       }
                       .padding()
                        Button(action: {
                           Image("icecoffe")
                       }) {
                           Text("Iced Coffee!")
                               .padding()
                               .foregroundColor(.white)
                               .background(Color.blue)
                               .cornerRadius(10)
                       }
                       .padding()

            Button(action: {
                selectedText = "milkshakes and other things are also cool!"
            } ) {
                           Text("NO COFFEEE PLEASE!")
                               .padding()
                               .foregroundColor(.white)
                               .background(Color.green)
                               .cornerRadius(10)
                       }

                       Spacer()
            HStack {
                Spacer()
                NavigationLink(destination: SecondView(), isActive: $goToSecondView) {
                    EmptyView()
                }
                Button(action: {
                    goToSecondView = true
                }) {
                    Text("Next")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.yellow)
                        .cornerRadius(10)
                }
                .padding()
            }
        }
    }
}

struct SecondView: View {
    @State private var goToThirdView: Bool = false

    var body: some View {
        VStack {
            Text("What is your favorite color!!")
                .font(.largeTitle)
                .foregroundColor(.pink)
            Button(action: {
                print("That is also my favorite color!")
            }) {
                Text("PINK!")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.orange)
                    .cornerRadius(10)
            }
            .padding()
             Button(action: {
                print("Do you like the beach?")
            }) {
                Text("BLUE!")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()

            Button(action: {
                print("Black is a cool color")
            }) {
                Text("BLACK")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(10)
            }

            Spacer()
            HStack {
                Spacer()
                NavigationLink(destination: ThirdView(), isActive: $goToThirdView) {
                    EmptyView()
                }

                Button(action: {
                    goToThirdView = true
                }) {
                    Text("Next")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.pink)
                        .cornerRadius(10)
                }
                .padding()
            }
        }
    }
}

struct ThirdView: View {
    var body: some View {
        VStack {
            Text("How are you feeling now?")
                .font(.largeTitle)
                .foregroundColor(.red)
            Button(action: {
                print("Stay with that happy energy!!")
            }) {
                Text("Happy")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.orange)
                    .cornerRadius(10)
            }
            .padding()
             Button(action: {
                print("Here is a heart to make you feel better <3")
            }) {
                Text("Sad")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()

            Button(action: {
                print("YOU ARE AMAZINGGGG")
            }) {
                Text("Nervous")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(10)
            }

            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



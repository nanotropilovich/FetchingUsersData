//
//  UsersView.swift
//  RandomUser
//
//  Created by Ilya on 31.03.2023.
//

import SwiftUI
 
struct UsersView: View {
  @StateObject var userData = UserData()
 
  var body: some View {
    NavigationView {
      VStack {
        Text("Raw JSON Data:")
        ScrollView {
          Text(userData.users)
        }
      }
      .padding()
      .navigationTitle("Random Users")
    }
  }
}

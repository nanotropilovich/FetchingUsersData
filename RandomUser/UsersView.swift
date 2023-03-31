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
      List(userData.users) { user in
        Text(user.fullName)
      }
      .navigationTitle("Random Users")
    }
  }
}

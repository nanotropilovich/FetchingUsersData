//
//  UserData.swift
//  RandomUser
//
//  Created by Ilya on 31.03.2023.
//

import Foundation

class UserData: ObservableObject  {
    @Published var users: String = ""
 
 
  init() {
    Task {
      await loadUsers()
    }
  }
 
  func loadUsers() async {
    do {
      let users = try await UserFetchingClient.getUsers()
      self.users = users
    } catch {
      print(error)
    }
  }
}

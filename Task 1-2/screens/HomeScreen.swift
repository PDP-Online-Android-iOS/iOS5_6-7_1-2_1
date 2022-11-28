//
//  HomeScreen.swift
//  Task 1-2
//
//  Created by Ogabek Matyakubov on 28/11/22.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Logout")
                    .foregroundColor(.init(uiColor: .systemRed))
                    .onTapGesture {
                        UserDefaults.standard.set(false, forKey: "status")
                        NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
                    }
            }
            .navigationBarItems(
                leading: Image(systemName: "camera").foregroundColor(.init(uiColor: .systemRed)),
                trailing: Image(systemName: "location").foregroundColor(.init(uiColor: .systemRed))
            )
            .navigationBarTitle("Instagram", displayMode: .inline)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

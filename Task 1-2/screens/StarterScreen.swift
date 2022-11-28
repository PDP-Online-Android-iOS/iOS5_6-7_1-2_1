//
//  StarterScreen.swift
//  Task 1-2
//
//  Created by Ogabek Matyakubov on 28/11/22.
//

import SwiftUI

struct StarterScreen: View {
    
    @State var status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
    
    var body: some View {
        VStack {
            if self.status {
                HomeScreen()
            } else {
                SignInScreen()
            }
        }
        .onAppear {
            let name = NSNotification.Name("status")
            NotificationCenter.default.addObserver(forName: name, object: nil, queue: .main) { (_) in
                print("Call NotificationCenter")
                self.status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
            }
        }
    }
}

struct StarterScreen_Previews: PreviewProvider {
    static var previews: some View {
        StarterScreen()
    }
}

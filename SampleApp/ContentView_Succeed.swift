//
//  ContentView_Succeed.swift
//  SampleApp
//
//  Created by Hyuntak Joo on 2020/04/04.
//  Copyright © 2020 Hyuntak Joo. All rights reserved.
//

import SwiftUI

struct ContentView_Succeed: View {
  @State var dismissed = false
  var body: some View {
    Button(action: { self.dismissed = true }) {
      Text("Dismiss Button")
    }
    .dismissed(dismissed)
  }
}

struct ContentView_Succeed_Previews: PreviewProvider {
    static var previews: some View {
        ContentView_Succeed()
    }
}

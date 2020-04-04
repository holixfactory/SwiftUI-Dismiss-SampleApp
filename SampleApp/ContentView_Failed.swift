//
//  ContentView_Failed.swift
//  SampleApp
//
//  Created by Hyuntak Joo on 2020/04/04.
//  Copyright © 2020 Hyuntak Joo. All rights reserved.
//

import SwiftUI

struct ContentView_Failed: View {
  @Environment(\.presentationMode) var presentationMode

  var body: some View {
    Button(action: { self.presentationMode.wrappedValue.dismiss() }) {
      Text("Dismiss Button ( not working )")
    }
  }
}

struct ContentView_Failed_Previews: PreviewProvider {
  static var previews: some View {
    ContentView_Failed()
  }
}

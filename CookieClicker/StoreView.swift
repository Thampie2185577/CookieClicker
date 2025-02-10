//
//  StoreView.swift
//  CookieClicker
//
//  Created by Thampie Anthonyrajah on 10/02/2025.
//

import SwiftUI

struct StoreView: View {
    @Binding var timesClicked: Int;
    
    var body: some View {
        VStack{
            Text("Store")
            Spacer()
            Text("\(timesClicked)")
        }
    }
}

#Preview {
    StoreView(timesClicked: .constant(0))
}

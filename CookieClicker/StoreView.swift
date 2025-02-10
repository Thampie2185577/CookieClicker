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
            Text("Koop goodies van je cookies")
            Text("tegoed: \(timesClicked) cookies")
            returnButtons().padding(20)
            Spacer()
            Spacer()
        }
    }
    
    func returnButtons() -> some View{
        return VStack{
            Button("Koop een grandma(15 cookies)") {
                timesClicked -= 15;
            }
            Button("Koop een robot(100 cookies)") {
                print("Koop")
            }
            Button("Koop een farm(cookies)") {
                print("Welkom")
            }
            Button("Koop een mine(1000 cookies)") {
                print("Welkom")
            }
        }
        
    }
}




#Preview {
    StoreView(timesClicked: .constant(0))
}

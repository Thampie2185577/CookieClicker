import SwiftUI

struct ContentView: View {
    @State var timesClicked = 0;
    
    var body: some View {
        ZStack {
            VStack {
                NavigationView {
                }.navigationViewStyle(StackNavigationViewStyle()).navigationBarTitle("CookieClicker")
                Button(
                    action: {
                        timesClicked += 1
                        print(timesClicked)
                    },
                    label: {
                    Image(.cookie).resizable().aspectRatio(contentMode: .fit)
                    })
                
                if(timesClicked == 0){
                    Text("Click the cookie!").padding(.top, 20)
                }
                else {
                    Text(String(timesClicked)).padding(.top, 20)
                }
                Spacer()
                
            }
        }.background(Color.gray).ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}

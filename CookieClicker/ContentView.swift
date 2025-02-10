import SwiftUI

struct ContentView: View {
    @State private var timesClicked = 0;
    @State private var isShowingsheet = false;
    var body: some View {

        ZStack {
            NavigationView {
                VStack {
                    Spacer()
                    cookieButton()
                    if(timesClicked == 0){
                        Text("Click the cookie!").padding(.top, 20)
                    }
                    else {
                        Text(String("You clicked the cookie \(timesClicked) times")).padding(.top, 20)
                    }
                    Spacer()
                    navigationShow()
                    
                }.navigationTitle("Cookie Clicker!").sheet(isPresented: $isShowingsheet, content: {StoreView(timesClicked: $timesClicked)})
                
            }.navigationViewStyle(StackNavigationViewStyle())
            
            
        }
    }
    
    func navigationShow() -> some View{
        return  HStack{
            NavigationLink(destination: CreditsView()) {
                Text("Credits")
            }
            Spacer()
            Button("Store", action: {
                isShowingsheet = true;
            })
            
        }.padding(20)
    }
    
    func cookieButton() -> some View{
        return Button(
            action: {
                timesClicked += 1
            },
            label: {
            Image(.cookie).resizable().aspectRatio(contentMode: .fit)
            })
    }
}

#Preview {
    ContentView()
}

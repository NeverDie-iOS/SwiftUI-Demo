import SwiftUI

struct ContentView: View {
    @State var myLayout: AnyLayout = AnyLayout(VStackLayout())
    
    var body: some View {
        myLayout {
            Image(systemName: "sun.max.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Image(systemName: "cloud")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        
        HStack(spacing: 50) {
            Button(action: {
                myLayout = AnyLayout(HStackLayout())
            }) {
                Text("HStack!!")
                    .foregroundStyle(Color.green)
                    .font(.title)
                    .fontWeight(.heavy)
            }
            Button(action: {
                myLayout = AnyLayout(VStackLayout())
            }) {
                Text("VStack!!")
                    .foregroundStyle(Color.red)
                    .font(.title)
                    .fontWeight(.heavy)
            }
        }
    }
}

#Preview {
    ContentView()
}
 

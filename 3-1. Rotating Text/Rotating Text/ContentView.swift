import SwiftUI

struct ContentView: View {
    
    @State private var rotation: Double = 0
    
    var body: some View {
        VStack {
            Text("NeverDie - iOS")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(Color.cyan)
                .rotationEffect(.degrees(rotation))
            Slider(value: $rotation, in: 0...360, step: 0.1)
                .padding(.top, 55)
        }
    }
}

#Preview {
    ContentView()
}

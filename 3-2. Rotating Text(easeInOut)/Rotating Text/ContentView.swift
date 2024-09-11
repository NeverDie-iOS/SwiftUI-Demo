import SwiftUI

struct ContentView: View {
    
    @State private var rotation: Double = 0
    
    var body: some View {
        VStack {
            Text("NeverDie - iOS")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(Color.green)
                .rotationEffect(.degrees(rotation))
                .animation(.easeInOut(duration: 5), value: rotation)
            Slider(value: $rotation, in: 0...360, step: 0.1)
        }
    }
}

#Preview {
    ContentView()
}

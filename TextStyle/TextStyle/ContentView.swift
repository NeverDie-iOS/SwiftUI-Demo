import SwiftUI

struct TextStyle: View {
    var body: some View {
        VStack(spacing: 40) {
            Group{
                Text("Large Title")
                    .font(.largeTitle)
                Text("Title")
                    .font(.title)
                Text("Title2")
                    .font(.title2)
                Text("Title3")
                    .font(.title3)
                Text("HeadLine")
                    .font(.headline)
                Text("SubHeadLine")
                    .font(.subheadline)
                Text("Body")
                    .font(.body)
                Text("Callout")
                    .font(.callout)
                Text("Footnote")
                    .font(.footnote)
                Text("Caption")
                    .font(.caption)
                Text("Caption2")
                    .font(.caption2)
            }
        }
    }
}

#Preview {
    TextStyle()
}

//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Bryan Williamson on 6/5/24.
//

/*
 Resource:
 - https://www.hackingwithswift.com/100/swiftui/23
 */
import SwiftUI
// use struct for view because simpler and faster than classes
//  encourages us to move to a more functional design approach: our views become simple, inert things that convert data into UI, rather than intelligent things that can grow out of control
// classes can grow out of control, making code messier
struct ContentView: View {
    var body: some View {
        VStack { // think of view as what you see is what you have
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .blueTitleStyle()
        }
        .padding() // think of SwiftUI rendering view after every single modifier
    }
}

#Preview {
    ContentView()
}

/*
 - a Swift power feature called “opaque return types”, which you can see in action every time you write some View. This means “one object that conforms to the View protocol, but we don’t want to say what.”
 - Returning some View means even though we don’t know what view type is going back, the compiler does
 
 1) How does VStack work – it conforms to the View protocol, but how does it fill the “what kind of content does it have?” hole if it can contain lots of different things inside it?
 - if you create a VStack with two text views inside, SwiftUI silently creates a TupleView to contain those two views – a special type of view that holds exactly two views inside it. So, the VStack fills the “what kind of view is this?” with the answer “it’s a TupleView containing two text views.”
 
 2) What happens if we send back two views directly from our body property, without wrapping them in a stack?
 - Swift silently applies a special attribute to the body property called @ViewBuilder. This has the effect of silently wrapping multiple views in one of those TupleView containers, so that even though it looks like we’re sending back multiple views they get combined into one TupleView
 */


/*
 Conditional Modifiers:
 - apply modifiers only when a certain condition is met
 - https://www.hackingwithswift.com/books/ios-swiftui/conditional-modifiers
 */

/*
 Environment Modifiers:
 - environment modifiers can have parent view overrided by local modifier on child view
 - regular modifers cannot be overwritten, only compounded on top of
 - https://www.hackingwithswift.com/books/ios-swiftui/environment-modifiers
 */

/*
 Views as properties:
 - a way to create a complex view hierachy
 - https://www.hackingwithswift.com/books/ios-swiftui/views-as-properties
 
 */

/*
View composition:
 - break complex views down into smaller views without incurring much if any performance impact. This means that we can split up one large view into multiple smaller views, and SwiftUI takes care of reassembling them for us.
 - https://www.hackingwithswift.com/books/ios-swiftui/view-composition
 */

/*
 Custom modifiers:
 - https://www.hackingwithswift.com/books/ios-swiftui/custom-modifiers
 
 Create a custom ViewModifier (and accompanying View extension) that makes a view have a large, blue font suitable for prominent titles in a view.
 */

struct BlueTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

extension View {
    func blueTitleStyle() -> some View {
        modifier(BlueTitle())
    }
}

/*
 Custom containers:
 return to later:
 - https://www.hackingwithswift.com/books/ios-swiftui/custom-containers
 */

/*
 Challenge:
 - Challenge 1: Conditional red text
 - Challenge 2: View composition
 - Challenge 3: Custom ViewModifier
 - https://www.hackingwithswift.com/plus/solutions/views-and-modifiers
 
 */

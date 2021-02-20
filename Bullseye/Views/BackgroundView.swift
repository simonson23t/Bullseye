//
//  BackgroundView.swift
//  Bullseye
//
//  Created by Christopher Simonson on 2/14/21.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var game: Game
    
    var body: some View {
        VStack{
            TopView(game: $game)
            Spacer()//fills up all remaining space
            BottomView(game: $game)
        }
        .padding()
        .background(
            RingsView()
        )
    }
}

struct TopView: View {
    @Binding var game: Game
    
    var body: some View {
        HStack{
            Button(action: {
                game.restart()
            }) {
                RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            }
            Spacer()//fills up all remaining space
            RoundedImageViewStroked(systemName: "list.dash")
        }
    }
}

struct RingsView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            ForEach(1..<6) { ring in
                let size = CGFloat(ring * 100)
                let opacity = colorScheme == .dark ? 0.1 : 0.3
                Circle()
                    .stroke(lineWidth: Constants.Background.ringsViewStrokeWidth)
                    .fill(
                        RadialGradient(gradient: Gradient(colors: [Color("RingColor").opacity(Constants.Background.ringsViewGradientOpacity * opacity), Color("RingColor").opacity(0)]), center: .center,
                                       startRadius: Constants.Background.ringsViewGradientStartRadius,
                                       endRadius: Constants.Background.ringsViewGradientStopRadius)
                    )
                    .frame(width: size, height: size)
            }
        }
    }
}

struct NumberView: View {
    var title: String
    var text: String
    
    var body: some View {
        VStack(spacing: Constants.Background.numberViewSpacing) {
            LabelText(text: title.uppercased())
            RoundedRectTextView(text: text)
        }
    }
}

struct BottomView: View {
    @Binding var game: Game
    
    var body: some View {
        HStack{
            NumberView(title: "Score", text: String(game.score))
            Spacer()//fills up all remaining space
            NumberView(title: "Round", text: String(game.round))
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
    }
}

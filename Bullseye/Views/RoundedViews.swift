//
//  RoundedViews.swift
//  Bullseye
//
//  Created by Christopher Simonson on 2/14/21.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.RoundedRect.roundRectViewLength, height: Constants.RoundedRect.roundRectViewLength)
            .overlay(
                Circle()
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: Constants.General.strokeWidth)
            )
    }
}

struct RoundedImageViewFilled: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.RoundedRect.roundRectViewLength, height: Constants.RoundedRect.roundRectViewLength)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .background(
                Circle()
                    .fill(Color("ButtonFilledBackgroundColor"))
            )
    }
}

struct RoundedRectTextView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .kerning(Constants.RoundedRect.roundRectTextKerning)
            .font(.title2)
            .frame(width: Constants.RoundedRect.roundRectViewWidth, height: Constants.RoundedRect.roundRectViewHeight)
            .overlay(
                RoundedRectangle(cornerRadius: Constants.RoundedRect.roundRectCornerRadius)
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: Constants.General.strokeWidth)
            )
    }
}

struct PreviewView: View {
    var body: some View {
        VStack(spacing: Constants.RoundedRect.roundVStackSpacing){
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            RoundedImageViewStroked(systemName: "list.dash")
            RoundedRectTextView(text: "99")
        }
    }
}

struct RoundedViews_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView().preferredColorScheme(.dark)
    }
}

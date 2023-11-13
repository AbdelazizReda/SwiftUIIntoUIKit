//
//  RatingView.swift
//  UIKitWithSwiftUI
//
//  Created by Abdelaziz Reda on 13/11/2023.
//

import SwiftUI

struct RatingView: View {
    @State private var selectedRating: Int = 0
    var maxRating: Int = 5
    var onRatingChanged: ((Int) -> Void)?

    var body: some View {
        HStack(spacing:20) {
            Text("Keep Rating")
                .foregroundStyle(Color.blue)
                .bold()
            
            HStack{
                ForEach(1...maxRating, id: \.self) { index in
                    Image(systemName: index <= selectedRating ? "star.fill" : "star")
                        .foregroundColor(index <= selectedRating ? Color.orange : Color.gray)
                        .onTapGesture {
                            // Handle tapping on stars
                            selectedRating = index
                            onRatingChanged?(selectedRating)
                        }
                }
            }
        }
    }
}


struct ContentView: View {
    @State private var selectedStarsCount: Int = 0

      var body: some View {
          VStack {
              RatingView(onRatingChanged: { count in
                  selectedStarsCount = count
                  print("Selected Stars Count: \(selectedStarsCount)")
              })
              .padding()
          }
      }
}

#Preview {
    RatingView()
}

//
//  RatingView.swift
//  HackingWithSwiftUI-Bookworm
//
//  Created by Michael Jones on 23/06/2026.
//

import SwiftUI

struct RatingView: View {
    @Binding var rating: Int
    
    var label = String()
    var maximumRating = 5
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    var offColour = Color.gray
    var onColour = Color.yellow
    
    var body: some View {
        HStack {
            if label.isEmpty == false {
                Text(label)
            }
            
            /// Creates a row of tappable stars.
            /// Tapping a star sets the rating for that number.
            ForEach(1..<maximumRating + 1, id: \.self) { number in
                Button {
                    rating = number
                } label: {
                    image(for: number)
                        .foregroundStyle(number > rating ? offColour : onColour)
                }
            }
            .buttonStyle(.plain)
        }
    }
    
    /// Helps render the correct appearance (filled or empty star) based on how many starts the user has selected.
    private func image(for number: Int) -> Image {
        if number > rating {
            offImage ?? onImage
        } else {
            onImage
        }
    }
}

#Preview {
    RatingView(rating: .constant(4))
}

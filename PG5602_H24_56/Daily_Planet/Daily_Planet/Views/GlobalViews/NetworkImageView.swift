//
//  NetworkImageView.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 04/12/2024.
//

import SwiftUI

struct NetworkImageView: View {
    var imageUrl: String
    var imgWidth: CGFloat?
    var imgHeight: CGFloat?
    var body: some View {
        AsyncImage(url: URL(string: imageUrl)) { phase in
            switch phase {
            case .empty:
                Image("placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: imgWidth, height: imgHeight)
                    .cornerRadius(10)
            case .success(let image):
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: imgWidth, height: imgHeight)
                    .cornerRadius(10)
            case .failure:
                Image("placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: imgWidth, height: imgHeight)
                    .cornerRadius(10)
            @unknown default:
                Image("placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: imgWidth, height: imgHeight)
                    .cornerRadius(10)
            }
        }
    }
}

#Preview {
    NetworkImageView(imageUrl: "https://a57.foxnews.com/cf-images.us-east-1.prod.boltdns.net/v1/static/694940094001/0e823eed-c5e4-4346-87c1-8742725b2b76/bd2112e3-eb6d-45d2-8e56-a9fd53b5327d/1280x720/match/1024/512/image.jpg?ve=1&tl=1", imgHeight: 400)
}

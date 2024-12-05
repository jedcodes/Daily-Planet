import SwiftUI

struct SearchCardView: View {
    let article: NewsArticle

    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            // Async Image with URL Conversion and Error Handling
            AsyncImage(url: URL(string: article.urlToImage ?? "")) { phase in
                switch phase {
                case .empty:
                    Image("placeholder")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 100)
                        .cornerRadius(10)
                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 100)
                        .cornerRadius(10)
                case .failure:
                    Image("placeholder")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 100)
                        .cornerRadius(10)
                @unknown default:
                    Image("placeholder")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 100)
                        .cornerRadius(10)
                }
            }

            // Article Title and Source
            VStack(alignment: .leading, spacing: 5) {
                Text(article.title)
                    .font(Font.custom("Poppins-Bold", size: 16))
                    .foregroundColor(Theme.TextColor)

                Text(article.source.name)
                    .font(Font.custom("Poppins-Regular", size: 14))
                    .foregroundColor(Theme.TextColor)
            }
            .lineLimit(2) // Prevent text overflow
        }
        .padding(10)
    }
}

#Preview {
    SearchCardView(article: SampleData.MockDataTwo)
}

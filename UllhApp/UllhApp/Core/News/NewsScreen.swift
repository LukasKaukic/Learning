//
//  NewsScreen.swift
//  UllhApp
//
//  Created by Lukáš Kaukič on 17.07.2023.
//

import SwiftUI

struct NewsScreen: View {
    struct SectionData: Identifiable {
        let id = UUID()
        let sectionTitle: String
        let imageNames: [String] // Add the imageNames property for the section
        let items: [Int]
    }

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    ForEach(sections, id: \.id) { section in
                        Section(header:
                                    Text(section.sectionTitle)
                                    .font(.headline)
                                    .padding(.horizontal, 20)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ) {
                            ScrollView(.horizontal, showsIndicators: false, content: {
                                LazyHStack {
                                    ForEach(section.items, id: \.self) { itemIndex in
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(Color.white)
                                            .frame(width: 250, height: 200)
                                            .shadow(radius: 5)
                                            .padding()
                                            .overlay(
                                                Image(section.imageNames[0])
                                                    .resizable()
                                                    .scaledToFit()
                                                    .aspectRatio(contentMode: .fit)
                                                    .padding(20)
                                            )
                                    }
                                }
                            })
                        }
                    }
                }
            }
            .navigationTitle("News")
        }
    }

    var sections: [SectionData] {
          let sectionTitles = ["New Feed", "Game Recaps", "Technology", "Sports", "Entertainment"]
          let numberOfSections = sectionTitles.count
          let itemsPerSection = 10
          var sections = [SectionData]()
          for sectionIndex in 0..<numberOfSections {
              let startIndex = sectionIndex * itemsPerSection
              let endIndex = (sectionIndex + 1) * itemsPerSection
              let sectionItems = Array(startIndex..<endIndex)
              let imageNames: [String]
              if sectionIndex == 0 {
                  // Use "liga-logo" for the first section
                  imageNames = sectionItems.map { _ in "liga-logo" }
              } else {
                  // Use different images for subsequent sections
                  imageNames = sectionItems.map { _ in "ullh2-logo" } // Replace "other-image-name" with the actual image names for subsequent sections
              }
              let section = SectionData(sectionTitle: sectionTitles[sectionIndex], imageNames: imageNames, items: sectionItems)
              sections.append(section)
          }
          return sections
      }
  }

struct NewsScreen_Previews: PreviewProvider {
    static var previews: some View {
        NewsScreen()
    }
}

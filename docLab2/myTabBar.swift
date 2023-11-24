//
//  myTabBar.swift
//  docLab2
//
//  Created by user225687 on 11/24/23.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case home
    case calendar1
    case message
    case user

}

struct MyTabBar: View {
    @Binding var selectedTab: Tab
    var tabText: [Tab: String] = [
        .home: "home",
        .calendar1: "date1",
        .message: "chats",
        .user: "user"
    ]
    var body: some View {
        HStack(spacing: 12){
            ForEach(Tab.allCases, id: \.rawValue) { tab in
                HStack(alignment: .center, spacing: 8) {
                    HStack(alignment: .center, spacing: selectedTab == tab ? 8 : 0)
                    {
                        Image(tab.rawValue)
                            .frame(width: 24, height: 24)
                            .colorMultiply (selectedTab == tab ? Color("home") : Color("lightGray"))
                        Text(selectedTab == tab ? NSLocalizedString(tabText[tab] ?? "", comment:"") : "")
                            .font(Fonts.nB_14)
                            .foregroundColor(Color("home"))
                    }
                }
                .padding(12)
                .frame(maxWidth: selectedTab == tab ? 95 : 65)
                .background(selectedTab == tab ? Color("home").opacity(0.1) : .white)
                .cornerRadius(12)
                .onTapGesture {
                     withAnimation(.easeIn(duration: 0.1)){
                         selectedTab = tab
                     }
                }
            }
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 16)
        .frame(width: 375, alignment: .center)
        .background(.white)
        .overlay(Rectangle().frame(height: 1).foregroundColor(Color("divider")), alignment: .top)
    }
}

struct MyTabBar_Previews: PreviewProvider {
     static var previews: some View {
         MyTabBar(selectedTab: .constant(.home))
     }
}


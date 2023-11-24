//
//  home.swift
//  docLab2
//
//  Created by user225687 on 11/24/23.
//

import SwiftUI

struct home: View {
    var body: some View {
        let docs1 = [
            nearDocUi(
                name: "doctorName2",
                image: "doctor2",
                role: "role2",
                reviews: "reviews1",
                time: "timeOpen",
                distance: "distance"
            ),
            nearDocUi(
                name: "doctorName1",
                image: "doctor1",
                role: "role1",
                reviews: "reviews1",
                time: "timeOpen",
                distance: "distance"
            ),
        ]
        let items1 = [
            menuUi(
                name: "covid",
                image: "covid"
            ),
            menuUi(
                name: "doctor",
                image: "doctor"
            ),
            menuUi(
                name: "medicine",
                image: "medicine"
            ),
            menuUi(
                name: "hospital",
                image: "hospital"
            )
        ]
        ZStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 32) {
                                
                    headerDoc()
                                
                    VStack(alignment: .leading, spacing: 24) {
                                    
                        VStack(alignment: .leading, spacing: 20) {
                            profileDoc()
                            search()
                        }
                        .padding(0)
                                    
                        HStack(alignment: .top, spacing: 13) {
                            ForEach(items1){ item in
                                menu(menu1: item)
                            }
                        }
                        .padding(0)
                    }
                    .padding(0)
                                
                    VStack(alignment: .leading, spacing: 16) {
                        Text(NSLocalizedString("nearDoc", comment:""))
                            .font(Fonts.nearDoc)
                            .foregroundColor(Color.black)
                        ForEach(docs1){ item in
                            nearDoc(nearDocs: item)
                        }
                    }
                    .padding(0)
                    .frame(maxWidth: 327, alignment: .leading)
                }
                .padding(0)
            }
            .padding(0)
        }
        .frame(width: 375, height: .infinity)
        .padding(.top, 20)
        .background(.white)
    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}

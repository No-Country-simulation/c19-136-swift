//
//  MyProfileView.swift
//  MedicalConnect
//
//  Created by Dulce Itamar Vigueras Ballesteros on 27/07/24.
//

import SwiftUI

struct MyProfileView: View {
    
    let allMenus : [MyMenu] = [
        .init(title: .myData),
        .init(title: .myAppointments),
        .init(title: .myStudies),
        .init(title: .treatments)
    
    ]
    
    @EnvironmentObject private var router: TabRouter
    
    var body: some View {
       

        NavigationStack(path: $router.path) {
                
//                Text("Mi Perfil")
//                    .font(Font.custom("Montserrat-Bold", size: 20))
//                    .padding(16)
//                    .foregroundStyle(.white)
//                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
//                    .background(.main)
                
                List(allMenus){ option in
                    
                    NavigationLink(value: ProfileRoute.details(item: option)) {
                        Text(option.title.rawValue)
                    }
                    .frame(height: 40)

//                    NavigationLink(value: Route.login(.profile(.details(item: option)))) {
//                        Text(option.title.rawValue)
//                    }
//                    .frame(height: 40)
//
//                    
                }
                .navigationTitle("Mi Perfil")
                .font(Font.custom("Montserrat-Regular", size: 16))
                .toolbarBackground(.main, for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)

            //    .navigationDestination(for: Route.self, destination: { $0 })
                .navigationDestination(for: ProfileRoute.self, destination: { screen in
                    switch screen {
                        case .details(let item):
                            switch item.title {
                                case .myData:
                                    MyDataView()
                                case .myAppointments:
                                    MyAppointmentsHistoryView()
                                case .myStudies:
                                    myMedicalStudiesHistoryView()
                                case .treatments:
                                    MyMedicalRecordsHistory()
                            }
                    }
                })
                .listStyle(InsetListStyle())
                
            }
        .environmentObject(router)

    }
}

#Preview {
    @State var route = NavigationPath()
    return MyProfileView()
        .environmentObject(TabRouter())
}

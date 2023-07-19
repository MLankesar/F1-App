//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by Michaela Lankesaar on 2023/07/06.
//

import SwiftUI


struct ProfileSummary: View {
    @EnvironmentObject var modelData: ModelData
    var profile: Profile
    
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(profile.username)
                    .bold()
                    .font(.title)
                
                
                Text("Notifications: \(profile.prefersNotifications ? "On": "Off" )")
                Text("My F1 Team: \(profile.F1Team.rawValue)")
                Text("Upcoming Race: ") + Text(profile.goalDate, style: .date)
                
                
                Divider()
                
                
                VStack(alignment: .leading) {
                    Text("Watched Races")
                        .font(.headline)
                    
                    
                                        ScrollView(.horizontal) {
                                            HStack {
                                                Text(profile.goalDate, style: .date)
                                                Text(profile.goalDate, style: .date)
                                                Text(profile.goalDate, style: .date)
                                            }
                                            .padding(.bottom)
                                        }
                                    }
                    
                    
                    Divider()
                    
                    
                    VStack(alignment: .leading) {
                        Text("Past Races")
                            .font(.headline)
                        
                        Text(profile.goalDate, style: .date)
                        Text(profile.goalDate, style: .date)
                        Text(profile.goalDate, style: .date)
                    }
                }
            }
        }
    }
    
    
    struct ProfileSummary_Previews: PreviewProvider {
        static var previews: some View {
            ProfileSummary(profile: Profile.default)
                .environmentObject(ModelData())
        }
    }
    
    
    
    


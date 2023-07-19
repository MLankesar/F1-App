//
//  ProfileEditor.swift
//  Landmarks
//
//  Created by Michaela Lankesaar on 2023/07/06.
//

import SwiftUI


struct ProfileEditor: View {
    @Binding var profile: Profile
    
    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value: -1, to: profile.goalDate)!
        let max = Calendar.current.date(byAdding: .year, value: 1, to: profile.goalDate)!
        return min...max
    }
    
    var body: some View {
        List {
            HStack {
                Text("Username").bold()
                Divider()
                TextField("Username", text: $profile.username)
            }
            
            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notifications").bold()
            }
            
            VStack(alignment: .leading, spacing: 20) {
                Text("F1 Teams").bold()
                
                Picker("My F1 Team", selection: $profile.F1Team) {
                    ForEach(Profile.Team.allCases) { season in
                        Text(season.rawValue).tag(season)
                    }
                }
                .pickerStyle(.wheel)
            }


            DatePicker(selection: $profile.goalDate, in: dateRange, displayedComponents: .date) {
                Text("Upcoming Race").bold()
            }
        }
    }
}


struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}

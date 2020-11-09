//
//  TaskListView.swift
//  ToDoIsh
//
//  Created by Sofia Rodriguez Morales on 11/8/20.
//

import SwiftUI

struct TaskListView: View {
    
    var tasks: [Task] = testDataTasks
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){
                List{
                    ForEach(self.tasks) { task in
                        TaskListCell(task: task)
                        Text("")
                    }
                    .onDelete(perform: { indexSet in
                        //later
                    })
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    HStack{
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50, alignment: .center)
                        Text("Add Task")
                            .font(.body)
                            .fontWeight(.bold)
                    }
                })
                .padding()
                .accentColor(Color(UIColor.systemRed))
            }
            .navigationBarTitle("Tasks")
        }
        
    }
}

struct TaskListCell: View {
    var task: Task
    var body: some View {
        HStack{
            Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 20, height: 20, alignment: .center)
            Text(task.title)
                .font(.body)
        }
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}

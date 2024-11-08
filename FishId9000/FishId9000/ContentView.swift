//
//  ContentView.swift
//  FishId9000
//
//  Created by Laura Tucker on 2024-11-07.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var dives: [Dive]
    private var fishies: [Fish] = [
        .init(fishName: "Blue Parrotfish"),
        .init(fishName: "Stoplight Parrotfish"),
        .init(fishName: "Redtail Parrotfish"),
        .init(fishName: "Bluelip Parrotfish"),
        .init(fishName: "Midnight Parrotfish"),
        .init(fishName: "Yellowtail Parrotfish"),
        .init(fishName: "Rainbow Parrotfish"),
    ]
    @State var isShowing = false
//    @State var newFish: Fish?

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(dives) { item in
                    Text("TODO")
//                    NavigationLink {
//                        Text("Fish at \(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard)) \(item.fish?.fishName ?? "No Fish")")
//                    } label: {
//                        Text(item.fish?.fishName ?? "No Fish")
//                    }
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
            .sheet(isPresented: $isShowing) {
                
            }
//            .sheet(isPresented: $isShowing) {
//                FishListView(fishies: fishies, selected: $newFish)
//            }
//            .onChange(of: $newFish.wrappedValue) { _, newValue in
//                withAnimation {
//                    isShowing.toggle()
//                    let newItem = Item(timestamp: Date(), fish: newValue!)
//                    modelContext.insert(newItem)
//                }
//            }
        } detail: {
            Text("Select an item")
        }
    }

    private func addItem() {
        //isShowing.toggle()
    }

    private func deleteItems(offsets: IndexSet) {
//        withAnimation {
//            for index in offsets {
//                modelContext.delete(items[index])
//            }
//        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Dive.self, inMemory: true)
}

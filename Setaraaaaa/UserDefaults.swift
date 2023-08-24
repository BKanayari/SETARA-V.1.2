//
//  UserDefaults.swift
//  Setaraaaaa
//
//  Created by Patrick Samuel Owen Saritua Sinaga on 11/04/23.
//

import Foundation

class SharedPreferences: Codable {
    static let shared = SharedPreferences()

    func add(participant: Participant) {
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(participant)
            UserDefaults.standard.set(data, forKey: participant.name)
        } catch {
            print("Unable to Encode Participant (\(error))")
        }
    }

    func getParitcipant(name: String) -> Participant? {
        if let data = UserDefaults.standard.data(forKey: name) {
            do {
                // Create JSON Decoder
                let decoder = JSONDecoder()
                // Decode Note
                let participant = try decoder.decode(Participant.self, from: data)
                return participant
            } catch {
                print("Unable to Decode Note (\(error))")
            }
        }
        return nil
    }

    func addFood(name: String, food: ParticipantItem) {
        if let participant = getParitcipant(name: name) {
            var newParticipant = participant
            newParticipant.items.append(food)
            add(participant: newParticipant)
        } else {
            print("Ngk masokk")
        }
    }

    func deleteFood(name: String, index: Int) {
        if let participant = getParitcipant(name: name) {
            var newparticipant = participant
            newparticipant.total = newparticipant.total - newparticipant.items[index].price
            newparticipant.items.remove(at: index)
            add(participant: newparticipant)
        }
    }

    func deleteAllTransaction(name: String, index: Int) {
        if let participant = getParitcipant(name: name) {
            var newparticipant = participant
            newparticipant.total = 0
            newparticipant.items.removeAll()
            add(participant: newparticipant)
        }
    }
}

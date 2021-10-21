//
//  UserDefault.swift
//  OneBank
//
//  Created by Karim Azmi on 05/07/2021.
//
import Foundation

// MARK: - Class
public final class UserDefault {
    // MARK: - Enumerations
    public enum Key: String {
        case `default` = ""
    }
    
    // MARK: - Static Variables
    public static let shared = UserDefault()
    
    // MARK: - Variables
    
    public private(set) var standard: UserDefaults
    
    // MARK: - Functions
    
    private init() {
        self.standard = UserDefaults.standard
    }
    
    /// Method to clear all Values UserDefaults
    public func clearAll() {
        for (key, _) in self.standard.dictionaryRepresentation() {
            self.standard.removeObject(forKey: key)
        }
    }
    
    /// Method to fetch all values in UserDefaults
    /// - Returns: A dictionary of String Keys and Any Values
    public func fetchAll() -> [String: Any] {
        return self.standard.dictionaryRepresentation()
    }
    
    /// Method to clear all Values except some Values UserDefaults
    /// - Parameter keys: Array of keys to exclude while clearing all values
    public func clearAll(except keys: [Key]) {
        for (key, _) in self.standard.dictionaryRepresentation() where !keys.contains(Key(rawValue: key) ?? Key.default) {
            self.standard.removeObject(forKey: key)
        }
    }
    
    /// Method to clear all Values except some Values UserDefaults
    /// - Parameter keys: Array of keys to exclude while clearing all values
    public func clearAll(except keys: [String]) {
        for (key, _) in self.standard.dictionaryRepresentation() where !keys.contains(key) {
            self.standard.removeObject(forKey: key)
        }
    }
    
    /// Method to save any object in UserDefaults
    /// - Parameters:
    ///     - value: Value to be saved.
    ///     - forKey: Key for the value to be saved.
    public func save(_ value: Any, forKey: Key) {
        self.standard.set(value, forKey: forKey.rawValue)
    }
    /// Method to save any object in UserDefaults
    /// - Parameters:
    ///     - value: Value to be saved.
    ///     - forKey: Key for the value to be saved.
    public func save(_ value: Any, forKey: String) {
        self.standard.set(value, forKey: forKey)
    }
    
    /// Method to clear a specific Value in UserDefaults
    /// - Parameter forKey: Specific key to clear
    public func clear(forKey: Key) {
        self.standard.removeObject(forKey: forKey.rawValue)
    }
    /// Method to clear a specific Value in UserDefaults
    /// - Parameter forKey: Specific key to clear
    public func clear(forKey: String) {
        self.standard.removeObject(forKey: forKey)
    }
    
    /// Method to clear multible Values UserDefaults
    /// - Parameter keys: Specific keys to clear
    public func clear(keys: [Key]) {
        for key in keys {
            self.standard.removeObject(forKey: key.rawValue)
        }
    }
    /// Method to clear multible Values UserDefaults
    /// - Parameter keys: Specific keys to clear 
    public func clear(keys: [String]) {
        for key in keys {
            self.standard.removeObject(forKey: key)
        }
    }
    
    /// Method to get string in UserDefaults
    /// - Parameter key: Key for the value to be retrieved.
    /// - Returns: The value of the key.
    public func string(forKey: Key) -> String {
        return self.standard.string(forKey: forKey.rawValue) ?? ""
    }
    /// Method to get string in UserDefaults
    /// - Parameter key: Key for the value to be retrieved.
    /// - Returns: The value of the key.
    public func string(forKey: String) -> String {
        return self.standard.string(forKey: forKey) ?? ""
    }
    
    /// Method to get Int in UserDefaults
    /// - Parameter key: Key for the value to be retrieved.
    /// - Returns: The value of the key.
    public func int(forKey: Key) -> Int {
        return self.standard.integer(forKey: forKey.rawValue)
    }
    /// Method to get Int in UserDefaults
    /// - Parameter key: Key for the value to be retrieved.
    /// - Returns: The value of the key.
    public func int(forKey: String) -> Int {
        return self.standard.integer(forKey: forKey)
    }
    
    /// Method to get Float in UserDefaults
    /// - Parameter key: Key for the value to be retrieved.
    /// - Returns: The value of the key.
    public func float(forKey: Key) -> Float {
        return self.standard.float(forKey: forKey.rawValue)
    }
    /// Method to get Float in UserDefaults
    /// - Parameter key: Key for the value to be retrieved.
    /// - Returns: The value of the key.
    public func float(forKey: String) -> Float {
        return self.standard.float(forKey: forKey)
    }
    
    /// Method to get Double in UserDefaults
    /// - Parameter key: Key for the value to be retrieved.
    /// - Returns: The value of the key.
    public func double(forKey: Key) -> Double {
        return self.standard.double(forKey: forKey.rawValue)
    }
    /// Method to get Double in UserDefaults
    /// - Parameter key: Key for the value to be retrieved.
    /// - Returns: The value of the key.
    public func double(forKey: String) -> Double {
        return self.standard.double(forKey: forKey)
    }
    
    /// Method to get Boolean in UserDefaults
    /// - Parameter key: Key for the value to be retrieved.
    /// - Returns: The value of the key.
    public func boolean(forKey: Key) -> Bool {
        return self.standard.bool(forKey: forKey.rawValue)
    }
    /// Method to get Boolean in UserDefaults
    /// - Parameter key: Key for the value to be retrieved.
    /// - Returns: The value of the key.
    public func boolean(forKey: String) -> Bool {
        return self.standard.bool(forKey: forKey)
    }
    
    /// Method to get Array in UserDefaults
    /// - Parameter key: Key for the value to be retrieved.
    /// - Returns: The value of the key.
    public func array(forKey: Key) -> [Any] {
        return self.standard.array(forKey: forKey.rawValue) ?? []
    }
    /// Method to get Array in UserDefaults
    /// - Parameter key: Key for the value to be retrieved.
    /// - Returns: The value of the key.
    public func array(forKey: String) -> [Any] {
        return self.standard.array(forKey: forKey) ?? []
    }
    
    /// Method to get Dictionary in UserDefaults
    /// - Parameter key: Key for the value to be retrieved.
    /// - Returns: The value of the key.
    public func dictionary(forKey: Key) -> [String: Any] {
        return self.standard.dictionary(forKey: forKey.rawValue) ?? [:]
    }
    /// Method to get Dictionary in UserDefaults
    /// - Parameter key: Key for the value to be retrieved.
    /// - Returns: The value of the key.
    public func dictionary(forKey: String) -> [String: Any] {
        return self.standard.dictionary(forKey: forKey) ?? [:]
    }
}

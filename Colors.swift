import SwiftUI

public enum NCColor {
    // Primary Brand Colors
    public static let primary = Color(hex: "bdf641") // Vibrant energy
    public static let dark = Color(hex: "141414")    // Foundation
    public static let greyDark = Color(hex: "393937")   // Primary text
    public static let greyMedium = Color(hex: "959493") // Secondary elements
    public static let greyLight = Color(hex: "e2dedb")  // Subtle elements
    
    // We also need to add the Color hex initializer helper
    private static func color(hex: String) -> Color {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        
        var rgb: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&rgb)
        
        let r = Double((rgb & 0xFF0000) >> 16) / 255.0
        let g = Double((rgb & 0x00FF00) >> 8) / 255.0
        let b = Double(rgb & 0x0000FF) / 255.0
        
        return Color(red: r, green: g, blue: b)
    }
}

public import Playdate

extension Graphics {
    
    /// Clears bitmap, filling with the given color style.
    public static func clearBitmap(bitmap: OpaquePointer, colorStyle: ColorStyle) {
        colorStyle.withColorStyle {
            graphicsAPI.clearBitmap.unsafelyUnwrapped(bitmap, $0)
        }
    }
    
    
    /// Allocates and returns a new width by height LCDBitmap filled with color style.
    public static func newBitmap(width: Int32, height: Int32, colorStyle: ColorStyle) -> OpaquePointer? {
        colorStyle.withColorStyle {
            graphicsAPI.newBitmap.unsafelyUnwrapped(width, height, $0)
        }
    }
    
    
    /// Draws an ellipse inside the rectangle {x, y, width, height} of width lineWidth (inset from the rectangle bounds). If `startAngle != _endAngle`, this draws an arc between the given angles. Angles are given in degrees, clockwise from due north.
    public static func drawEllipse(x: Int32, y: Int32, width: Int32, height: Int32, lineWidth: Int32, startAngle: Float, endAngle: Float, colorStyle: ColorStyle) {
        colorStyle.withColorStyle {
            graphicsAPI.drawEllipse.unsafelyUnwrapped(x, y, width, height, lineWidth, startAngle, endAngle, $0)
        }
    }
    
    /// Fills an ellipse inside the rectangle {x, y, width, height}. If `startAngle != _endAngle`, this draws a wedge/Pacman between the given angles. Angles are given in degrees, clockwise from due north.
    public static func fillEllipse(x: Int32, y: Int32, width: Int32, height: Int32, startAngle: Float, endAngle: Float, colorStyle: ColorStyle) {
        colorStyle.withColorStyle {
            graphicsAPI.fillEllipse.unsafelyUnwrapped(x, y, width, height, startAngle, endAngle, $0)
        }
    }
    
    
    /// Draws a line from x1, y1 to x2, y2 with a stroke width of width.
    public static func drawLine(x1: Int32, y1: Int32, x2: Int32, y2: Int32, width: Int32, colorStyle: ColorStyle) {
        colorStyle.withColorStyle {
            graphicsAPI.drawLine.unsafelyUnwrapped(x1, y1, x2, y2, width, $0)
        }
    }
    
    
    /// Draws a width by height rect at x, y.
    public static func drawRect(x: Int32, y: Int32, width: Int32, height: Int32, colorStyle: ColorStyle) {
        colorStyle.withColorStyle {
            graphicsAPI.drawRect.unsafelyUnwrapped(x, y, width, height, $0)
        }
    }
    
    
    /// Draws a filled width by height rect at x, y.
    public static func fillRect(x: Int32, y: Int32, width: Int32, height: Int32, colorStyle: ColorStyle) {
        colorStyle.withColorStyle {
            graphicsAPI.fillRect.unsafelyUnwrapped(x, y, width, height, $0)
        }
    }
    
    
    /// Draws a filled triangle with points at x1, y1, x2, y2, and x3, y3.
    public static func fillTriangle(x1: Int32, y1: Int32, x2: Int32, y2: Int32, x3: Int32, y3: Int32, colorStyle: ColorStyle) {
        colorStyle.withColorStyle {
            graphicsAPI.fillTriangle.unsafelyUnwrapped(x1, y1, x2, y2, x3, y3, $0)
        }
    }
    
    
    /// Fills the polygon with vertices at the given coordinates using the given color and fill, or winding, rule.
    public static func fillPolygon(nPoints: Int32, points: UnsafeMutablePointer<Int32>?, colorStyle: ColorStyle, fillRule: LCDPolygonFillRule) {
        colorStyle.withColorStyle {
            graphicsAPI.fillPolygon.unsafelyUnwrapped(nPoints, points, $0, fillRule)
        }
    }
}

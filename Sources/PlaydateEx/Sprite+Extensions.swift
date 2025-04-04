public import Playdate

extension Sprite {
    public func withImage(_ block: () -> Void) {
        Graphics.pushContext(target: image.unsafelyUnwrapped)
        block()
        Graphics.popContext()
    }
}

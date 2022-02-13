package objc_Foundation

import NS "core:sys/darwin/Foundation"

@(objc_class="CALayer")
Layer :: struct { using _: NS.Object }

@(objc_class="NSResponder")
Responder :: struct {using _: Object}

@(objc_class="NSView")
View :: struct {using _: Responder}

@(objc_class="NSWindow")
Window :: struct {using _: Responder}

@(objc_type=Window, objc_name="contentView")
Window_contentView :: proc(self: ^Window) -> ^View {
	return msgSend(^View, self, "contentView")
}

@(objc_type=View, objc_name="layer")
View_layer :: proc(self: ^View) -> ^Layer {
	return msgSend(^Layer, self, "layer")
}

@(objc_type=View, objc_name="setLayer")
View_setLayer :: proc(self: ^View, layer: ^Layer) {
	msgSend(nil, self, "setLayer:", layer)
}


@(objc_type=View, objc_name="wantsLayer")
View_wantsLayer :: proc(self: ^View) -> BOOL {
	return msgSend(BOOL, self, "wantsLayer")
}

@(objc_type=View, objc_name="setWantsLayer")
View_setWantsLayer :: proc(self: ^View, wantsLayer: BOOL) {
	msgSend(nil, self, "setWantsLayer:", wantsLayer)
}

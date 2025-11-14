const std = @import("std");
const sdl = @import("sdl3");

pub fn main() !void {
    if (!sdl.Init(.Video))
        @panic("Failed to init the video subsystem!");
    defer sdl.Quit();

    const window: *sdl.Window = sdl.CreateWindow("sus", 800, 600, sdl.WFResizable | sdl.WFMaximized).?;
    defer sdl.DestroyWindow(window);

    var isRunning: bool = true;
    var event: sdl.Event = undefined;

    while (isRunning) {
        while (sdl.PollEvent(&event)) {
            if (event.type == sdl.EventQuit)
                isRunning = false;
        }
    }
}

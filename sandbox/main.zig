const std = @import("std");
const sdl = @import("sdl3");

pub fn main() !void {
    if (!sdl.Init(.{ .Video = true }))
        std.debug.panic("Failed to init the video subsystem: {s}", .{sdl.GetError()});
    defer sdl.Quit();

    const window: *sdl.Window = sdl.CreateWindow("sus", 800, 600, .{ .Resizable = true, .Maximized = true }).?;
    defer sdl.DestroyWindow(window);

    var isRunning: bool = true;
    var event: sdl.Event = undefined;

    const gpudevice: *sdl.GPUDevice = sdl.CreateGPUDevice(.{ .DXIL = true, .SPIRV = true }, true, null) orelse {
        std.debug.panic("Failed to create GPU Device: {s}", .{sdl.GetError()});
    };
    defer sdl.DestroyGPUDevice(gpudevice);

    if (!sdl.ClaimWindowForGPUDevice(gpudevice, window))
        std.debug.panic("Failed to claim Window for GPU Device: {s}", .{sdl.GetError()});
    defer sdl.ReleaseWindowFromGPUDevice(gpudevice, window);

    while (isRunning) {
        while (sdl.PollEvent(&event)) {
            if (event.type == sdl.EventQuit)
                isRunning = false;
        }

        const cmdbuf = sdl.AcquireGPUCommandBuffer(gpudevice) orelse {
            std.debug.panic("Failed to acquire Command Buffer: {s}", .{sdl.GetError()});
        };

        var sctexture: ?*sdl.GPUTexture = undefined;
        if (!sdl.AcquireGPUSwapchainTexture(cmdbuf, window, &sctexture, null, null)) {
            std.debug.panic("Failed to acquire Swapchain Texture: {s}", .{sdl.GetError()});
        }

        if (!sdl.SubmitGPUCommandBuffer(cmdbuf)) {
            std.debug.panic("Failed to submit GPU command buffer: {s}", .{sdl.GetError()});
        }
    }
}

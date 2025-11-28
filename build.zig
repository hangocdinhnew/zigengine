const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    // const mod = b.addModule("core", .{
    //     .root_source_file = b.path("core/root.zig"),
    //     .target = target,
    // });

    const sdl3mod = b.addModule("sdl3", .{
        .root_source_file = b.path("lib/sdl3.zig"),
        .target = target,
    });

    if (builtin.os.tag == .windows)
        sdl3mod.addIncludePath(b.path("external/SDL-headers/"));

    const exe = b.addExecutable(.{
        .name = "sandbox",
        .root_module = b.createModule(.{
            .root_source_file = b.path("sandbox/main.zig"),
            .target = target,
            .optimize = optimize,
            .imports = &.{
                .{ .name = "sdl3", .module = sdl3mod },
            },
        }),
    });

    exe.root_module.link_libc = true;

    if (builtin.os.tag == .macos) {
        exe.root_module.linkFramework("Cocoa", .{});
        exe.root_module.linkFramework("Carbon", .{});
        exe.root_module.linkFramework("Foundation", .{});
        exe.root_module.linkFramework("CoreVideo", .{});
        exe.root_module.linkFramework("AVFoundation", .{});
        exe.root_module.linkFramework("AudioToolbox", .{});
        exe.root_module.linkFramework("CoreMotion", .{});
        exe.root_module.linkFramework("CoreMedia", .{});
        exe.root_module.linkFramework("UniformTypeIdentifiers", .{ .weak = true });
        exe.root_module.linkFramework("CoreAudio", .{});
        exe.root_module.linkFramework("GameController", .{});
        exe.root_module.linkFramework("CoreHaptics", .{});
        exe.root_module.linkFramework("IOKit", .{});
        exe.root_module.linkFramework("ForceFeedback", .{});
        exe.root_module.linkFramework("QuartzCore", .{});
        exe.root_module.linkFramework("Metal", .{});
    } else if (builtin.os.tag == .ios) {
        exe.root_module.linkFramework("UIKit", .{});
        exe.root_module.linkFramework("Foundation", .{});
        exe.root_module.linkFramework("CoreVideo", .{});
        exe.root_module.linkFramework("AVFoundation", .{});
        exe.root_module.linkFramework("AudioToolbox", .{});
        exe.root_module.linkFramework("CoreMotion", .{});
        exe.root_module.linkFramework("GameController", .{});
        exe.root_module.linkFramework("CoreHaptics", .{});
        exe.root_module.linkFramework("QuartzCore", .{});
        exe.root_module.linkFramework("Metal", .{});
    }

    if (builtin.os.tag == .windows)
        exe.root_module.addLibraryPath(b.path("external/SDL/"));
    exe.root_module.linkSystemLibrary("sdl3", .{ .preferred_link_mode = .static });

    b.installArtifact(exe);

    const run_step = b.step("run", "Run the app");

    const run_cmd = b.addRunArtifact(exe);
    run_step.dependOn(&run_cmd.step);

    run_cmd.step.dependOn(b.getInstallStep());

    if (b.args) |args| {
        run_cmd.addArgs(args);
    }
}

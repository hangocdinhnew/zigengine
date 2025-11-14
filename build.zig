const std = @import("std");

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
    exe.root_module.linkSystemLibrary("sdl3", .{});

    b.installArtifact(exe);

    const run_step = b.step("run", "Run the app");

    const run_cmd = b.addRunArtifact(exe);
    run_step.dependOn(&run_cmd.step);

    run_cmd.step.dependOn(b.getInstallStep());

    if (b.args) |args| {
        run_cmd.addArgs(args);
    }
}

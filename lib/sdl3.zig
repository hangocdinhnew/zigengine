const cSDL3 = @cImport({
    @cInclude("SDL3/SDL.h");
});
const std = @import("std");

// Value Aliases
pub const EventAudioDeviceAdded = cSDL3.SDL_EVENT_AUDIO_DEVICE_ADDED;
pub const EventAudioDeviceRemoved = cSDL3.SDL_EVENT_AUDIO_DEVICE_REMOVED;
pub const EventCameraDeviceAdded = cSDL3.SDL_EVENT_CAMERA_DEVICE_ADDED;
pub const EventCameraDeviceApproved = cSDL3.SDL_EVENT_CAMERA_DEVICE_APPROVED;
pub const EventClipboardUpdate = cSDL3.SDL_EVENT_CLIPBOARD_UPDATE;
pub const EventDisplayAdded = cSDL3.SDL_EVENT_DISPLAY_ADDED;
pub const EventDisplayRemoved = cSDL3.SDL_EVENT_DISPLAY_REMOVED;
pub const EventGamepadAdded = cSDL3.SDL_EVENT_GAMEPAD_ADDED;
pub const EventGamepadRemoved = cSDL3.SDL_EVENT_GAMEPAD_REMOVED;
pub const EventGamepadRemapped = cSDL3.SDL_EVENT_GAMEPAD_REMAPPED;
pub const EventGamepadAxisMotion = cSDL3.SDL_EVENT_GAMEPAD_AXIS_MOTION;
pub const EventGamepadButtonDown = cSDL3.SDL_EVENT_GAMEPAD_BUTTON_DOWN;
pub const EventGamepadButtonUp = cSDL3.SDL_EVENT_GAMEPAD_BUTTON_UP;
pub const EventGamepadTouchpadDown = cSDL3.SDL_EVENT_GAMEPAD_TOUCHPAD_DOWN;
pub const EventGamepadTouchpadMotion = cSDL3.SDL_EVENT_GAMEPAD_TOUCHPAD_MOTION;
pub const EventGamepadSensorUpdate = cSDL3.SDL_EVENT_GAMEPAD_SENSOR_UPDATE;
pub const EventDropBegin = cSDL3.SDL_EVENT_DROP_BEGIN;
pub const EventDropFile = cSDL3.SDL_EVENT_DROP_FILE;
pub const EventDropText = cSDL3.SDL_EVENT_DROP_TEXT;
pub const EventFingerDown = cSDL3.SDL_EVENT_FINGER_DOWN;
pub const EventFingerUp = cSDL3.SDL_EVENT_FINGER_UP;
pub const EventFingerMotion = cSDL3.SDL_EVENT_FINGER_MOTION;
pub const EventPinchBegin = cSDL3.SDL_EVENT_PINCH_BEGIN;
pub const EventPinchUpdate = cSDL3.SDL_EVENT_PINCH_UPDATE;
pub const EventPinchEnd = cSDL3.SDL_EVENT_PINCH_END;
pub const EventKeyboardAdded = cSDL3.SDL_EVENT_KEYBOARD_ADDED;
pub const EventKeyboardRemoved = cSDL3.SDL_EVENT_KEYBOARD_REMOVED;
pub const EventKeyDown = cSDL3.SDL_EVENT_KEY_DOWN;
pub const EventKeyUp = cSDL3.SDL_EVENT_KEY_UP;
pub const EventJoystickAdded = cSDL3.SDL_EVENT_JOYSTICK_ADDED;
pub const EventJoystickRemoved = cSDL3.SDL_EVENT_JOYSTICK_REMOVED;
pub const EventJoystickUpdateComplete = cSDL3.SDL_EVENT_JOYSTICK_UPDATE_COMPLETE;
pub const EventJoystickAxisMotion = cSDL3.SDL_EVENT_JOYSTICK_AXIS_MOTION;
pub const EventJoystickBallMotion = cSDL3.SDL_EVENT_JOYSTICK_BALL_MOTION;
pub const EventJoystickHatMotion = cSDL3.SDL_EVENT_JOYSTICK_HAT_MOTION;
pub const EventJoystickBatteryUpdated = cSDL3.SDL_EVENT_JOYSTICK_BATTERY_UPDATED;
pub const EventJoystickButtonDown = cSDL3.SDL_EVENT_JOYSTICK_BUTTON_DOWN;
pub const EventJoystickButtonUp = cSDL3.SDL_EVENT_JOYSTICK_BUTTON_UP;
pub const EventMouseAdded = cSDL3.SDL_EVENT_MOUSE_ADDED;
pub const EventMouseRemoved = cSDL3.SDL_EVENT_MOUSE_REMOVED;
pub const EventMouseMotion = cSDL3.SDL_EVENT_MOUSE_MOTION;
pub const EventMouseButtonDown = cSDL3.SDL_EVENT_MOUSE_BUTTON_DOWN;
pub const EventMouseButtonUp = cSDL3.SDL_EVENT_MOUSE_BUTTON_UP;
pub const EventMouseWheel = cSDL3.SDL_EVENT_MOUSE_WHEEL;
pub const EventPenProximityIn = cSDL3.SDL_EVENT_PEN_PROXIMITY_IN;
pub const EventPenProximityOut = cSDL3.SDL_EVENT_PEN_PROXIMITY_OUT;
pub const EventPenDown = cSDL3.SDL_EVENT_PEN_DOWN;
pub const EventPenUp = cSDL3.SDL_EVENT_PEN_UP;
pub const EventPenMotion = cSDL3.SDL_EVENT_PEN_MOTION;
pub const EventPenButtonDown = cSDL3.SDL_EVENT_PEN_BUTTON_DOWN;
pub const EventPenButtonUp = cSDL3.SDL_EVENT_PEN_BUTTON_UP;
pub const EventPenAxis = cSDL3.SDL_EVENT_PEN_AXIS;
pub const EventQuit = cSDL3.SDL_EVENT_QUIT;
pub const EventSensorUpdate = cSDL3.SDL_EVENT_SENSOR_UPDATE;
pub const EventTextEditing = cSDL3.SDL_EVENT_TEXT_EDITING;
pub const EventTextEditingCandidates = cSDL3.SDL_EVENT_TEXT_EDITING_CANDIDATES;
pub const EventTextInput = cSDL3.SDL_EVENT_TEXT_INPUT;
pub const EventUser = cSDL3.SDL_EVENT_USER;
pub const EventWindowResized = cSDL3.SDL_EVENT_WINDOW_RESIZED;
pub const EventWindowMoved = cSDL3.SDL_EVENT_WINDOW_MOVED;
pub const EventCommon = cSDL3.SDL_EVENT_COMMON;

pub const WFFullscreen = cSDL3.SDL_WINDOW_FULLSCREEN;
pub const WFOpenGL = cSDL3.SDL_WINDOW_OPENGL;
pub const WFOccluded = cSDL3.SDL_WINDOW_OCCLUDED;
pub const WFHidden = cSDL3.SDL_WINDOW_HIDDEN;
pub const WFBorderless = cSDL3.SDL_WINDOW_BORDERLESS;
pub const WFResizable = cSDL3.SDL_WINDOW_RESIZABLE;
pub const WFMinimized = cSDL3.SDL_WINDOW_MINIMIZED;
pub const WFMaximized = cSDL3.SDL_WINDOW_MAXIMIZED;
pub const WFMouseGrabbed = cSDL3.SDL_WINDOW_MOUSE_GRABBED;
pub const WFInputFocus = cSDL3.SDL_WINDOW_INPUT_FOCUS;
pub const WFMouseFocus = cSDL3.SDL_WINDOW_MOUSE_FOCUS;
pub const WFExternal = cSDL3.SDL_WINDOW_EXTERNAL;
pub const WFModal = cSDL3.SDL_WINDOW_MODAL;
pub const WFHighPixelDensity = cSDL3.SDL_WINDOW_HIGH_PIXEL_DENSITY;
pub const WFMouseCapture = cSDL3.SDL_WINDOW_MOUSE_CAPTURE;
pub const WFMouseRelativeMode = cSDL3.SDL_WINDOW_MOUSE_RELATIVE_MODE;
pub const WFAlwaysOnTop = cSDL3.SDL_WINDOW_ALWAYS_ON_TOP;
pub const WFUtility = cSDL3.SDL_WINDOW_UTILITY;
pub const WFTooltip = cSDL3.SDL_WINDOW_TOOLTIP;
pub const WFPopupMenu = cSDL3.SDL_WINDOW_POPUP_MENU;
pub const WFKeyboardGrabbed = cSDL3.SDL_WINDOW_KEYBOARD_GRABBED;
pub const WFVulkan = cSDL3.SDL_WINDOW_VULKAN;
pub const WFMetal = cSDL3.SDL_WINDOW_METAL;
pub const WFTransparent = cSDL3.SDL_WINDOW_TRANSPARENT;
pub const WFNotFocusable = cSDL3.SDL_WINDOW_NOT_FOCUSABLE;

// Data Structure Aliases.
pub const Window = cSDL3.SDL_Window;
pub const Event = cSDL3.SDL_Event;

pub const GPUDevice = cSDL3.SDL_GPUDevice;
pub const GPUCommandBuffer = cSDL3.SDL_GPUCommandBuffer;
pub const GPUTexture = cSDL3.SDL_GPUTexture;

// Function Alias
pub const GetError = cSDL3.SDL_GetError;

pub const PollEvent = cSDL3.SDL_PollEvent;

pub const DestroyWindow = cSDL3.SDL_DestroyWindow;

pub const ClaimWindowForGPUDevice = cSDL3.SDL_ClaimWindowForGPUDevice;
pub const AcquireGPUCommandBuffer = cSDL3.SDL_AcquireGPUCommandBuffer;
pub const ReleaseWindowFromGPUDevice = cSDL3.SDL_ReleaseWindowFromGPUDevice;
pub const SubmitGPUCommandBuffer = cSDL3.SDL_SubmitGPUCommandBuffer;
pub const DestroyGPUDevice = cSDL3.SDL_DestroyGPUDevice;

pub const Quit = cSDL3.SDL_Quit;

// Helper functions (PRIVATE)
fn upperAll(comptime s: []const u8) []const u8 {
    comptime {
        var buf: [s.len]u8 = undefined;
        for (s, 0..) |ch, i| {
            buf[i] = std.ascii.toUpper(ch);
        }
        return buf[0..];
    }
}

// Enums
pub const InitFlags = struct {
    Audio: bool = false,
    Video: bool = false,
    Joystick: bool = false,
    Haptic: bool = false,
    Gamepad: bool = false,
    Events: bool = false,
    Sensor: bool = false,
    Camera: bool = false,

    pub fn toSDLFlags(self: InitFlags) u32 {
        var bits: u32 = 0;

        inline for (@typeInfo(@This()).@"struct".fields) |field| {
            if (@field(self, field.name)) {
                const flag = @field(cSDL3, "SDL_INIT_" ++ upperAll(field.name));
                bits |= flag;
            }
        }

        return bits;
    }
};

const WindowFlagsInternal = struct {
    pub const SDL_WINDOW_FULLSCREEN: u64 = cSDL3.SDL_WINDOW_FULLSCREEN;
    pub const SDL_WINDOW_OPENGL: u64 = cSDL3.SDL_WINDOW_OPENGL;
    pub const SDL_WINDOW_OCCLUDED: u64 = cSDL3.SDL_WINDOW_OCCLUDED;
    pub const SDL_WINDOW_HIDDEN: u64 = cSDL3.SDL_WINDOW_HIDDEN;
    pub const SDL_WINDOW_BORDERLESS: u64 = cSDL3.SDL_WINDOW_BORDERLESS;
    pub const SDL_WINDOW_RESIZABLE: u64 = cSDL3.SDL_WINDOW_RESIZABLE;
    pub const SDL_WINDOW_MINIMIZED: u64 = cSDL3.SDL_WINDOW_MINIMIZED;
    pub const SDL_WINDOW_MAXIMIZED: u64 = cSDL3.SDL_WINDOW_MAXIMIZED;
    pub const SDL_WINDOW_MOUSEGRABBED: u64 = cSDL3.SDL_WINDOW_MOUSE_GRABBED;
    pub const SDL_WINDOW_INPUTFOCUS: u64 = cSDL3.SDL_WINDOW_INPUT_FOCUS;
    pub const SDL_WINDOW_MOUSEFOCUS: u64 = cSDL3.SDL_WINDOW_MOUSE_FOCUS;
    pub const SDL_WINDOW_EXTERNAL: u64 = cSDL3.SDL_WINDOW_EXTERNAL;
    pub const SDL_WINDOW_MODAL: u64 = cSDL3.SDL_WINDOW_MODAL;
    pub const SDL_WINDOW_HIGHPIXELDENSITY: u64 = cSDL3.SDL_WINDOW_HIGH_PIXEL_DENSITY;
    pub const SDL_WINDOW_MOUSECAPTURE: u64 = cSDL3.SDL_WINDOW_MOUSE_CAPTURE;
    pub const SDL_WINDOW_MOUSERELATIVEMODE: u64 = cSDL3.SDL_WINDOW_MOUSE_RELATIVE_MODE;
    pub const SDL_WINDOW_ALWAYSONTOP: u64 = cSDL3.SDL_WINDOW_ALWAYS_ON_TOP;
    pub const SDL_WINDOW_UTILITY: u64 = cSDL3.SDL_WINDOW_UTILITY;
    pub const SDL_WINDOW_TOOLTIP: u64 = cSDL3.SDL_WINDOW_TOOLTIP;
    pub const SDL_WINDOW_POPUPMENU: u64 = cSDL3.SDL_WINDOW_POPUP_MENU;
    pub const SDL_WINDOW_KEYBOARDGRABBED: u64 = cSDL3.SDL_WINDOW_KEYBOARD_GRABBED;
    pub const SDL_WINDOW_VULKAN: u64 = cSDL3.SDL_WINDOW_VULKAN;
    pub const SDL_WINDOW_METAL: u64 = cSDL3.SDL_WINDOW_METAL;
    pub const SDL_WINDOW_TRANSPARENT: u64 = cSDL3.SDL_WINDOW_TRANSPARENT;
    pub const SDL_WINDOW_NOTFOCUSABLE: u64 = cSDL3.SDL_WINDOW_NOT_FOCUSABLE;
};

pub const WindowFlags = struct {
    Fullscreen: bool = false,
    OpenGL: bool = false,
    Occluded: bool = false,
    Hidden: bool = false,
    Borderless: bool = false,
    Resizable: bool = false,
    Minimized: bool = false,
    Maximized: bool = false,
    MouseGrabbed: bool = false,
    InputFocus: bool = false,
    MouseFocus: bool = false,
    External: bool = false,
    Modal: bool = false,
    HighPixelDensity: bool = false,
    MouseCapture: bool = false,
    MouseRelativeMode: bool = false,
    AlwaysOnTop: bool = false,
    Utility: bool = false,
    Tooltip: bool = false,
    PopupMenu: bool = false,
    KeyboardGrabbed: bool = false,
    Vulkan: bool = false,
    Metal: bool = false,
    Transparent: bool = false,
    NotFocusable: bool = false,

    pub fn toSDLFlags(self: WindowFlags) u64 {
        var bits: u64 = 0;

        inline for (@typeInfo(@This()).@"struct".fields) |field| {
            if (@field(self, field.name)) {
                const flag = @field(WindowFlagsInternal, "SDL_WINDOW_" ++ upperAll(field.name));
                bits |= flag;
            }
        }

        return bits;
    }
};

pub const GPUShaderFormat = struct {
    Private: bool = false,
    Metallib: bool = false,

    SPIRV: bool = false,
    DXBC: bool = false,
    DXIL: bool = false,
    MSL: bool = false,

    pub fn toSDLFlags(self: GPUShaderFormat) u32 {
        var bits: u32 = 0;

        inline for (@typeInfo(@This()).@"struct".fields) |field| {
            if (@field(self, field.name)) {
                const flag = @field(cSDL3, "SDL_GPU_SHADERFORMAT_" ++ upperAll(field.name));
                bits |= flag;
            }
        }

        return bits;
    }
};

// Inline functions

pub inline fn Init(initflags: InitFlags) bool {
    return cSDL3.SDL_Init(initflags.toSDLFlags());
}

pub inline fn CreateWindow(title: []const u8, w: u32, h: u32, flags: WindowFlags) ?*Window {
    return cSDL3.SDL_CreateWindow(@ptrCast(title), w, h, flags.toSDLFlags());
}

pub inline fn CreateGPUDevice(format: GPUShaderFormat, debug_mode: bool, name: ?[]const u8) ?*GPUDevice {
    return cSDL3.SDL_CreateGPUDevice(format.toSDLFlags(), debug_mode, @ptrCast(name));
}

pub inline fn AcquireGPUSwapchainTexture(cmdbuf: *GPUCommandBuffer, window: *Window, texture: *?*GPUTexture, sc_texture_width: ?*u32, sc_texture_height: ?*u32) bool {
    return cSDL3.SDL_AcquireGPUSwapchainTexture(cmdbuf, window, texture, sc_texture_width, sc_texture_height);
}

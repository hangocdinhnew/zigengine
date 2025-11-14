const cSDL3 = @cImport({
    @cInclude("SDL3/SDL.h");
});

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

// Function Alias
pub const PollEvent = cSDL3.SDL_PollEvent;

pub const DestroyWindow = cSDL3.SDL_DestroyWindow;
pub const Quit = cSDL3.SDL_Quit;

// Enums
pub const InitFlags = enum(u32) {
    Audio = cSDL3.SDL_INIT_AUDIO,
    Video = cSDL3.SDL_INIT_VIDEO,
    Joystick = cSDL3.SDL_INIT_JOYSTICK,
    Haptic = cSDL3.SDL_INIT_HAPTIC,
    Gamepad = cSDL3.SDL_INIT_GAMEPAD,
    Events = cSDL3.SDL_INIT_EVENTS,
    Sensor = cSDL3.SDL_INIT_SENSOR,
    Camera = cSDL3.SDL_INIT_CAMERA,
};

// Inline functions

// It is a better practice to not do simultaneous init.
pub inline fn Init(initflags: InitFlags) bool {
    return cSDL3.SDL_Init(@intFromEnum(initflags));
}

pub inline fn CreateWindow(title: []const u8, w: u32, h: u32, flags: u64) ?*Window {
    return cSDL3.SDL_CreateWindow(@ptrCast(title), w, h, flags);
}

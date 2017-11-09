const warn = @import("std").debug.warn;
const c = @import("c.zig");

pub fn main() -> %void {
    var loop: &c.libuv.uv_loop_t = undefined;
    _ = c.libuv.uv_loop_init(loop);

    warn("Quit");
    _ = c.libuv.uv_run(loop, c.libuv.UV_RUN_DEFAULT);
    _ = c.libuv.uv_loop_close(loop);
    return;
}

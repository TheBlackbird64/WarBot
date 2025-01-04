if image_index == 1 {x = camera_get_view_x(view_camera[0]) + sprite_width/2}
if image_index == 0 {x = camera_get_view_x(view_camera[0]) + 1366 - sprite_width/2}
y = camera_get_view_y(view_camera[0]) + 320// + 384

draw_self()
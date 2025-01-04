image_yscale = camera_get_view_height(view_camera[0])/room_height
var taille_pixel = (sprite_height-80)*image_yscale
var pos_base = 40 + (taille_pixel/2)
y = camera_get_view_y(view_camera[0]) + pos_base + ((camera_get_view_height(view_camera[0])-pos_base*2)*(camera_get_view_y(view_camera[0])/(room_height-camera_get_view_height(view_camera[0]))))
draw_sprite_ext(S_barre_defilement, 1, x, camera_get_view_y(view_camera[0]) + 384, 1, 1, 0, c_white, 1)
draw_self()
/*draw_text(100, 50 + camera_get_view_y(view_camera[0]), "camera_get_view_y: " + string(camera_get_view_y(view_camera[0])))
draw_text(100, 100 + camera_get_view_y(view_camera[0]), "taille_pixel: " + string(taille_pixel))
draw_text(100, 150 + camera_get_view_y(view_camera[0]), pos_base)
//draw_text(100, 200 + camera_get_view_y(view_camera[0]), pos_base)
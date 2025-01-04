instance_destroy(client_reseau)
if file_exists("autoconnect.txt") {file_delete("autoconnect.txt")}
instance_destroy(fen_options_compte)
start_game()
/// @DnDAction : YoYo Games.Files.Open_Ini
/// @DnDVersion : 1
/// @DnDHash : 0A8467DE
/// @DnDArgument : "filename" ""YAM-save.ini""
ini_open("YAM-save.ini");

/// @DnDAction : YoYo Games.Files.Ini_Write
/// @DnDVersion : 1
/// @DnDHash : 7633872F
/// @DnDArgument : "type" "1"
/// @DnDArgument : "section" ""player""
/// @DnDArgument : "key" ""xPos""
/// @DnDArgument : "value" "oPlayer.x"
ini_write_real("player", "xPos", oPlayer.x);

/// @DnDAction : YoYo Games.Files.Ini_Write
/// @DnDVersion : 1
/// @DnDHash : 197ED54A
/// @DnDArgument : "type" "1"
/// @DnDArgument : "section" ""player""
/// @DnDArgument : "key" ""yPos""
/// @DnDArgument : "value" "oPlayer.y"
ini_write_real("player", "yPos", oPlayer.y);

/// @DnDAction : YoYo Games.Files.Ini_Write
/// @DnDVersion : 1
/// @DnDHash : 33981274
/// @DnDArgument : "type" "1"
/// @DnDArgument : "section" ""player""
/// @DnDArgument : "key" ""health""
/// @DnDArgument : "value" "oPlayer.hp"
ini_write_real("player", "health", oPlayer.hp);

/// @DnDAction : YoYo Games.Files.Close_Ini
/// @DnDVersion : 1
/// @DnDHash : 5D396E80
ini_close();
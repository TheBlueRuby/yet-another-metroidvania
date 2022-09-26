/// @DnDAction : YoYo Games.Files.Open_Ini
/// @DnDVersion : 1
/// @DnDHash : 4BAF279F
/// @DnDArgument : "filename" ""YAM-save.ini""
ini_open("YAM-save.ini");

/// @DnDAction : YoYo Games.Files.Ini_Read
/// @DnDVersion : 1
/// @DnDHash : 151F0F0F
/// @DnDArgument : "var" "oPlayer.x"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "section" ""player""
/// @DnDArgument : "key" ""xPos""
/// @DnDArgument : "default" "1888"
oPlayer.x = ini_read_real("player", "xPos", 1888);

/// @DnDAction : YoYo Games.Files.Ini_Read
/// @DnDVersion : 1
/// @DnDHash : 283F3E34
/// @DnDArgument : "var" "oPlayer.y"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "section" ""player""
/// @DnDArgument : "key" ""yPos""
/// @DnDArgument : "default" "288"
oPlayer.y = ini_read_real("player", "yPos", 288);

/// @DnDAction : YoYo Games.Files.Ini_Read
/// @DnDVersion : 1
/// @DnDHash : 09D88AB1
/// @DnDArgument : "var" "oPlayer.hp"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "section" ""player""
/// @DnDArgument : "key" ""health""
/// @DnDArgument : "default" "30"
oPlayer.hp = ini_read_real("player", "health", 30);

/// @DnDAction : YoYo Games.Files.Close_Ini
/// @DnDVersion : 1
/// @DnDHash : 4837A832
ini_close();
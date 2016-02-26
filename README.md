# VietnameseRemoveSign
Remove sign from vietnamese character. Example "â" -> "a", "Ế" -> "E"

Used:
NSString *signStr = @"Ê";
NSString *unsignStr = [signStr removeSign];

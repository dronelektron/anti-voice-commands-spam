static char g_voiceCommands[][] = {
    // Menu 1
    "voice_attack",
    "voice_hold",
    "voice_left",
    "voice_right",
    "voice_sticktogether",
    "voice_cover",
    "voice_usesmoke",
    "voice_usegrens",
    "voice_ceasefire",
    // Menu 2
    "voice_yessir",
    "voice_negative",
    "voice_backup",
    "voice_fireinhole",
    "voice_grenade",
    "voice_sniper",
    "voice_niceshot",
    "voice_thanks",
    "voice_areaclear",
    // Menu 3
    "voice_dropweapons",
    "voice_displace",
    "voice_mgahead",
    "voice_enemybehind",
    "voice_wegothim",
    "voice_moveupmg",
    "voice_needammo",
    "voice_usebazooka",
    "voice_bazookaspotted",
    // Hidden
    "voice_wtf",
    "voice_tank",
    "voice_movewithtank",
    "voice_medic",
    "voice_fallback",
    "voice_enemyahead",
    "voice_coverflanks",
    "voice_gogogo",
    "voice_takeammo",
    "voice_fireleft",
    "voice_fireright"
};

void Command_AddListeners() {
    for (int i = 0; i < sizeof(g_voiceCommands); i++) {
        AddCommandListener(CommandListener_Voice, g_voiceCommands[i]);
    }
}

public Action CommandListener_Voice(int client, const char[] command, int argc) {
    return UseCase_CanUseVoiceCommand(client) ? Plugin_Continue : Plugin_Stop;
}

static float g_lastVoiceCommandTime[MAXPLAYERS + 1];

void UseCase_ResetLastVoiceCommandTime(int client) {
    g_lastVoiceCommandTime[client] = 0.0;
}

bool UseCase_CanUseVoiceCommand(int client) {
    float voiceCommandTime = GetGameTime();
    float seconds = voiceCommandTime - g_lastVoiceCommandTime[client];

    if (seconds < Variable_Seconds()) {
        Message_StopSpamming(client);

        return false;
    }

    g_lastVoiceCommandTime[client] = voiceCommandTime;

    return true;
}

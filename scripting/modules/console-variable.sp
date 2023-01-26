static ConVar g_seconds = null;

void Variable_Create() {
    g_seconds = CreateConVar("sm_avcs_seconds", "5.0", "How many seconds should elapse between voice commands");
}

float Variable_Seconds() {
    return g_seconds.FloatValue;
}

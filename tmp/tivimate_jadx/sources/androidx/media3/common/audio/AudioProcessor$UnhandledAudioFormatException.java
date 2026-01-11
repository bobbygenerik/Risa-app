package androidx.media3.common.audio;

import p076.C1661;

/* loaded from: classes.dex */
public final class AudioProcessor$UnhandledAudioFormatException extends Exception {
    public AudioProcessor$UnhandledAudioFormatException(String str, C1661 c1661) {
        super(str + " " + c1661);
    }

    public AudioProcessor$UnhandledAudioFormatException(C1661 c1661) {
        this("Unhandled input format:", c1661);
    }
}

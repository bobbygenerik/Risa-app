package androidx.media3.exoplayer.audio;

import androidx.media3.common.audio.AudioProcessor$UnhandledAudioFormatException;
import p055.C1495;

/* loaded from: classes.dex */
public final class AudioSink$ConfigurationException extends Exception {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C1495 f1213;

    public AudioSink$ConfigurationException(AudioProcessor$UnhandledAudioFormatException audioProcessor$UnhandledAudioFormatException, C1495 c1495) {
        super(audioProcessor$UnhandledAudioFormatException);
        this.f1213 = c1495;
    }

    public AudioSink$ConfigurationException(String str, C1495 c1495) {
        super(str);
        this.f1213 = c1495;
    }
}

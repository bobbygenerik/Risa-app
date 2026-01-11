package androidx.media;

import android.media.AudioAttributes;
import p267.AbstractC3465;
import p267.C3464;

/* loaded from: classes.dex */
public final class AudioAttributesImplApi21Parcelizer {
    public static AudioAttributesImplApi21 read(AbstractC3465 abstractC3465) {
        AudioAttributesImplApi21 audioAttributesImplApi21 = new AudioAttributesImplApi21();
        audioAttributesImplApi21.f1129 = (AudioAttributes) abstractC3465.m7379(audioAttributesImplApi21.f1129, 1);
        audioAttributesImplApi21.f1128 = abstractC3465.m7382(audioAttributesImplApi21.f1128, 2);
        return audioAttributesImplApi21;
    }

    public static void write(AudioAttributesImplApi21 audioAttributesImplApi21, AbstractC3465 abstractC3465) {
        abstractC3465.getClass();
        AudioAttributes audioAttributes = audioAttributesImplApi21.f1129;
        abstractC3465.mo7372(1);
        ((C3464) abstractC3465).f13611.writeParcelable(audioAttributes, 0);
        abstractC3465.m7376(audioAttributesImplApi21.f1128, 2);
    }
}

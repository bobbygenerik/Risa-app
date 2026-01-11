package androidx.media;

import p267.AbstractC3465;
import p267.InterfaceC3463;

/* loaded from: classes.dex */
public final class AudioAttributesCompatParcelizer {
    public static AudioAttributesCompat read(AbstractC3465 abstractC3465) {
        AudioAttributesCompat audioAttributesCompat = new AudioAttributesCompat();
        InterfaceC3463 interfaceC3463 = audioAttributesCompat.f1127;
        if (abstractC3465.mo7373(1)) {
            interfaceC3463 = abstractC3465.m7380();
        }
        audioAttributesCompat.f1127 = (AudioAttributesImpl) interfaceC3463;
        return audioAttributesCompat;
    }

    public static void write(AudioAttributesCompat audioAttributesCompat, AbstractC3465 abstractC3465) {
        abstractC3465.getClass();
        AudioAttributesImpl audioAttributesImpl = audioAttributesCompat.f1127;
        abstractC3465.mo7372(1);
        abstractC3465.m7378(audioAttributesImpl);
    }
}

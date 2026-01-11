package androidx.media;

import p267.AbstractC3465;

/* loaded from: classes.dex */
public final class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(AbstractC3465 abstractC3465) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.f1133 = abstractC3465.m7382(audioAttributesImplBase.f1133, 1);
        audioAttributesImplBase.f1132 = abstractC3465.m7382(audioAttributesImplBase.f1132, 2);
        audioAttributesImplBase.f1130 = abstractC3465.m7382(audioAttributesImplBase.f1130, 3);
        audioAttributesImplBase.f1131 = abstractC3465.m7382(audioAttributesImplBase.f1131, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, AbstractC3465 abstractC3465) {
        abstractC3465.getClass();
        abstractC3465.m7376(audioAttributesImplBase.f1133, 1);
        abstractC3465.m7376(audioAttributesImplBase.f1132, 2);
        abstractC3465.m7376(audioAttributesImplBase.f1130, 3);
        abstractC3465.m7376(audioAttributesImplBase.f1131, 4);
    }
}

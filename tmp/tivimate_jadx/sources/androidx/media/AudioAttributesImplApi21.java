package androidx.media;

import android.annotation.TargetApi;
import android.media.AudioAttributes;

@TargetApi(21)
/* loaded from: classes.dex */
class AudioAttributesImplApi21 implements AudioAttributesImpl {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f1128 = -1;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public AudioAttributes f1129;

    public final boolean equals(Object obj) {
        if (obj instanceof AudioAttributesImplApi21) {
            return this.f1129.equals(((AudioAttributesImplApi21) obj).f1129);
        }
        return false;
    }

    public final int hashCode() {
        return this.f1129.hashCode();
    }

    public final String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.f1129;
    }
}

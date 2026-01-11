package androidx.media;

import android.util.SparseIntArray;
import p267.InterfaceC3463;

/* loaded from: classes.dex */
public class AudioAttributesCompat implements InterfaceC3463 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final /* synthetic */ int f1126 = 0;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public AudioAttributesImpl f1127;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sparseIntArray.put(5, 1);
        sparseIntArray.put(6, 2);
        sparseIntArray.put(7, 2);
        sparseIntArray.put(8, 1);
        sparseIntArray.put(9, 1);
        sparseIntArray.put(10, 1);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesCompat)) {
            return false;
        }
        AudioAttributesCompat audioAttributesCompat = (AudioAttributesCompat) obj;
        AudioAttributesImpl audioAttributesImpl = this.f1127;
        return audioAttributesImpl == null ? audioAttributesCompat.f1127 == null : audioAttributesImpl.equals(audioAttributesCompat.f1127);
    }

    public final int hashCode() {
        return this.f1127.hashCode();
    }

    public final String toString() {
        return this.f1127.toString();
    }
}

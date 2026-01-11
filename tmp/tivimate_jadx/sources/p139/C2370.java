package p139;

import java.util.Arrays;
import p318.C3919;

/* renamed from: ˉˋ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2370 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final byte[] f9156;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3919 f9157;

    public C2370(C3919 c3919, byte[] bArr) {
        if (c3919 == null) {
            throw new NullPointerException("encoding is null");
        }
        if (bArr == null) {
            throw new NullPointerException("bytes is null");
        }
        this.f9157 = c3919;
        this.f9156 = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2370)) {
            return false;
        }
        C2370 c2370 = (C2370) obj;
        if (this.f9157.equals(c2370.f9157)) {
            return Arrays.equals(this.f9156, c2370.f9156);
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f9157.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f9156);
    }

    public final String toString() {
        return "EncodedPayload{encoding=" + this.f9157 + ", bytes=[...]}";
    }
}

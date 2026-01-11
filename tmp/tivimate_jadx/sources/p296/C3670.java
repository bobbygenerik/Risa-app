package p296;

import java.util.Arrays;

/* renamed from: ٴﾞ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3670 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C3670 f14356 = new C3670(null);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f14357;

    public /* synthetic */ C3670(String str) {
        this.f14357 = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C3670) {
            return AbstractC3659.m7679(this.f14357, ((C3670) obj).f14357);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f14357});
    }
}

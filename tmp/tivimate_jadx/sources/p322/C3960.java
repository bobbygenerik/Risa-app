package p322;

import android.net.Uri;
import p152.AbstractC2444;

/* renamed from: ᴵˋ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3960 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean f15271;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Uri f15272;

    public C3960(Uri uri, boolean z) {
        this.f15272 = uri;
        this.f15271 = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!C3960.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        C3960 c3960 = (C3960) obj;
        return AbstractC2444.m5562(this.f15272, c3960.f15272) && this.f15271 == c3960.f15271;
    }

    public final int hashCode() {
        return (this.f15272.hashCode() * 31) + (this.f15271 ? 1231 : 1237);
    }
}

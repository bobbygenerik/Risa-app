package p031;

import android.text.TextUtils;
import p035.AbstractC1220;
import ᵎˉ.ⁱˊ;

/* renamed from: ʼᵔ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1143 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final ⁱˊ f4404 = new Object();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f4405;

    /* renamed from: ˈ, reason: contains not printable characters */
    public volatile byte[] f4406;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC1148 f4407;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object f4408;

    public C1143(String str, Object obj, InterfaceC1148 interfaceC1148) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Must not be null or empty");
        }
        this.f4405 = str;
        this.f4408 = obj;
        this.f4407 = interfaceC1148;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C1143 m3576(Object obj, String str) {
        return new C1143(str, obj, f4404);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C1143) {
            return this.f4405.equals(((C1143) obj).f4405);
        }
        return false;
    }

    public final int hashCode() {
        return this.f4405.hashCode();
    }

    public final String toString() {
        return AbstractC1220.m3775(new StringBuilder("Option{key='"), this.f4405, "'}");
    }
}

package p139;

import android.util.Base64;
import java.util.Arrays;
import p035.AbstractC1220;
import p318.EnumC3916;
import ˑי.ʽ;

/* renamed from: ˉˋ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2356 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final EnumC3916 f9110;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final byte[] f9111;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f9112;

    public C2356(String str, byte[] bArr, EnumC3916 enumC3916) {
        this.f9112 = str;
        this.f9111 = bArr;
        this.f9110 = enumC3916;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ˑי.ʽ] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static ʽ m5441() {
        ?? obj = new Object();
        ((ʽ) obj).ʽʽ = EnumC3916.f15179;
        return obj;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2356) {
            C2356 c2356 = (C2356) obj;
            if (this.f9112.equals(c2356.f9112) && Arrays.equals(this.f9111, c2356.f9111) && this.f9110.equals(c2356.f9110)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f9112.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f9111)) * 1000003) ^ this.f9110.hashCode();
    }

    public final String toString() {
        byte[] bArr = this.f9111;
        String encodeToString = bArr == null ? "" : Base64.encodeToString(bArr, 2);
        StringBuilder sb = new StringBuilder("TransportContext(");
        sb.append(this.f9112);
        sb.append(", ");
        sb.append(this.f9110);
        sb.append(", ");
        return AbstractC1220.m3775(sb, encodeToString, ")");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2356 m5442(EnumC3916 enumC3916) {
        ʽ m5441 = m5441();
        m5441.ʽʽ(this.f9112);
        if (enumC3916 == null) {
            throw new NullPointerException("Null priority");
        }
        m5441.ʽʽ = enumC3916;
        m5441.ᴵˊ = this.f9111;
        return m5441.ᵔﹳ();
    }
}

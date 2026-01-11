package p266;

import android.net.Uri;
import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.Map;
import p035.AbstractC1220;
import p055.AbstractC1449;
import p253.C3313;
import p305.AbstractC3731;

/* renamed from: ـˊ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3456 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final byte[] f13571;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Map f13572;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long f13573;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final String f13574;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final int f13575;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f13576;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Uri f13577;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final long f13578;

    static {
        AbstractC1449.m4241("media3.datasource");
    }

    public C3456(Uri uri, int i, byte[] bArr, Map map, long j, long j2, String str, int i2) {
        AbstractC3731.m7849(j >= 0);
        AbstractC3731.m7849(j >= 0);
        AbstractC3731.m7849(j2 > 0 || j2 == -1);
        uri.getClass();
        this.f13577 = uri;
        this.f13576 = i;
        this.f13571 = (bArr == null || bArr.length == 0) ? null : bArr;
        this.f13572 = DesugarCollections.unmodifiableMap(new HashMap(map));
        this.f13573 = j;
        this.f13578 = j2;
        this.f13574 = str;
        this.f13575 = i2;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static String m7362(int i) {
        if (i == 1) {
            return "GET";
        }
        if (i == 2) {
            return "POST";
        }
        if (i == 3) {
            return "HEAD";
        }
        throw new IllegalStateException();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DataSpec[");
        sb.append(m7362(this.f13576));
        sb.append(" ");
        sb.append(this.f13577);
        sb.append(", ");
        sb.append(this.f13573);
        sb.append(", ");
        sb.append(this.f13578);
        sb.append(", ");
        sb.append(this.f13574);
        sb.append(", ");
        return AbstractC1220.m3782(sb, this.f13575, "]");
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3456 m7363(long j) {
        long j2 = this.f13578;
        long j3 = j2 != -1 ? j2 - j : -1L;
        if (j == 0 && j2 == j3) {
            return this;
        }
        return new C3456(this.f13577, this.f13576, this.f13571, this.f13572, this.f13573 + j, j3, this.f13574, this.f13575);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [יˑ.ʽ, java.lang.Object] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3313 m7364() {
        ?? obj = new Object();
        obj.f12745 = this.f13577;
        obj.f12749 = this.f13576;
        obj.f12750 = this.f13571;
        obj.f12746 = this.f13572;
        obj.f12748 = this.f13573;
        obj.f12743 = this.f13578;
        obj.f12747 = this.f13574;
        obj.f12744 = this.f13575;
        return obj;
    }
}

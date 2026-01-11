package p447;

import android.os.Bundle;
import p035.AbstractC1220;

/* renamed from: ﹶﾞ.ˈⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5255 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public Object f19826;

    /* renamed from: ˈ, reason: contains not printable characters */
    public Object f19827;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Object f19828;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public long f19829;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f19830 = 0;

    public C5255(long j, Bundle bundle, String str, String str2) {
        this.f19826 = str;
        this.f19827 = str2;
        this.f19828 = bundle;
        this.f19829 = j;
    }

    public /* synthetic */ C5255(C5226 c5226) {
        this.f19828 = c5226;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C5255 m10389(C5279 c5279) {
        String str = c5279.f19912;
        String str2 = c5279.f19911;
        return new C5255(c5279.f19913, c5279.f19914.m10488(), str, str2);
    }

    public String toString() {
        switch (this.f19830) {
            case 0:
                String str = (String) this.f19827;
                String obj = ((Bundle) this.f19828).toString();
                int length = String.valueOf(str).length();
                String str2 = (String) this.f19826;
                StringBuilder sb = new StringBuilder(length + 13 + String.valueOf(str2).length() + 8 + obj.length());
                sb.append("origin=");
                sb.append(str);
                sb.append(",name=");
                sb.append(str2);
                return AbstractC1220.m3775(sb, ",params=", obj);
            default:
                return super.toString();
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public C5279 m10390() {
        return new C5279((String) this.f19826, new C5294(new Bundle((Bundle) this.f19828)), (String) this.f19827, this.f19829);
    }

    /* JADX WARN: Code restructure failed: missing block: B:74:0x012a, code lost:
    
        if (r8 != null) goto L47;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.gms.internal.measurement.C0414 m10391(com.google.android.gms.internal.measurement.C0414 r21, java.lang.String r22) {
        /*
            Method dump skipped, instructions count: 622
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5255.m10391(com.google.android.gms.internal.measurement.ٴʿ, java.lang.String):com.google.android.gms.internal.measurement.ٴʿ");
    }
}

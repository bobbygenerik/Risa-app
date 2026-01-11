package p454;

import j$.util.Objects;
import p055.C1459;
import p055.C1495;
import p055.InterfaceC1465;
import p305.AbstractC3731;

/* renamed from: ﾞˊ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5374 implements InterfaceC1465 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f20475;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f20476;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean f20477;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f20478;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f20479;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f20480;

    public C5374(int i, int i2, String str, String str2, String str3, boolean z) {
        AbstractC3731.m7849(i2 == -1 || i2 > 0);
        this.f20479 = i;
        this.f20478 = str;
        this.f20475 = str2;
        this.f20476 = str3;
        this.f20477 = z;
        this.f20480 = i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0054  */
    /* renamed from: ˈ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p454.C5374 m10770(java.util.Map r14) {
        /*
            Method dump skipped, instructions count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p454.C5374.m10770(java.util.Map):ﾞˊ.ⁱˊ");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C5374.class == obj.getClass()) {
            C5374 c5374 = (C5374) obj;
            if (this.f20479 == c5374.f20479 && Objects.equals(this.f20478, c5374.f20478) && Objects.equals(this.f20475, c5374.f20475) && Objects.equals(this.f20476, c5374.f20476) && this.f20477 == c5374.f20477 && this.f20480 == c5374.f20480) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = (527 + this.f20479) * 31;
        String str = this.f20478;
        int hashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f20475;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f20476;
        return ((((hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + (this.f20477 ? 1 : 0)) * 31) + this.f20480;
    }

    public final String toString() {
        return "IcyHeaders: name=\"" + this.f20475 + "\", genre=\"" + this.f20478 + "\", bitrate=" + this.f20479 + ", metadataInterval=" + this.f20480;
    }

    @Override // p055.InterfaceC1465
    /* renamed from: ʽ */
    public final /* synthetic */ byte[] mo2790() {
        return null;
    }

    @Override // p055.InterfaceC1465
    /* renamed from: ⁱˊ */
    public final /* synthetic */ C1495 mo2791() {
        return null;
    }

    @Override // p055.InterfaceC1465
    /* renamed from: ﹳٴ */
    public final void mo2792(C1459 c1459) {
        String str = this.f20475;
        if (str != null) {
            c1459.f5677 = str;
        }
        String str2 = this.f20478;
        if (str2 != null) {
            c1459.f5685 = str2;
        }
    }
}

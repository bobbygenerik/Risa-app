package p361;

import p152.AbstractC2444;
import p164.C2571;
import ٴﾞ.ˆʾ;

/* renamed from: ᵔᐧ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4394 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f16347;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2571 f16348;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2571 f16349;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C2571 f16342 = ˆʾ.יـ(":");

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C2571 f16343 = ˆʾ.יـ(":status");

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final C2571 f16346 = ˆʾ.יـ(":method");

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final C2571 f16344 = ˆʾ.יـ(":path");

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final C2571 f16345 = ˆʾ.יـ(":scheme");

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final C2571 f16341 = ˆʾ.יـ(":authority");

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C4394(java.lang.String r4, java.lang.String r5) {
        /*
            r3 = this;
            ˊᐧ.ʼˎ r0 = new ˊᐧ.ʼˎ
            java.nio.charset.Charset r1 = p435.AbstractC5154.f19435
            byte[] r2 = r4.getBytes(r1)
            r0.<init>(r2)
            r0.f9766 = r4
            ˊᐧ.ʼˎ r4 = new ˊᐧ.ʼˎ
            byte[] r1 = r5.getBytes(r1)
            r4.<init>(r1)
            r4.f9766 = r5
            r3.<init>(r0, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p361.C4394.<init>(java.lang.String, java.lang.String):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C4394(p164.C2571 r3, java.lang.String r4) {
        /*
            r2 = this;
            ˊᐧ.ʼˎ r0 = new ˊᐧ.ʼˎ
            java.nio.charset.Charset r1 = p435.AbstractC5154.f19435
            byte[] r1 = r4.getBytes(r1)
            r0.<init>(r1)
            r0.f9766 = r4
            r2.<init>(r3, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p361.C4394.<init>(ˊᐧ.ʼˎ, java.lang.String):void");
    }

    public C4394(C2571 c2571, C2571 c25712) {
        this.f16349 = c2571;
        this.f16348 = c25712;
        this.f16347 = c25712.mo5749() + c2571.mo5749() + 32;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4394)) {
            return false;
        }
        C4394 c4394 = (C4394) obj;
        return AbstractC2444.m5562(this.f16349, c4394.f16349) && AbstractC2444.m5562(this.f16348, c4394.f16348);
    }

    public final int hashCode() {
        return this.f16348.hashCode() + (this.f16349.hashCode() * 31);
    }

    public final String toString() {
        return this.f16349.m5748() + ": " + this.f16348.m5748();
    }
}

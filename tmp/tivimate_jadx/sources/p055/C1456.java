package p055;

import j$.util.Objects;
import p010.AbstractC0844;
import p035.AbstractC1220;
import p305.AbstractC3712;

/* renamed from: ʽⁱ.ˆﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1456 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final int f5659;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C1480 f5660;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Object f5661;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f5662;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final long f5663;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final int f5664;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f5665;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object f5666;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final long f5667;

    static {
        AbstractC1220.m3785(0, 1, 2, 3, 4);
        AbstractC3712.m7802(5);
        AbstractC3712.m7802(6);
    }

    public C1456(Object obj, int i, C1480 c1480, Object obj2, int i2, long j, long j2, int i3, int i4) {
        this.f5666 = obj;
        this.f5665 = i;
        this.f5660 = c1480;
        this.f5661 = obj2;
        this.f5662 = i2;
        this.f5667 = j;
        this.f5663 = j2;
        this.f5664 = i3;
        this.f5659 = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1456.class == obj.getClass()) {
            C1456 c1456 = (C1456) obj;
            if (this.f5665 == c1456.f5665 && this.f5662 == c1456.f5662 && this.f5667 == c1456.f5667 && this.f5663 == c1456.f5663 && this.f5664 == c1456.f5664 && this.f5659 == c1456.f5659 && Objects.equals(this.f5660, c1456.f5660) && Objects.equals(this.f5666, c1456.f5666) && Objects.equals(this.f5661, c1456.f5661)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f5666, Integer.valueOf(this.f5665), this.f5660, this.f5661, Integer.valueOf(this.f5662), Long.valueOf(this.f5667), Long.valueOf(this.f5663), Integer.valueOf(this.f5664), Integer.valueOf(this.f5659));
    }

    public final String toString() {
        String str = "mediaItem=" + this.f5665 + ", period=" + this.f5662 + ", pos=" + this.f5667;
        int i = this.f5664;
        if (i == -1) {
            return str;
        }
        StringBuilder m3017 = AbstractC0844.m3017(str, ", contentPos=");
        m3017.append(this.f5663);
        m3017.append(", adGroup=");
        m3017.append(i);
        m3017.append(", ad=");
        m3017.append(this.f5659);
        return m3017.toString();
    }
}

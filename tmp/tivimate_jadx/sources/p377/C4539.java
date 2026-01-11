package p377;

import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import p035.AbstractC1220;
import p055.AbstractC1464;
import p055.C1459;
import p055.C1495;
import p055.InterfaceC1465;
import p305.C3732;

/* renamed from: ᵢᐧ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4539 implements InterfaceC1465 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f17016;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f17017;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f17018;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int f17019;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final byte[] f17020;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f17021;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f17022;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f17023;

    public C4539(int i, String str, String str2, int i2, int i3, int i4, int i5, byte[] bArr) {
        this.f17022 = i;
        this.f17021 = str;
        this.f17016 = str2;
        this.f17017 = i2;
        this.f17018 = i3;
        this.f17023 = i4;
        this.f17019 = i5;
        this.f17020 = bArr;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static C4539 m9114(C3732 c3732) {
        int m7893 = c3732.m7893();
        String m4251 = AbstractC1464.m4251(c3732.m7890(c3732.m7893(), StandardCharsets.US_ASCII));
        String m7890 = c3732.m7890(c3732.m7893(), StandardCharsets.UTF_8);
        int m78932 = c3732.m7893();
        int m78933 = c3732.m7893();
        int m78934 = c3732.m7893();
        int m78935 = c3732.m7893();
        int m78936 = c3732.m7893();
        byte[] bArr = new byte[m78936];
        c3732.m7875(bArr, 0, m78936);
        return new C4539(m7893, m4251, m7890, m78932, m78933, m78934, m78935, bArr);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C4539.class == obj.getClass()) {
            C4539 c4539 = (C4539) obj;
            if (this.f17022 == c4539.f17022 && this.f17021.equals(c4539.f17021) && this.f17016.equals(c4539.f17016) && this.f17017 == c4539.f17017 && this.f17018 == c4539.f17018 && this.f17023 == c4539.f17023 && this.f17019 == c4539.f17019 && Arrays.equals(this.f17020, c4539.f17020)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f17020) + ((((((((AbstractC1220.m3780(AbstractC1220.m3780((527 + this.f17022) * 31, 31, this.f17021), 31, this.f17016) + this.f17017) * 31) + this.f17018) * 31) + this.f17023) * 31) + this.f17019) * 31);
    }

    public final String toString() {
        return "Picture: mimeType=" + this.f17021 + ", description=" + this.f17016;
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
        c1459.m4247(this.f17022, this.f17020);
    }
}

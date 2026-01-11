package p397;

import j$.util.Objects;
import java.rmi.UnmarshalException;
import p092.EnumC1852;
import p092.InterfaceC1851;
import p137.AbstractC2305;
import p210.C2975;
import p262.C3433;

/* renamed from: ⁱᵔ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4745 implements InterfaceC1851 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f17903;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f17904;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public String f17905;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static int m9483(String str, C3433 c3433) {
        long readInt = ((C2975) c3433.f13456).readInt() & 4294967295L;
        if (readInt <= 2147483647L) {
            return (int) readInt;
        }
        throw new UnmarshalException(String.format("%s %d > %d", str, Long.valueOf(readInt), Integer.MAX_VALUE));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AbstractC4745) && Objects.equals(this.f17905, ((AbstractC4745) obj).f17905);
    }

    public final int hashCode() {
        return Objects.hash(Boolean.TRUE, this.f17905);
    }

    public final String toString() {
        String str = this.f17905;
        return str == null ? "null" : AbstractC2305.m5378("\"", str, "\"");
    }

    @Override // p092.InterfaceC1851
    /* renamed from: ʽ */
    public final void mo4784(C3433 c3433) {
        c3433.m7333(EnumC1852.FOUR);
        c3433.m7336(4);
    }

    @Override // p092.InterfaceC1851
    /* renamed from: ⁱˊ */
    public final void mo4785(C3433 c3433) {
        boolean z;
        c3433.m7333(EnumC1852.TWO);
        c3433.m7336(this.f17904 * 2);
        int i = this.f17903;
        if (i > 0) {
            i--;
            z = true;
        } else {
            z = false;
        }
        StringBuilder sb = new StringBuilder(i);
        for (int i2 = 0; i2 < i; i2++) {
            sb.append((char) ((C2975) c3433.f13456).readUnsignedShort());
        }
        this.f17905 = sb.toString();
        if (z) {
            c3433.m7336(2);
        }
    }

    @Override // p092.InterfaceC1851
    /* renamed from: ﹳٴ */
    public final void mo4786(C3433 c3433) {
        c3433.m7333(EnumC1852.FOUR);
        this.f17904 = m9483("Offset", c3433);
        this.f17903 = m9483("ActualCount", c3433);
    }
}

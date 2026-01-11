package p407;

import java.io.EOFException;
import java.rmi.UnmarshalException;
import p092.EnumC1852;
import p210.C2975;
import p214.C3007;
import p262.C3433;
import ʽٴ.ˈ;

/* renamed from: ﹳˈ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4835 extends ˈ {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f18135;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [ʿﹶ.ⁱˊ, ⁱﾞ.ﹳٴ, java.lang.Object] */
    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final void m9634(C3433 c3433) {
        C3007 c3007 = (C3007) this;
        ?? obj = new Object();
        c3007.f11483 = obj;
        c3433.m7324(obj);
        EnumC1852 enumC1852 = EnumC1852.FOUR;
        c3433.m7333(enumC1852);
        C2975 c2975 = (C2975) c3433.f13456;
        c2975.readInt();
        if (c2975.readInt() != 0) {
            c3007.f11484 = Long.valueOf(c2975.readInt() & 4294967295L);
        } else {
            c3007.f11484 = null;
        }
        c3433.m7333(enumC1852);
        this.f18135 = c2975.readInt();
        try {
            c3433.m7327();
            throw new UnmarshalException("At least one byte remained after reading the return code. Is this response aligned properly?");
        } catch (EOFException unused) {
        }
    }
}

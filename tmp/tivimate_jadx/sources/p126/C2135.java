package p126;

import com.bumptech.glide.ʽ;
import java.io.Serializable;
import p137.AbstractC2305;
import p152.AbstractC2444;
import p329.InterfaceC4087;
import ʼⁱ.ˎᐧ;

/* renamed from: ˈי.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2135 implements InterfaceC2139, Serializable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC2139 f8325;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC2142 f8326;

    public C2135(InterfaceC2139 interfaceC2139, InterfaceC2142 interfaceC2142) {
        this.f8325 = interfaceC2139;
        this.f8326 = interfaceC2142;
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2135) {
            C2135 c2135 = (C2135) obj;
            int i = 2;
            C2135 c21352 = c2135;
            int i2 = 2;
            while (true) {
                InterfaceC2139 interfaceC2139 = c21352.f8325;
                c21352 = interfaceC2139 instanceof C2135 ? (C2135) interfaceC2139 : null;
                if (c21352 == null) {
                    break;
                }
                i2++;
            }
            C2135 c21353 = this;
            while (true) {
                InterfaceC2139 interfaceC21392 = c21353.f8325;
                c21353 = interfaceC21392 instanceof C2135 ? (C2135) interfaceC21392 : null;
                if (c21353 == null) {
                    break;
                }
                i++;
            }
            if (i2 == i) {
                C2135 c21354 = this;
                while (true) {
                    InterfaceC2142 interfaceC2142 = c21354.f8326;
                    if (!AbstractC2444.m5562(c2135.mo3419(interfaceC2142.getKey()), interfaceC2142)) {
                        z = false;
                        break;
                    }
                    InterfaceC2139 interfaceC21393 = c21354.f8325;
                    if (!(interfaceC21393 instanceof C2135)) {
                        InterfaceC2142 interfaceC21422 = (InterfaceC2142) interfaceC21393;
                        z = AbstractC2444.m5562(c2135.mo3419(interfaceC21422.getKey()), interfaceC21422);
                        break;
                    }
                    c21354 = (C2135) interfaceC21393;
                }
                if (z) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f8326.hashCode() + this.f8325.hashCode();
    }

    public final String toString() {
        return AbstractC2305.m5384(new StringBuilder("["), (String) mo3418("", new ˎᐧ(3)), ']');
    }

    @Override // p126.InterfaceC2139
    /* renamed from: ʿᵢ */
    public final Object mo3418(Object obj, InterfaceC4087 interfaceC4087) {
        return interfaceC4087.mo3749(this.f8325.mo3418(obj, interfaceC4087), this.f8326);
    }

    @Override // p126.InterfaceC2139
    /* renamed from: ˊᵔ */
    public final InterfaceC2142 mo3419(InterfaceC2138 interfaceC2138) {
        C2135 c2135 = this;
        while (true) {
            InterfaceC2142 mo3419 = c2135.f8326.mo3419(interfaceC2138);
            if (mo3419 != null) {
                return mo3419;
            }
            InterfaceC2139 interfaceC2139 = c2135.f8325;
            if (!(interfaceC2139 instanceof C2135)) {
                return interfaceC2139.mo3419(interfaceC2138);
            }
            c2135 = (C2135) interfaceC2139;
        }
    }

    @Override // p126.InterfaceC2139
    /* renamed from: ـˆ */
    public final InterfaceC2139 mo3420(InterfaceC2138 interfaceC2138) {
        InterfaceC2142 interfaceC2142 = this.f8326;
        InterfaceC2142 mo3419 = interfaceC2142.mo3419(interfaceC2138);
        InterfaceC2139 interfaceC2139 = this.f8325;
        if (mo3419 != null) {
            return interfaceC2139;
        }
        InterfaceC2139 mo3420 = interfaceC2139.mo3420(interfaceC2138);
        return mo3420 == interfaceC2139 ? this : mo3420 == C2134.f8324 ? interfaceC2142 : new C2135(mo3420, interfaceC2142);
    }

    @Override // p126.InterfaceC2139
    /* renamed from: ﹶᐧ */
    public final InterfaceC2139 mo3421(InterfaceC2139 interfaceC2139) {
        return ʽ.ˏי(this, interfaceC2139);
    }
}

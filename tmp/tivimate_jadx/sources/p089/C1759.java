package p089;

import java.util.ArrayList;
import java.util.Iterator;
import p013.C0907;
import p023.C1057;
import p041.InterfaceC1305;
import p126.C2134;
import p126.C2137;
import p126.InterfaceC2136;
import p126.InterfaceC2139;
import p137.AbstractC2305;
import p152.AbstractC2444;
import p153.AbstractC2481;
import p153.C2480;
import p316.AbstractC3906;
import p324.AbstractC3999;
import p329.InterfaceC4087;
import p340.InterfaceC4254;
import p340.InterfaceC4256;
import p373.EnumC4532;
import p430.AbstractC5099;
import ʼˋ.ᵔʾ;
import ʼˋ.ﾞᴵ;
import ʼⁱ.ˎᐧ;
import ﹳˋ.ʽʽ;

/* renamed from: ʿᵔ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C1759 implements InterfaceC1763 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f7120;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC2139 f7121;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ int f7122;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f7123;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final Object f7124;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1759(Object obj, InterfaceC2139 interfaceC2139, int i, int i2, int i3) {
        this(interfaceC2139, i, i2);
        this.f7122 = i3;
        this.f7124 = obj;
    }

    public C1759(InterfaceC2139 interfaceC2139, int i, int i2) {
        this.f7121 = interfaceC2139;
        this.f7123 = i;
        this.f7120 = i2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C1759(InterfaceC4087 interfaceC4087, InterfaceC2139 interfaceC2139, int i, int i2) {
        this(interfaceC2139, i, i2);
        this.f7122 = 2;
        this.f7124 = (AbstractC3906) interfaceC4087;
    }

    public String toString() {
        switch (this.f7122) {
            case 0:
                return ((InterfaceC4254) this.f7124) + " -> " + m4723();
            case 1:
            default:
                return m4723();
            case 2:
                return "block[" + ((AbstractC3906) this.f7124) + "] -> " + m4723();
        }
    }

    @Override // p089.InterfaceC1763
    /* renamed from: ʽ, reason: contains not printable characters */
    public final InterfaceC4254 mo4719(InterfaceC2139 interfaceC2139, int i, int i2) {
        InterfaceC2139 interfaceC21392 = this.f7121;
        InterfaceC2139 mo3421 = interfaceC2139.mo3421(interfaceC21392);
        int i3 = this.f7120;
        int i4 = this.f7123;
        if (i2 == 1) {
            if (i4 != -3) {
                if (i != -3) {
                    if (i4 != -2) {
                        if (i != -2) {
                            i += i4;
                            if (i < 0) {
                                i = Integer.MAX_VALUE;
                            }
                        }
                    }
                }
                i = i4;
            }
            i2 = i3;
        }
        return (AbstractC2444.m5562(mo3421, interfaceC21392) && i == i4 && i2 == i3) ? this : mo4721(mo3421, i, i2);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r0v6, types: [ᴵʾ.ᵔᵢ, ᴵⁱ.ʼᐧ] */
    /* renamed from: ˈ, reason: contains not printable characters */
    public Object mo4720(InterfaceC1305 interfaceC1305, InterfaceC2136 interfaceC2136) {
        switch (this.f7122) {
            case 0:
                Object mo3411 = ((InterfaceC4254) this.f7124).mo3411(new C1767(interfaceC1305), interfaceC2136);
                C0907 c0907 = C0907.f3832;
                EnumC4532 enumC4532 = EnumC4532.f16960;
                if (mo3411 != enumC4532) {
                    mo3411 = c0907;
                }
                return mo3411 == enumC4532 ? mo3411 : c0907;
            case 1:
                C1767 c1767 = new C1767(interfaceC1305);
                Iterator it = this.f7124.iterator();
                while (it.hasNext()) {
                    AbstractC3999.m8168(interfaceC1305, null, new ﾞᴵ((InterfaceC4254) it.next(), c1767, (InterfaceC2136) null, 15), 3);
                }
                return C0907.f3832;
            default:
                Object mo3749 = ((AbstractC3906) this.f7124).mo3749(interfaceC1305, interfaceC2136);
                return mo3749 == EnumC4532.f16960 ? mo3749 : C0907.f3832;
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [ᴵʾ.ᵔᵢ, ᴵⁱ.ʼᐧ] */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public C1759 mo4721(InterfaceC2139 interfaceC2139, int i, int i2) {
        switch (this.f7122) {
            case 0:
                return new C1759((InterfaceC4254) this.f7124, interfaceC2139, i, i2, 0);
            case 1:
                return new C1759(this.f7124, interfaceC2139, i, i2, 1);
            default:
                return new C1759((AbstractC3906) this.f7124, interfaceC2139, i, i2);
        }
    }

    @Override // p340.InterfaceC4254
    /* renamed from: ⁱˊ */
    public Object mo3411(InterfaceC4256 interfaceC4256, InterfaceC2136 interfaceC2136) {
        Object m4722;
        switch (this.f7122) {
            case 0:
                int i = this.f7123;
                C0907 c0907 = C0907.f3832;
                EnumC4532 enumC4532 = EnumC4532.f16960;
                if (i == -3) {
                    InterfaceC2139 mo3551 = interfaceC2136.mo3551();
                    Boolean bool = Boolean.FALSE;
                    ˎᐧ r4 = new ˎᐧ(13);
                    InterfaceC2139 interfaceC2139 = this.f7121;
                    InterfaceC2139 mo3421 = !((Boolean) interfaceC2139.mo3418(bool, r4)).booleanValue() ? mo3551.mo3421(interfaceC2139) : AbstractC3999.m8176(mo3551, interfaceC2139, false);
                    if (AbstractC2444.m5562(mo3421, mo3551)) {
                        m4722 = ((InterfaceC4254) this.f7124).mo3411(interfaceC4256, interfaceC2136);
                        if (m4722 != enumC4532) {
                            m4722 = c0907;
                        }
                        if (m4722 != enumC4532) {
                            return c0907;
                        }
                    } else {
                        C2137 c2137 = C2137.f8327;
                        if (AbstractC2444.m5562(mo3421.mo3419(c2137), mo3551.mo3419(c2137))) {
                            InterfaceC2139 mo35512 = interfaceC2136.mo3551();
                            if (!(interfaceC4256 instanceof C1767) && !(interfaceC4256 instanceof C1760)) {
                                interfaceC4256 = new C1057(interfaceC4256, mo35512);
                            }
                            m4722 = AbstractC1768.m4727(mo3421, interfaceC4256, mo3421.mo3418(0, AbstractC2481.f9465), new ﾞᴵ(this, (InterfaceC2136) null, 14), interfaceC2136);
                            if (m4722 != enumC4532) {
                                return c0907;
                            }
                        }
                    }
                    return m4722;
                }
                m4722 = m4722(interfaceC4256, interfaceC2136);
                if (m4722 != enumC4532) {
                    return c0907;
                }
                return m4722;
            default:
                return m4722(interfaceC4256, interfaceC2136);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object m4722(InterfaceC4256 interfaceC4256, InterfaceC2136 interfaceC2136) {
        ᵔʾ r0 = new ᵔʾ(interfaceC4256, this, (InterfaceC2136) null, 7);
        C2480 c2480 = new C2480(interfaceC2136, interfaceC2136.mo3551());
        Object obj = ʽʽ.ˈٴ(c2480, true, c2480, r0);
        return obj == EnumC4532.f16960 ? obj : C0907.f3832;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final String m4723() {
        ArrayList arrayList = new ArrayList(4);
        C2134 c2134 = C2134.f8324;
        InterfaceC2139 interfaceC2139 = this.f7121;
        if (interfaceC2139 != c2134) {
            arrayList.add("context=" + interfaceC2139);
        }
        int i = this.f7123;
        if (i != -3) {
            arrayList.add("capacity=" + i);
        }
        int i2 = this.f7120;
        if (i2 != 1) {
            arrayList.add("onBufferOverflow=".concat(i2 != 1 ? i2 != 2 ? i2 != 3 ? "null" : "DROP_LATEST" : "DROP_OLDEST" : "SUSPEND"));
        }
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append('[');
        return AbstractC2305.m5384(sb, AbstractC5099.m10034(arrayList, ", ", null, null, null, 62), ']');
    }
}

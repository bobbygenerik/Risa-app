package p089;

import p012.C0902;
import p126.C2134;
import p126.InterfaceC2136;
import p126.InterfaceC2139;
import p137.AbstractC2305;
import p152.AbstractC2451;
import p153.AbstractC2481;
import p316.AbstractC3902;
import p316.AbstractC3905;
import p329.InterfaceC4087;

/* renamed from: ʿᵔ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1768 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final InterfaceC2136[] f7153 = new InterfaceC2136[0];

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C0902 f7152 = new C0902(5, "NULL");

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C0902 f7151 = new C0902(5, "UNINITIALIZED");

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Object m4727(InterfaceC2139 interfaceC2139, Object obj, Object obj2, InterfaceC4087 interfaceC4087, InterfaceC2136 interfaceC2136) {
        Object mo3749;
        Object m5622 = AbstractC2481.m5622(interfaceC2139, obj2);
        try {
            C1770 c1770 = new C1770(interfaceC2136, interfaceC2139);
            if (AbstractC2305.m5366(interfaceC4087)) {
                AbstractC2451.m5576(2, interfaceC4087);
                mo3749 = interfaceC4087.mo3749(obj, c1770);
            } else {
                InterfaceC2139 mo3551 = c1770.mo3551();
                Object abstractC3905 = mo3551 == C2134.f8324 ? new AbstractC3905(c1770) : new AbstractC3902(c1770, mo3551);
                AbstractC2451.m5576(2, interfaceC4087);
                mo3749 = interfaceC4087.mo3749(obj, abstractC3905);
            }
            return mo3749;
        } finally {
            AbstractC2481.m5625(interfaceC2139, m5622);
        }
    }
}

package p428;

import p017.AbstractC1000;
import p055.C1495;
import p307.AbstractC3740;

/* renamed from: ﹶʽ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5074 implements Comparable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final boolean f19093;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final boolean f19094;

    public C5074(C1495 c1495, int i) {
        this.f19093 = (c1495.f5919 & 1) != 0;
        this.f19094 = AbstractC3740.m7940(i, false);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        C5074 c5074 = (C5074) obj;
        return AbstractC1000.f3990.mo3225(this.f19094, c5074.f19094).mo3225(this.f19093, c5074.f19093).mo3227();
    }
}

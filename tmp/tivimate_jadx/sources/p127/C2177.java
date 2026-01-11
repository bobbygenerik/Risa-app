package p127;

import p017.AbstractC0996;
import p017.AbstractC1004;
import p017.C0987;
import p055.C1495;

/* renamed from: ˈـ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2177 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C1495 f8527;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final AbstractC0996 f8528;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final String f8529;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f8530;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f8531;

    public C2177(C1495 c1495, int i, int i2, C0987 c0987, String str) {
        this.f8531 = i;
        this.f8530 = i2;
        this.f8527 = c1495;
        this.f8528 = AbstractC0996.m3270(c0987);
        this.f8529 = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C2177.class == obj.getClass()) {
            C2177 c2177 = (C2177) obj;
            if (this.f8531 == c2177.f8531 && this.f8530 == c2177.f8530 && this.f8527.equals(c2177.f8527)) {
                AbstractC0996 abstractC0996 = c2177.f8528;
                AbstractC0996 abstractC09962 = this.f8528;
                abstractC09962.getClass();
                if (AbstractC1004.m3297(abstractC09962, abstractC0996) && this.f8529.equals(c2177.f8529)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f8529.hashCode() + ((this.f8528.hashCode() + ((this.f8527.hashCode() + ((((217 + this.f8531) * 31) + this.f8530) * 31)) * 31)) * 31);
    }
}

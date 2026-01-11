package p055;

import j$.util.Objects;
import java.util.Collections;
import java.util.List;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p035.AbstractC1220;
import p305.AbstractC3712;

/* renamed from: ʽⁱ.ᴵˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1480 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C1452 f5778;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C1482 f5779;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C1443 f5780;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1444 f5781;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f5782;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C1491 f5783;

    static {
        C1468 c1468 = new C1468();
        C0982 c0982 = AbstractC0993.f3977;
        C0956 c0956 = C0956.f3901;
        List list = Collections.EMPTY_LIST;
        C0956 c09562 = C0956.f3901;
        C1473 c1473 = new C1473();
        C1491 c1491 = C1491.f5888;
        c1468.m4276();
        c1473.m4278();
        C1482 c1482 = C1482.f5805;
        AbstractC1220.m3785(0, 1, 2, 3, 4);
        AbstractC3712.m7802(5);
    }

    public C1480(String str, C1443 c1443, C1444 c1444, C1452 c1452, C1482 c1482, C1491 c1491) {
        this.f5782 = str;
        this.f5781 = c1444;
        this.f5778 = c1452;
        this.f5779 = c1482;
        this.f5780 = c1443;
        this.f5783 = c1491;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1480)) {
            return false;
        }
        C1480 c1480 = (C1480) obj;
        return Objects.equals(this.f5782, c1480.f5782) && this.f5780.equals(c1480.f5780) && Objects.equals(this.f5781, c1480.f5781) && this.f5778.equals(c1480.f5778) && Objects.equals(this.f5779, c1480.f5779) && Objects.equals(this.f5783, c1480.f5783);
    }

    public final int hashCode() {
        int hashCode = this.f5782.hashCode() * 31;
        C1444 c1444 = this.f5781;
        int hashCode2 = (this.f5779.hashCode() + ((this.f5780.hashCode() + ((this.f5778.hashCode() + ((hashCode + (c1444 != null ? c1444.hashCode() : 0)) * 31)) * 31)) * 31)) * 31;
        this.f5783.getClass();
        return hashCode2;
    }
}

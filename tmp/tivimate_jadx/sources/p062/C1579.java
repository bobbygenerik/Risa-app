package p062;

import java.util.Map;
import p152.AbstractC2444;
import p246.InterfaceC3291;
import p438.AbstractC5176;
import p438.C5169;
import p438.C5179;

/* renamed from: ʾˈ.ᵎⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1579 {
    public static final C1555 Companion = new Object();

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final InterfaceC3291[] f6171;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Map f6172;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1567 f6173;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1583 f6174;

    /* JADX WARN: Type inference failed for: r0v0, types: [ʾˈ.ˉٴ, java.lang.Object] */
    static {
        C5169 c5169 = C5169.f19463;
        f6171 = new InterfaceC3291[]{null, null, new C5179(C1534.f6023)};
    }

    public /* synthetic */ C1579(int i, C1583 c1583, C1567 c1567, Map map) {
        if (1 != (i & 1)) {
            AbstractC5176.m10159(i, 1, C1569.f6133.mo4337());
            throw null;
        }
        this.f6174 = c1583;
        if ((i & 2) == 0) {
            this.f6173 = null;
        } else {
            this.f6173 = c1567;
        }
        if ((i & 4) == 0) {
            this.f6172 = null;
        } else {
            this.f6172 = map;
        }
    }

    public C1579(C1583 c1583, C1567 c1567, Map map) {
        this.f6174 = c1583;
        this.f6173 = c1567;
        this.f6172 = map;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C1579 m4365(C1579 c1579, C1583 c1583, C1567 c1567, Map map, int i) {
        if ((i & 1) != 0) {
            c1583 = c1579.f6174;
        }
        if ((i & 2) != 0) {
            c1567 = c1579.f6173;
        }
        if ((i & 4) != 0) {
            map = c1579.f6172;
        }
        c1579.getClass();
        return new C1579(c1583, c1567, map);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1579)) {
            return false;
        }
        C1579 c1579 = (C1579) obj;
        return AbstractC2444.m5562(this.f6174, c1579.f6174) && AbstractC2444.m5562(this.f6173, c1579.f6173) && AbstractC2444.m5562(this.f6172, c1579.f6172);
    }

    public final int hashCode() {
        int hashCode = this.f6174.hashCode() * 31;
        C1567 c1567 = this.f6173;
        int hashCode2 = (hashCode + (c1567 == null ? 0 : c1567.hashCode())) * 31;
        Map map = this.f6172;
        return hashCode2 + (map != null ? map.hashCode() : 0);
    }

    public final String toString() {
        return "SessionData(sessionDetails=" + this.f6174 + ", backgroundTime=" + this.f6173 + ", processDataMap=" + this.f6172 + ')';
    }
}

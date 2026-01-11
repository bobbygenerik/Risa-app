package p420;

import p017.AbstractC0993;
import p017.C0956;
import p055.C1474;
import p305.AbstractC3712;
import p305.AbstractC3731;

/* renamed from: ﹳᵢ.ʻᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4936 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C4936 f18384 = new C4936(new C1474[0]);

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f18385;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C0956 f18386;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f18387;

    static {
        AbstractC3712.m7802(0);
    }

    public C4936(C1474... c1474Arr) {
        C0956 m3267 = AbstractC0993.m3267(c1474Arr);
        this.f18386 = m3267;
        this.f18387 = c1474Arr.length;
        int i = 0;
        while (i < m3267.f3903) {
            int i2 = i + 1;
            for (int i3 = i2; i3 < m3267.f3903; i3++) {
                if (((C1474) m3267.get(i)).equals(m3267.get(i3))) {
                    AbstractC3731.m7863("TrackGroupArray", "", new IllegalArgumentException("Multiple identical TrackGroups added to one TrackGroupArray."));
                }
            }
            i = i2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C4936.class != obj.getClass()) {
            return false;
        }
        C4936 c4936 = (C4936) obj;
        return this.f18387 == c4936.f18387 && this.f18386.equals(c4936.f18386);
    }

    public final int hashCode() {
        if (this.f18385 == 0) {
            this.f18385 = this.f18386.hashCode();
        }
        return this.f18385;
    }

    public final String toString() {
        return this.f18386.toString();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m9740(C1474 c1474) {
        int indexOf = this.f18386.indexOf(c1474);
        if (indexOf >= 0) {
            return indexOf;
        }
        return -1;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1474 m9741(int i) {
        return (C1474) this.f18386.get(i);
    }
}

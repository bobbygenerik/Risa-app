package p171;

import p035.AbstractC1220;

/* renamed from: ˊﾞ.ᵢˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2647 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2641 f10034;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2641 f10035;

    public C2647(C2641 c2641, C2641 c26412) {
        this.f10035 = c2641;
        this.f10034 = c26412;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C2647.class == obj.getClass()) {
            C2647 c2647 = (C2647) obj;
            if (this.f10035.equals(c2647.f10035) && this.f10034.equals(c2647.f10034)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f10034.hashCode() + (this.f10035.hashCode() * 31);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("[");
        C2641 c2641 = this.f10035;
        sb.append(c2641);
        C2641 c26412 = this.f10034;
        if (c2641.equals(c26412)) {
            str = "";
        } else {
            str = ", " + c26412;
        }
        return AbstractC1220.m3775(sb, str, "]");
    }
}

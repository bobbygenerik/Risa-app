package p076;

import j$.util.Objects;
import p035.AbstractC1220;
import p305.AbstractC3712;

/* renamed from: ʾﾞ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1661 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C1661 f6757 = new C1661(-1, -1, -1);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f6758;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f6759;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f6760;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f6761;

    public C1661(int i, int i2, int i3) {
        this.f6761 = i;
        this.f6760 = i2;
        this.f6758 = i3;
        this.f6759 = AbstractC3712.m7770(i3) ? AbstractC3712.m7780(i3) * i2 : -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1661)) {
            return false;
        }
        C1661 c1661 = (C1661) obj;
        return this.f6761 == c1661.f6761 && this.f6760 == c1661.f6760 && this.f6758 == c1661.f6758;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f6761), Integer.valueOf(this.f6760), Integer.valueOf(this.f6758));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AudioFormat[sampleRate=");
        sb.append(this.f6761);
        sb.append(", channelCount=");
        sb.append(this.f6760);
        sb.append(", encoding=");
        return AbstractC1220.m3784(sb, this.f6758, ']');
    }
}

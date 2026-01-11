package p062;

import p137.AbstractC2305;
import p152.AbstractC2444;
import p438.AbstractC5176;

/* renamed from: ʾˈ.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1541 {
    public static final C1586 Companion = new Object();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f6058;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f6059;

    public /* synthetic */ C1541(int i, int i2, String str) {
        if (3 != (i & 3)) {
            AbstractC5176.m10159(i, 3, C1534.f6023.mo4337());
            throw null;
        }
        this.f6059 = i2;
        this.f6058 = str;
    }

    public C1541(int i, String str) {
        this.f6059 = i;
        this.f6058 = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1541)) {
            return false;
        }
        C1541 c1541 = (C1541) obj;
        return this.f6059 == c1541.f6059 && AbstractC2444.m5562(this.f6058, c1541.f6058);
    }

    public final int hashCode() {
        return this.f6058.hashCode() + (this.f6059 * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ProcessData(pid=");
        sb.append(this.f6059);
        sb.append(", uuid=");
        return AbstractC2305.m5384(sb, this.f6058, ')');
    }
}

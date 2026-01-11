package p055;

import java.util.Collections;
import java.util.List;
import p017.AbstractC0993;
import p305.AbstractC3712;

/* renamed from: ʽⁱ.ﹳـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1493 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final AbstractC0993 f5896;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1474 f5897;

    static {
        AbstractC3712.m7802(0);
        AbstractC3712.m7802(1);
    }

    public C1493(C1474 c1474, List list) {
        if (!list.isEmpty() && (((Integer) Collections.min(list)).intValue() < 0 || ((Integer) Collections.max(list)).intValue() >= c1474.f5770)) {
            throw new IndexOutOfBoundsException();
        }
        this.f5897 = c1474;
        this.f5896 = AbstractC0993.m3264(list);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1493.class == obj.getClass()) {
            C1493 c1493 = (C1493) obj;
            if (this.f5897.equals(c1493.f5897) && this.f5896.equals(c1493.f5896)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f5896.hashCode() * 31) + this.f5897.hashCode();
    }
}

package p026;

import java.util.LinkedHashMap;
import p152.AbstractC2444;

/* renamed from: ʼـ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1078 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final LinkedHashMap f4234 = new LinkedHashMap();

    public final boolean equals(Object obj) {
        if (obj instanceof AbstractC1078) {
            return AbstractC2444.m5562(this.f4234, ((AbstractC1078) obj).f4234);
        }
        return false;
    }

    public final int hashCode() {
        return this.f4234.hashCode();
    }

    public final String toString() {
        return "CreationExtras(extras=" + this.f4234 + ')';
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public abstract Object mo3424(InterfaceC1080 interfaceC1080);
}

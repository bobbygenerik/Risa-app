package androidx.lifecycle;

import java.lang.reflect.Method;

/* renamed from: androidx.lifecycle.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0160 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Method f1036;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f1037;

    public C0160(int i, Method method) {
        this.f1037 = i;
        this.f1036 = method;
        method.setAccessible(true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0160)) {
            return false;
        }
        C0160 c0160 = (C0160) obj;
        return this.f1037 == c0160.f1037 && this.f1036.getName().equals(c0160.f1036.getName());
    }

    public final int hashCode() {
        return this.f1036.getName().hashCode() + (this.f1037 * 31);
    }
}

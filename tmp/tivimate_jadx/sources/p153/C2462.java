package p153;

import p126.InterfaceC2138;
import p152.AbstractC2444;

/* renamed from: ˊʽ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2462 implements InterfaceC2138 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ThreadLocal f9426;

    public C2462(ThreadLocal threadLocal) {
        this.f9426 = threadLocal;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C2462) && AbstractC2444.m5562(this.f9426, ((C2462) obj).f9426);
    }

    public final int hashCode() {
        return this.f9426.hashCode();
    }

    public final String toString() {
        return "ThreadLocalKey(threadLocal=" + this.f9426 + ')';
    }
}

package p383;

import java.util.ArrayDeque;
import p087.AbstractC1746;

/* renamed from: ⁱʼ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4594 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final ArrayDeque f17110;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public Object f17111;

    static {
        char[] cArr = AbstractC1746.f7105;
        f17110 = new ArrayDeque(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C4594 m9139(Object obj) {
        C4594 c4594;
        C4594 c45942;
        ArrayDeque arrayDeque = f17110;
        synchronized (arrayDeque) {
            c4594 = (C4594) arrayDeque.poll();
            c45942 = c4594;
        }
        if (c4594 == null) {
            c45942 = new Object();
        }
        c45942.f17111 = obj;
        return c45942;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C4594) && this.f17111.equals(((C4594) obj).f17111);
    }

    public final int hashCode() {
        return this.f17111.hashCode();
    }
}

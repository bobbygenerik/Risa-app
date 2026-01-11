package p073;

import java.util.ArrayDeque;
import p087.AbstractC1746;
import p376.C4535;

/* renamed from: ʾⁱ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1642 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ArrayDeque f6680;

    public C1642(int i) {
        switch (i) {
            case 1:
                char[] cArr = AbstractC1746.f7105;
                this.f6680 = new ArrayDeque(0);
                return;
            default:
                this.f6680 = new ArrayDeque();
                return;
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public synchronized void m4493(C4535 c4535) {
        c4535.f16972 = null;
        c4535.f16970 = null;
        this.f6680.offer(c4535);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m4494(C1647 c1647) {
        synchronized (this.f6680) {
            try {
                if (this.f6680.size() < 10) {
                    this.f6680.offer(c1647);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C1647 m4495() {
        C1647 c1647;
        synchronized (this.f6680) {
            c1647 = (C1647) this.f6680.poll();
        }
        return c1647 == null ? new C1647() : c1647;
    }
}

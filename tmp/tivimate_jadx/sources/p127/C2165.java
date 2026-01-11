package p127;

import com.parse.ʼᐧ;
import java.util.Comparator;
import java.util.TreeSet;
import ˈˊ.ˉˆ;

/* renamed from: ˈـ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2165 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f8440;

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f8441;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f8442;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final TreeSet f8443 = new TreeSet((Comparator) new ʼᐧ(4));

    public C2165() {
        m5144();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static int m5141(int i, int i2) {
        int min;
        int i3 = i - i2;
        return (Math.abs(i3) <= 1000 || (min = (Math.min(i, i2) - Math.max(i, i2)) + 65535) >= 1000) ? i3 : i < i2 ? min : -min;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final synchronized void m5142(C2145 c2145, long j) {
        if (this.f8443.size() >= 5000) {
            throw new IllegalStateException("Queue size limit of 5000 reached.");
        }
        int i = c2145.f8335;
        if (!this.f8441) {
            m5144();
            this.f8440 = ˉˆ.ʼʼ(i - 1);
            this.f8441 = true;
            m5145(new C2152(c2145, j));
            return;
        }
        if (Math.abs(m5141(i, C2145.m5097(this.f8442))) < 1000) {
            if (m5141(i, this.f8440) > 0) {
                m5145(new C2152(c2145, j));
            }
        } else {
            this.f8440 = ˉˆ.ʼʼ(i - 1);
            this.f8443.clear();
            m5145(new C2152(c2145, j));
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final synchronized C2145 m5143(long j) {
        if (this.f8443.isEmpty()) {
            return null;
        }
        C2152 c2152 = (C2152) this.f8443.first();
        int i = c2152.f8374.f8335;
        if (i != C2145.m5097(this.f8440) && j < c2152.f8373) {
            return null;
        }
        this.f8443.pollFirst();
        this.f8440 = i;
        return c2152.f8374;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final synchronized void m5144() {
        this.f8443.clear();
        this.f8441 = false;
        this.f8440 = -1;
        this.f8442 = -1;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final synchronized void m5145(C2152 c2152) {
        this.f8442 = c2152.f8374.f8335;
        this.f8443.add(c2152);
    }
}

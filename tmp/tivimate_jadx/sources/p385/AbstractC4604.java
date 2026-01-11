package p385;

import java.util.ArrayDeque;
import p012.AbstractC0905;
import p027.C1085;
import p051.AbstractC1387;
import p051.C1395;
import p051.InterfaceC1392;
import p283.C3569;
import p305.AbstractC3712;
import p305.AbstractC3731;

/* renamed from: ⁱʾ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4604 implements InterfaceC1392 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ArrayDeque f17127;

    /* renamed from: ˈ, reason: contains not printable characters */
    public C4608 f17128;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public long f17129;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public long f17130;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ArrayDeque f17131;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ArrayDeque f17132 = new ArrayDeque();

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public long f17133;

    /* JADX WARN: Type inference failed for: r2v1, types: [ⁱʾ.ᵔᵢ, java.lang.Object, ʻᴵ.ﾞᴵ] */
    public AbstractC4604() {
        for (int i = 0; i < 10; i++) {
            this.f17132.add(new C1395());
        }
        this.f17131 = new ArrayDeque();
        for (int i2 = 0; i2 < 2; i2++) {
            ArrayDeque arrayDeque = this.f17131;
            C3569 c3569 = new C3569(17, this);
            ?? abstractC0905 = new AbstractC0905(3);
            abstractC0905.f17195 = c3569;
            arrayDeque.add(abstractC0905);
        }
        this.f17127 = new ArrayDeque();
        this.f17130 = -9223372036854775807L;
    }

    @Override // p421.InterfaceC4995
    public void flush() {
        ArrayDeque arrayDeque;
        this.f17133 = 0L;
        this.f17129 = 0L;
        while (true) {
            ArrayDeque arrayDeque2 = this.f17127;
            boolean isEmpty = arrayDeque2.isEmpty();
            arrayDeque = this.f17132;
            if (isEmpty) {
                break;
            }
            C4608 c4608 = (C4608) arrayDeque2.poll();
            String str = AbstractC3712.f14481;
            c4608.mo3629();
            arrayDeque.add(c4608);
        }
        C4608 c46082 = this.f17128;
        if (c46082 != null) {
            c46082.mo3629();
            arrayDeque.add(c46082);
            this.f17128 = null;
        }
    }

    @Override // p421.InterfaceC4995
    /* renamed from: ʼˎ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public AbstractC1387 mo9159() {
        ArrayDeque arrayDeque = this.f17131;
        if (arrayDeque.isEmpty()) {
            return null;
        }
        while (true) {
            ArrayDeque arrayDeque2 = this.f17127;
            if (arrayDeque2.isEmpty()) {
                return null;
            }
            C4608 c4608 = (C4608) arrayDeque2.peek();
            String str = AbstractC3712.f14481;
            if (c4608.f18671 > this.f17129) {
                return null;
            }
            C4608 c46082 = (C4608) arrayDeque2.poll();
            boolean m3177 = c46082.m3177(4);
            ArrayDeque arrayDeque3 = this.f17132;
            if (m3177) {
                AbstractC1387 abstractC1387 = (AbstractC1387) arrayDeque.pollFirst();
                abstractC1387.m3183(4);
                c46082.mo3629();
                arrayDeque3.add(c46082);
                return abstractC1387;
            }
            mo9161(c46082);
            if (mo9158()) {
                C1085 mo9160 = mo9160();
                AbstractC1387 abstractC13872 = (AbstractC1387) arrayDeque.pollFirst();
                long j = c46082.f18671;
                abstractC13872.f18690 = j;
                abstractC13872.f5444 = mo9160;
                abstractC13872.f5445 = j;
                c46082.mo3629();
                arrayDeque3.add(c46082);
                return abstractC13872;
            }
            c46082.mo3629();
            arrayDeque3.add(c46082);
        }
    }

    @Override // p421.InterfaceC4995
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo9157(long j) {
        this.f17130 = j;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public abstract boolean mo9158();

    @Override // p051.InterfaceC1392
    /* renamed from: ˈ */
    public final void mo4114(long j) {
        this.f17129 = j;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public abstract C1085 mo9160();

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public abstract void mo9161(C4608 c4608);

    @Override // p421.InterfaceC4995
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo9162(C1395 c1395) {
        AbstractC3731.m7849(c1395 == this.f17128);
        C4608 c4608 = (C4608) c1395;
        if (!c4608.m3177(4)) {
            long j = c4608.f18671;
            if (j != Long.MIN_VALUE) {
                long j2 = this.f17130;
                if (j2 != -9223372036854775807L && j < j2) {
                    c4608.mo3629();
                    this.f17132.add(c4608);
                    this.f17128 = null;
                }
            }
        }
        long j3 = this.f17133;
        this.f17133 = 1 + j3;
        c4608.f17194 = j3;
        this.f17127.add(c4608);
        this.f17128 = null;
    }

    @Override // p421.InterfaceC4995
    /* renamed from: ﹳٴ */
    public void mo750() {
    }

    @Override // p421.InterfaceC4995
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final Object mo9163() {
        AbstractC3731.m7857(this.f17128 == null);
        ArrayDeque arrayDeque = this.f17132;
        if (arrayDeque.isEmpty()) {
            return null;
        }
        C4608 c4608 = (C4608) arrayDeque.pollFirst();
        this.f17128 = c4608;
        return c4608;
    }
}

package p436;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import p012.C0902;
import p013.C0907;
import p153.AbstractC2481;
import p153.AbstractC2483;
import p307.AbstractC3740;
import p324.InterfaceC3996;
import p324.InterfaceC4002;
import ʼⁱ.ˏי;

/* renamed from: ﹶי.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C5162 {
    private volatile /* synthetic */ int _availablePermits$volatile;
    private volatile /* synthetic */ long deqIdx$volatile;
    private volatile /* synthetic */ long enqIdx$volatile;
    private volatile /* synthetic */ Object head$volatile;
    private volatile /* synthetic */ Object tail$volatile;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f19453;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ˏי f19454;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f19448 = AtomicReferenceFieldUpdater.newUpdater(C5162.class, Object.class, "head$volatile");

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicLongFieldUpdater f19449 = AtomicLongFieldUpdater.newUpdater(C5162.class, "deqIdx$volatile");

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f19452 = AtomicReferenceFieldUpdater.newUpdater(C5162.class, Object.class, "tail$volatile");

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicLongFieldUpdater f19450 = AtomicLongFieldUpdater.newUpdater(C5162.class, "enqIdx$volatile");

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f19451 = AtomicIntegerFieldUpdater.newUpdater(C5162.class, "_availablePermits$volatile");

    public C5162(int i, int i2) {
        this.f19453 = i;
        if (i <= 0) {
            throw new IllegalArgumentException(AbstractC3740.m7932(i, "Semaphore should have at least 1 permit, but had ").toString());
        }
        if (i2 < 0 || i2 > i) {
            throw new IllegalArgumentException(AbstractC3740.m7932(i, "The number of acquired permits should be in 0..").toString());
        }
        C5159 c5159 = new C5159(0L, null, 2);
        this.head$volatile = c5159;
        this.tail$volatile = c5159;
        this._availablePermits$volatile = i - i2;
        this.f19454 = new ˏי(23, this);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m10155() {
        int i;
        Object m5627;
        boolean z;
        do {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f19451;
            int andIncrement = atomicIntegerFieldUpdater.getAndIncrement(this);
            int i2 = this.f19453;
            if (andIncrement >= i2) {
                do {
                    i = atomicIntegerFieldUpdater.get(this);
                    if (i <= i2) {
                        break;
                    }
                } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, i2));
                throw new IllegalStateException(("The number of released permits cannot be greater than " + i2).toString());
            }
            if (andIncrement >= 0) {
                return;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f19448;
            C5159 c5159 = (C5159) atomicReferenceFieldUpdater.get(this);
            long andIncrement2 = f19449.getAndIncrement(this);
            long j = andIncrement2 / AbstractC5157.f19443;
            C5166 c5166 = C5166.f19457;
            while (true) {
                m5627 = AbstractC2481.m5627(c5159, j, c5166);
                if (AbstractC2481.m5623(m5627)) {
                    break;
                }
                AbstractC2483 m5619 = AbstractC2481.m5619(m5627);
                while (true) {
                    AbstractC2483 abstractC2483 = (AbstractC2483) atomicReferenceFieldUpdater.get(this);
                    if (abstractC2483.f9472 >= m5619.f9472) {
                        break;
                    }
                    if (!m5619.m5632()) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, abstractC2483, m5619)) {
                        if (atomicReferenceFieldUpdater.get(this) != abstractC2483) {
                            if (m5619.m5633()) {
                                m5619.m5589();
                            }
                        }
                    }
                    if (abstractC2483.m5633()) {
                        abstractC2483.m5589();
                    }
                }
            }
            C5159 c51592 = (C5159) AbstractC2481.m5619(m5627);
            c51592.m5590();
            AtomicReferenceArray atomicReferenceArray = c51592.f19445;
            z = false;
            if (c51592.f9472 <= j) {
                int i3 = (int) (andIncrement2 % AbstractC5157.f19443);
                Object andSet = atomicReferenceArray.getAndSet(i3, AbstractC5157.f19441);
                if (andSet == null) {
                    int i4 = AbstractC5157.f19442;
                    for (int i5 = 0; i5 < i4; i5++) {
                        if (atomicReferenceArray.get(i3) == AbstractC5157.f19438) {
                            z = true;
                            break;
                        }
                    }
                    C0902 c0902 = AbstractC5157.f19441;
                    C0902 c09022 = AbstractC5157.f19439;
                    while (true) {
                        if (!atomicReferenceArray.compareAndSet(i3, c0902, c09022)) {
                            if (atomicReferenceArray.get(i3) != c0902) {
                                break;
                            }
                        } else {
                            z = true;
                            break;
                        }
                    }
                    z = !z;
                } else if (andSet != AbstractC5157.f19440) {
                    if (!(andSet instanceof InterfaceC4002)) {
                        throw new IllegalStateException(("unexpected: " + andSet).toString());
                    }
                    InterfaceC4002 interfaceC4002 = (InterfaceC4002) andSet;
                    C0902 mo8188 = interfaceC4002.mo8188(C0907.f3832, this.f19454);
                    if (mo8188 != null) {
                        interfaceC4002.mo8187(mo8188);
                        z = true;
                        break;
                        break;
                    }
                }
            }
        } while (!z);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m10156(InterfaceC3996 interfaceC3996) {
        Object m5627;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f19452;
        C5159 c5159 = (C5159) atomicReferenceFieldUpdater.get(this);
        long andIncrement = f19450.getAndIncrement(this);
        C5161 c5161 = C5161.f19447;
        long j = andIncrement / AbstractC5157.f19443;
        loop0: while (true) {
            m5627 = AbstractC2481.m5627(c5159, j, c5161);
            if (!AbstractC2481.m5623(m5627)) {
                AbstractC2483 m5619 = AbstractC2481.m5619(m5627);
                while (true) {
                    AbstractC2483 abstractC2483 = (AbstractC2483) atomicReferenceFieldUpdater.get(this);
                    if (abstractC2483.f9472 >= m5619.f9472) {
                        break loop0;
                    }
                    if (!m5619.m5632()) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, abstractC2483, m5619)) {
                        if (atomicReferenceFieldUpdater.get(this) != abstractC2483) {
                            if (m5619.m5633()) {
                                m5619.m5589();
                            }
                        }
                    }
                    if (abstractC2483.m5633()) {
                        abstractC2483.m5589();
                    }
                }
            } else {
                break;
            }
        }
        C5159 c51592 = (C5159) AbstractC2481.m5619(m5627);
        AtomicReferenceArray atomicReferenceArray = c51592.f19445;
        int i = (int) (andIncrement % AbstractC5157.f19443);
        while (!atomicReferenceArray.compareAndSet(i, null, interfaceC3996)) {
            if (atomicReferenceArray.get(i) != null) {
                C0902 c0902 = AbstractC5157.f19441;
                C0902 c09022 = AbstractC5157.f19438;
                while (!atomicReferenceArray.compareAndSet(i, c0902, c09022)) {
                    if (atomicReferenceArray.get(i) != c0902) {
                        return false;
                    }
                }
                ((InterfaceC4002) interfaceC3996).mo8186(C0907.f3832, this.f19454);
                return true;
            }
        }
        interfaceC3996.mo3896(c51592, i);
        return true;
    }
}

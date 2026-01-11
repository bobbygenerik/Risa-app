package p153;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import p126.InterfaceC2139;
import p324.InterfaceC4015;

/* renamed from: ˊʽ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2483 extends AbstractC2465 implements InterfaceC4015 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f9471 = AtomicIntegerFieldUpdater.newUpdater(AbstractC2483.class, "cleanedAndPointers$volatile");
    private volatile /* synthetic */ int cleanedAndPointers$volatile;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f9472;

    public AbstractC2483(long j, AbstractC2483 abstractC2483, int i) {
        super(abstractC2483);
        this.f9472 = j;
        this.cleanedAndPointers$volatile = i << 16;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m5631() {
        if (f9471.incrementAndGet(this) == mo3903()) {
            m5589();
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final boolean m5632() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i;
        do {
            atomicIntegerFieldUpdater = f9471;
            i = atomicIntegerFieldUpdater.get(this);
            if (i == mo3903() && m5587() != null) {
                return false;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, 65536 + i));
        return true;
    }

    @Override // p153.AbstractC2465
    /* renamed from: ˈ */
    public final boolean mo5588() {
        return f9471.get(this) == mo3903() && m5587() != null;
    }

    /* renamed from: ᵎﹶ */
    public abstract int mo3903();

    /* renamed from: ᵔᵢ */
    public abstract void mo3905(int i, InterfaceC2139 interfaceC2139);

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean m5633() {
        return f9471.addAndGet(this, -65536) == mo3903() && m5587() != null;
    }
}

package p324;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import ʼⁱ.ᴵˊ;

/* renamed from: ᴵי.ˈⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4008 extends AbstractC4000 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f15387 = AtomicIntegerFieldUpdater.newUpdater(C4008.class, "_invoked$volatile");
    private volatile /* synthetic */ int _invoked$volatile;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final ᴵˊ f15388;

    public C4008(ᴵˊ r1) {
        this.f15388 = r1;
    }

    @Override // p324.AbstractC4000
    /* renamed from: ˆʾ */
    public final boolean mo8153() {
        return true;
    }

    @Override // p324.AbstractC4000
    /* renamed from: ٴﹶ */
    public final void mo8154(Throwable th) {
        if (f15387.compareAndSet(this, 0, 1)) {
            this.f15388.ⁱˊ(th);
        }
    }
}

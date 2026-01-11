package p340;

import java.util.concurrent.atomic.AtomicReference;
import p089.AbstractC1757;
import p089.AbstractC1768;
import p089.AbstractC1769;
import p126.InterfaceC2136;

/* renamed from: ᵎˈ.ˉٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4243 extends AbstractC1757 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AtomicReference f15769 = new AtomicReference(null);

    @Override // p089.AbstractC1757
    /* renamed from: ⁱˊ */
    public final InterfaceC2136[] mo4716(AbstractC1769 abstractC1769) {
        this.f15769.set(null);
        return AbstractC1768.f7153;
    }

    @Override // p089.AbstractC1757
    /* renamed from: ﹳٴ */
    public final boolean mo4717(AbstractC1769 abstractC1769) {
        AtomicReference atomicReference = this.f15769;
        if (atomicReference.get() != null) {
            return false;
        }
        atomicReference.set(AbstractC4240.f15758);
        return true;
    }
}

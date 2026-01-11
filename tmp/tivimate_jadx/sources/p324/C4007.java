package p324;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import p153.AbstractC2481;
import p153.C2480;
import ˉᵎ.ⁱˊ;

/* renamed from: ᴵי.ˈٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4007 extends C2480 {

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f15386 = AtomicIntegerFieldUpdater.newUpdater(C4007.class, "_decision$volatile");
    private volatile /* synthetic */ int _decision$volatile;

    @Override // p153.C2480, p324.C4031
    /* renamed from: ˑﹳ */
    public final void mo5614(Object obj) {
        mo5615(obj);
    }

    @Override // p153.C2480, p324.C4031
    /* renamed from: ٴﹶ */
    public final void mo5615(Object obj) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        do {
            atomicIntegerFieldUpdater = f15386;
            int i = atomicIntegerFieldUpdater.get(this);
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("Already resumed");
                }
                AbstractC2481.m5626(AbstractC3999.m8177(obj), ⁱˊ.ˈٴ(this.f9462));
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, 0, 2));
    }
}

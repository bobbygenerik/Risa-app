package p336;

import java.util.concurrent.atomic.AtomicReference;
import p013.C0907;
import p013.InterfaceC0920;
import p126.InterfaceC2136;
import p152.AbstractC2444;
import p152.C2458;
import p152.InterfaceC2453;
import p340.InterfaceC4256;

/* renamed from: ᵎʽ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C4218 implements InterfaceC4256, InterfaceC2453 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ AtomicReference f15685;

    public C4218(AtomicReference atomicReference) {
        this.f15685 = atomicReference;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof InterfaceC4256) && (obj instanceof InterfaceC2453)) {
            return AbstractC2444.m5562(mo5579(), ((InterfaceC2453) obj).mo5579());
        }
        return false;
    }

    public final int hashCode() {
        return mo5579().hashCode();
    }

    @Override // p152.InterfaceC2453
    /* renamed from: ⁱˊ */
    public final InterfaceC0920 mo5579() {
        return new C2458(2, this.f15685, AtomicReference.class, "set", "set(Ljava/lang/Object;)V", 4);
    }

    @Override // p340.InterfaceC4256
    /* renamed from: ﹳٴ */
    public final Object mo3399(Object obj, InterfaceC2136 interfaceC2136) {
        this.f15685.set((C4219) obj);
        return C0907.f3832;
    }
}

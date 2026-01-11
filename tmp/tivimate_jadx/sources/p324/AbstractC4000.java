package p324;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import p153.C2468;
import p153.C2471;

/* renamed from: ᴵי.ʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4000 extends C2468 implements InterfaceC4041, InterfaceC4024 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C4031 f15378;

    @Override // p153.C2468
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append('@');
        sb.append(AbstractC3999.m8173(this));
        sb.append("[job@");
        C4031 c4031 = this.f15378;
        if (c4031 == null) {
            c4031 = null;
        }
        sb.append(AbstractC3999.m8173(c4031));
        sb.append(']');
        return sb.toString();
    }

    @Override // p324.InterfaceC4024
    /* renamed from: ʽ */
    public final boolean mo8150() {
        return true;
    }

    /* renamed from: ˆʾ */
    public abstract boolean mo8153();

    @Override // p324.InterfaceC4024
    /* renamed from: ˈ */
    public final C4018 mo8151() {
        return null;
    }

    /* renamed from: ٴﹶ */
    public abstract void mo8154(Throwable th);

    @Override // p324.InterfaceC4041
    /* renamed from: ﹳٴ */
    public final void mo4747() {
        C4031 c4031 = this.f15378;
        if (c4031 == null) {
            c4031 = null;
        }
        c4031.getClass();
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C4031.f15415;
            Object obj = atomicReferenceFieldUpdater.get(c4031);
            if (obj instanceof AbstractC4000) {
                if (obj != this) {
                    return;
                }
                C4027 c4027 = AbstractC3999.f15370;
                while (!atomicReferenceFieldUpdater.compareAndSet(c4031, obj, c4027)) {
                    if (atomicReferenceFieldUpdater.get(c4031) != obj) {
                        break;
                    }
                }
                return;
            }
            if (!(obj instanceof InterfaceC4024) || ((InterfaceC4024) obj).mo8151() == null) {
                return;
            }
            while (true) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = C2468.f9437;
                Object obj2 = atomicReferenceFieldUpdater2.get(this);
                if (obj2 instanceof C2471) {
                    return;
                }
                if (obj2 == this) {
                    return;
                }
                C2468 c2468 = (C2468) obj2;
                c2468.getClass();
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3 = C2468.f9436;
                C2471 c2471 = (C2471) atomicReferenceFieldUpdater3.get(c2468);
                if (c2471 == null) {
                    c2471 = new C2471(c2468);
                    atomicReferenceFieldUpdater3.set(c2468, c2471);
                }
                while (!atomicReferenceFieldUpdater2.compareAndSet(this, obj2, c2471)) {
                    if (atomicReferenceFieldUpdater2.get(this) != obj2) {
                        break;
                    }
                }
                c2468.m5597();
                return;
            }
        }
    }
}

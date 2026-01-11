package p324;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import p012.C0902;
import p013.C0922;
import p152.AbstractC2444;
import p153.AbstractC2481;
import p153.C2485;
import p329.InterfaceC4106;

/* renamed from: ᴵי.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4009 extends AbstractC4000 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final Object f15389;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f15390;

    public /* synthetic */ C4009(int i, Object obj) {
        this.f15390 = i;
        this.f15389 = obj;
    }

    @Override // p324.AbstractC4000
    /* renamed from: ˆʾ */
    public final boolean mo8153() {
        switch (this.f15390) {
            case 0:
                return true;
            case 1:
                return false;
            case 2:
                return false;
            default:
                return false;
        }
    }

    @Override // p324.AbstractC4000
    /* renamed from: ٴﹶ */
    public final void mo8154(Throwable th) {
        switch (this.f15390) {
            case 0:
                C4030 c4030 = (C4030) this.f15389;
                C4031 c4031 = this.f15378;
                if (c4031 == null) {
                    c4031 = null;
                }
                Throwable mo8185 = c4030.mo8185(c4031);
                if (c4030.m8210()) {
                    C2485 c2485 = (C2485) c4030.f15413;
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C2485.f9474;
                    while (true) {
                        Object obj = atomicReferenceFieldUpdater.get(c2485);
                        C0902 c0902 = AbstractC2481.f9463;
                        if (AbstractC2444.m5562(obj, c0902)) {
                            while (!atomicReferenceFieldUpdater.compareAndSet(c2485, c0902, mo8185)) {
                                if (atomicReferenceFieldUpdater.get(c2485) != c0902) {
                                    break;
                                }
                            }
                            return;
                        } else {
                            if (obj instanceof Throwable) {
                                return;
                            }
                            while (!atomicReferenceFieldUpdater.compareAndSet(c2485, obj, null)) {
                                if (atomicReferenceFieldUpdater.get(c2485) != obj) {
                                    break;
                                }
                            }
                        }
                    }
                }
                c4030.m8222(mo8185);
                if (c4030.m8210()) {
                    return;
                }
                c4030.m8225();
                return;
            case 1:
                ((InterfaceC4041) this.f15389).mo4747();
                return;
            case 2:
                ((InterfaceC4106) this.f15389).mo3844(th);
                return;
            default:
                C4001 c4001 = (C4001) this.f15389;
                C4031 c40312 = this.f15378;
                if (c40312 == null) {
                    c40312 = null;
                }
                c40312.getClass();
                Object obj2 = C4031.f15415.get(c40312);
                if (obj2 instanceof C4022) {
                    c4001.mo3549(new C0922(((C4022) obj2).f15404));
                    return;
                } else {
                    c4001.mo3549(AbstractC3999.m8157(obj2));
                    return;
                }
        }
    }
}

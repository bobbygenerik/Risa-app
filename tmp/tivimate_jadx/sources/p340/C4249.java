package p340;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import p012.C0902;
import p013.C0907;
import p089.AbstractC1757;
import p089.AbstractC1768;
import p089.AbstractC1769;
import p089.C1759;
import p089.InterfaceC1763;
import p126.InterfaceC2136;
import p126.InterfaceC2139;
import p152.AbstractC2444;
import p324.C4030;

/* renamed from: ᵎˈ.ٴᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4249 extends AbstractC1769 implements InterfaceC4258, InterfaceC4254, InterfaceC1763 {

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f15794 = AtomicReferenceFieldUpdater.newUpdater(C4249.class, Object.class, "_state$volatile");
    private volatile /* synthetic */ Object _state$volatile;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f15795;

    public C4249(Object obj) {
        this._state$volatile = obj;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean m8646(Object obj, Object obj2) {
        int i;
        AbstractC1757[] abstractC1757Arr;
        C0902 c0902;
        synchronized (this) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f15794;
            Object obj3 = atomicReferenceFieldUpdater.get(this);
            if (obj != null && !AbstractC2444.m5562(obj3, obj)) {
                return false;
            }
            if (AbstractC2444.m5562(obj3, obj2)) {
                return true;
            }
            atomicReferenceFieldUpdater.set(this, obj2);
            int i2 = this.f15795;
            if ((i2 & 1) != 0) {
                this.f15795 = i2 + 2;
                return true;
            }
            int i3 = i2 + 1;
            this.f15795 = i3;
            AbstractC1757[] abstractC1757Arr2 = this.f7155;
            while (true) {
                C4243[] c4243Arr = (C4243[]) abstractC1757Arr2;
                if (c4243Arr != null) {
                    for (C4243 c4243 : c4243Arr) {
                        if (c4243 != null) {
                            AtomicReference atomicReference = c4243.f15769;
                            while (true) {
                                Object obj4 = atomicReference.get();
                                if (obj4 != null && obj4 != (c0902 = AbstractC4240.f15757)) {
                                    C0902 c09022 = AbstractC4240.f15758;
                                    if (obj4 != c09022) {
                                        while (!atomicReference.compareAndSet(obj4, c09022)) {
                                            if (atomicReference.get() != obj4) {
                                                break;
                                            }
                                        }
                                        ((C4030) obj4).mo3549(C0907.f3832);
                                        break;
                                    }
                                    while (!atomicReference.compareAndSet(obj4, c0902)) {
                                        if (atomicReference.get() != obj4) {
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                synchronized (this) {
                    i = this.f15795;
                    if (i == i3) {
                        this.f15795 = i3 + 1;
                        return true;
                    }
                    abstractC1757Arr = this.f7155;
                }
                abstractC1757Arr2 = abstractC1757Arr;
                i3 = i;
            }
        }
    }

    @Override // p089.InterfaceC1763
    /* renamed from: ʽ */
    public final InterfaceC4254 mo4719(InterfaceC2139 interfaceC2139, int i, int i2) {
        return ((((i < 0 || i >= 2) && i != -2) || i2 != 2) && !((i == 0 || i == -3) && i2 == 1)) ? new C1759(this, interfaceC2139, i, i2, 0) : this;
    }

    @Override // p089.AbstractC1769
    /* renamed from: ˑﹳ */
    public final AbstractC1757 mo4729() {
        return new C4243();
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final Object m8647() {
        C0902 c0902 = AbstractC1768.f7152;
        Object obj = f15794.get(this);
        if (obj == c0902) {
            return null;
        }
        return obj;
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0083 A[Catch: all -> 0x003e, TryCatch #0 {all -> 0x003e, blocks: (B:13:0x0039, B:15:0x007b, B:17:0x0083, B:20:0x008a, B:21:0x008e, B:25:0x0091, B:27:0x00b2, B:30:0x00bf, B:31:0x00db, B:37:0x00eb, B:33:0x00e2, B:36:0x00e8, B:46:0x0097, B:49:0x009e, B:57:0x0053, B:59:0x005d, B:60:0x006e), top: B:7:0x0027 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00bf A[Catch: all -> 0x003e, TryCatch #0 {all -> 0x003e, blocks: (B:13:0x0039, B:15:0x007b, B:17:0x0083, B:20:0x008a, B:21:0x008e, B:25:0x0091, B:27:0x00b2, B:30:0x00bf, B:31:0x00db, B:37:0x00eb, B:33:0x00e2, B:36:0x00e8, B:46:0x0097, B:49:0x009e, B:57:0x0053, B:59:0x005d, B:60:0x006e), top: B:7:0x0027 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x009d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00be -> B:15:0x007b). Please report as a decompilation issue!!! */
    @Override // p340.InterfaceC4254
    /* renamed from: ⁱˊ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo3411(p340.InterfaceC4256 r18, p126.InterfaceC2136 r19) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p340.C4249.mo3411(ᵎˈ.ᵔᵢ, ˈי.ˈ):java.lang.Object");
    }

    @Override // p340.InterfaceC4256
    /* renamed from: ﹳٴ */
    public final Object mo3399(Object obj, InterfaceC2136 interfaceC2136) {
        if (obj == null) {
            obj = AbstractC1768.f7152;
        }
        m8646(null, obj);
        return C0907.f3832;
    }

    @Override // p089.AbstractC1769
    /* renamed from: ﾞᴵ */
    public final AbstractC1757[] mo4731() {
        return new C4243[2];
    }
}

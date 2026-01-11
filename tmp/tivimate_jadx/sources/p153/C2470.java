package p153;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import p012.C0902;

/* renamed from: ˊʽ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2470 {
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ long _state$volatile;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f9443;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ AtomicReferenceArray f9444;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean f9445;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f9446;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f9440 = AtomicReferenceFieldUpdater.newUpdater(C2470.class, Object.class, "_next$volatile");

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicLongFieldUpdater f9442 = AtomicLongFieldUpdater.newUpdater(C2470.class, "_state$volatile");

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final C0902 f9441 = new C0902(5, "REMOVE_FROZEN");

    public C2470(int i, boolean z) {
        this.f9446 = i;
        this.f9445 = z;
        int i2 = i - 1;
        this.f9443 = i2;
        this.f9444 = new AtomicReferenceArray(i);
        if (i2 > 1073741823) {
            throw new IllegalStateException("Check failed.");
        }
        if ((i & i2) != 0) {
            throw new IllegalStateException("Check failed.");
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2470 m5598() {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j;
        C2470 c2470;
        while (true) {
            atomicLongFieldUpdater = f9442;
            j = atomicLongFieldUpdater.get(this);
            if ((j & 1152921504606846976L) != 0) {
                c2470 = this;
                break;
            }
            long j2 = 1152921504606846976L | j;
            c2470 = this;
            if (atomicLongFieldUpdater.compareAndSet(c2470, j, j2)) {
                j = j2;
                break;
            }
        }
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9440;
            C2470 c24702 = (C2470) atomicReferenceFieldUpdater.get(this);
            if (c24702 != null) {
                return c24702;
            }
            C2470 c24703 = new C2470(c2470.f9446 * 2, c2470.f9445);
            int i = (int) (1073741823 & j);
            int i2 = (int) ((1152921503533105152L & j) >> 30);
            while (true) {
                int i3 = c2470.f9443;
                int i4 = i & i3;
                if (i4 == (i3 & i2)) {
                    break;
                }
                Object obj = c2470.f9444.get(i4);
                if (obj == null) {
                    obj = new C2484(i);
                }
                c24703.f9444.set(c24703.f9443 & i, obj);
                i++;
            }
            atomicLongFieldUpdater.set(c24703, (-1152921504606846977L) & j);
            while (!atomicReferenceFieldUpdater.compareAndSet(this, null, c24703) && atomicReferenceFieldUpdater.get(this) == null) {
            }
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Object m5599() {
        C2470 c2470 = this;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f9442;
            long j = atomicLongFieldUpdater.get(c2470);
            if ((j & 1152921504606846976L) != 0) {
                return f9441;
            }
            int i = (int) (j & 1073741823);
            int i2 = c2470.f9443;
            int i3 = i & i2;
            if ((((int) ((1152921503533105152L & j) >> 30)) & i2) == i3) {
                break;
            }
            AtomicReferenceArray atomicReferenceArray = c2470.f9444;
            Object obj = atomicReferenceArray.get(i3);
            boolean z = c2470.f9445;
            if (obj == null) {
                if (z) {
                    break;
                }
            } else {
                if (obj instanceof C2484) {
                    break;
                }
                long j2 = (i + 1) & 1073741823;
                if (f9442.compareAndSet(c2470, j, (j & (-1073741824)) | j2)) {
                    atomicReferenceArray.set(i3, null);
                    return obj;
                }
                c2470 = this;
                if (z) {
                    while (true) {
                        long j3 = atomicLongFieldUpdater.get(c2470);
                        int i4 = (int) (j3 & 1073741823);
                        if ((j3 & 1152921504606846976L) != 0) {
                            c2470 = c2470.m5598();
                        } else {
                            C2470 c24702 = c2470;
                            if (f9442.compareAndSet(c24702, j3, (j3 & (-1073741824)) | j2)) {
                                c24702.f9444.set(i4 & c24702.f9443, null);
                                c2470 = null;
                            } else {
                                c2470 = c24702;
                            }
                        }
                        if (c2470 == null) {
                            return obj;
                        }
                    }
                }
            }
        }
        return null;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean m5600() {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j;
        do {
            atomicLongFieldUpdater = f9442;
            j = atomicLongFieldUpdater.get(this);
            if ((j & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j) != 0) {
                return false;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j, 2305843009213693952L | j));
        return true;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m5601(Object obj) {
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f9442;
            long j = atomicLongFieldUpdater.get(this);
            if ((3458764513820540928L & j) != 0) {
                return (2305843009213693952L & j) != 0 ? 2 : 1;
            }
            int i = (int) (1073741823 & j);
            int i2 = (int) ((1152921503533105152L & j) >> 30);
            int i3 = this.f9443;
            if (((i2 + 2) & i3) == (i & i3)) {
                return 1;
            }
            boolean z = this.f9445;
            AtomicReferenceArray atomicReferenceArray = this.f9444;
            if (z || atomicReferenceArray.get(i2 & i3) == null) {
                if (f9442.compareAndSet(this, j, ((-1152921503533105153L) & j) | (((i2 + 1) & 1073741823) << 30))) {
                    atomicReferenceArray.set(i2 & i3, obj);
                    C2470 c2470 = this;
                    while ((atomicLongFieldUpdater.get(c2470) & 1152921504606846976L) != 0) {
                        c2470 = c2470.m5598();
                        AtomicReferenceArray atomicReferenceArray2 = c2470.f9444;
                        int i4 = c2470.f9443 & i2;
                        Object obj2 = atomicReferenceArray2.get(i4);
                        if ((obj2 instanceof C2484) && ((C2484) obj2).f9473 == i2) {
                            atomicReferenceArray2.set(i4, obj);
                        } else {
                            c2470 = null;
                        }
                        if (c2470 == null) {
                            return 0;
                        }
                    }
                    return 0;
                }
            } else {
                int i5 = this.f9446;
                if (i5 < 1024 || ((i2 - i) & 1073741823) > (i5 >> 1)) {
                    return 1;
                }
            }
        }
    }
}

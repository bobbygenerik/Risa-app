package p164;

import java.util.concurrent.atomic.AtomicReference;

/* renamed from: ˊᐧ.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2570 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final AtomicReference[] f9762;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final int f9763;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C2577 f9764 = new C2577(new byte[0], 0, 0, false);

    static {
        int highestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        f9763 = highestOneBit;
        AtomicReference[] atomicReferenceArr = new AtomicReference[highestOneBit];
        for (int i = 0; i < highestOneBit; i++) {
            atomicReferenceArr[i] = new AtomicReference();
        }
        f9762 = atomicReferenceArr;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C2577 m5743() {
        AtomicReference atomicReference = f9762[(int) (Thread.currentThread().getId() & (f9763 - 1))];
        C2577 c2577 = f9764;
        C2577 c25772 = (C2577) atomicReference.getAndSet(c2577);
        if (c25772 == c2577) {
            return new C2577();
        }
        if (c25772 == null) {
            atomicReference.set(null);
            return new C2577();
        }
        atomicReference.set(c25772.f9784);
        c25772.f9784 = null;
        c25772.f9778 = 0;
        return c25772;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final void m5744(C2577 c2577) {
        if (c2577.f9784 != null || c2577.f9781 != null) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (c2577.f9779) {
            return;
        }
        AtomicReference atomicReference = f9762[(int) (Thread.currentThread().getId() & (f9763 - 1))];
        C2577 c25772 = f9764;
        C2577 c25773 = (C2577) atomicReference.getAndSet(c25772);
        if (c25773 == c25772) {
            return;
        }
        int i = c25773 != null ? c25773.f9778 : 0;
        if (i >= 65536) {
            atomicReference.set(c25773);
            return;
        }
        c2577.f9784 = c25773;
        c2577.f9782 = 0;
        c2577.f9778 = i + 8192;
        atomicReference.set(c2577);
    }
}

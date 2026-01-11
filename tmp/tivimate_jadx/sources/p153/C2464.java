package p153;

import java.util.concurrent.atomic.AtomicReferenceArray;
import p091.C1848;

/* renamed from: ˊʽ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2464 {
    private volatile AtomicReferenceArray<Object> array;

    public C2464(int i) {
        this.array = new AtomicReferenceArray<>(i);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m5584(int i, C1848 c1848) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.array;
        int length = atomicReferenceArray.length();
        if (i < length) {
            atomicReferenceArray.set(i, c1848);
            return;
        }
        int i2 = i + 1;
        int i3 = length * 2;
        if (i2 < i3) {
            i2 = i3;
        }
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(i2);
        for (int i4 = 0; i4 < length; i4++) {
            atomicReferenceArray2.set(i4, atomicReferenceArray.get(i4));
        }
        atomicReferenceArray2.set(i, c1848);
        this.array = atomicReferenceArray2;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object m5585(int i) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.array;
        if (i < atomicReferenceArray.length()) {
            return atomicReferenceArray.get(i);
        }
        return null;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m5586() {
        return this.array.length();
    }
}

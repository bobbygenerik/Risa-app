package p153;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import p324.AbstractRunnableC4003;
import p324.C4045;

/* renamed from: ˊʽ.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2475 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f9451 = AtomicIntegerFieldUpdater.newUpdater(C2475.class, "_size$volatile");
    private volatile /* synthetic */ int _size$volatile;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public AbstractRunnableC4003[] f9452;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final AbstractRunnableC4003 m5602(int i) {
        Object[] objArr = this.f9452;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f9451;
        atomicIntegerFieldUpdater.set(this, atomicIntegerFieldUpdater.get(this) - 1);
        if (i < atomicIntegerFieldUpdater.get(this)) {
            m5603(i, atomicIntegerFieldUpdater.get(this));
            int i2 = (i - 1) / 2;
            if (i <= 0 || objArr[i].compareTo(objArr[i2]) >= 0) {
                while (true) {
                    int i3 = i * 2;
                    int i4 = i3 + 1;
                    if (i4 >= atomicIntegerFieldUpdater.get(this)) {
                        break;
                    }
                    Object[] objArr2 = this.f9452;
                    int i5 = i3 + 2;
                    if (i5 >= atomicIntegerFieldUpdater.get(this) || objArr2[i5].compareTo(objArr2[i4]) >= 0) {
                        i5 = i4;
                    }
                    if (objArr2[i].compareTo(objArr2[i5]) <= 0) {
                        break;
                    }
                    m5603(i, i5);
                    i = i5;
                }
            } else {
                m5603(i, i2);
                while (i2 > 0) {
                    Object[] objArr3 = this.f9452;
                    int i6 = (i2 - 1) / 2;
                    if (objArr3[i6].compareTo(objArr3[i2]) <= 0) {
                        break;
                    }
                    m5603(i2, i6);
                    i2 = i6;
                }
            }
        }
        AbstractRunnableC4003 abstractRunnableC4003 = objArr[atomicIntegerFieldUpdater.get(this)];
        abstractRunnableC4003.m8191(null);
        abstractRunnableC4003.f15381 = -1;
        objArr[atomicIntegerFieldUpdater.get(this)] = null;
        return abstractRunnableC4003;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m5603(int i, int i2) {
        AbstractRunnableC4003[] abstractRunnableC4003Arr = this.f9452;
        AbstractRunnableC4003 abstractRunnableC4003 = abstractRunnableC4003Arr[i2];
        AbstractRunnableC4003 abstractRunnableC40032 = abstractRunnableC4003Arr[i];
        abstractRunnableC4003Arr[i] = abstractRunnableC4003;
        abstractRunnableC4003Arr[i2] = abstractRunnableC40032;
        abstractRunnableC4003.f15381 = i;
        abstractRunnableC40032.f15381 = i2;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m5604(AbstractRunnableC4003 abstractRunnableC4003) {
        synchronized (this) {
            if (abstractRunnableC4003.m8189() != null) {
                m5602(abstractRunnableC4003.f15381);
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m5605(AbstractRunnableC4003 abstractRunnableC4003) {
        abstractRunnableC4003.m8191((C4045) this);
        AbstractRunnableC4003[] abstractRunnableC4003Arr = this.f9452;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f9451;
        if (abstractRunnableC4003Arr == null) {
            abstractRunnableC4003Arr = new AbstractRunnableC4003[4];
            this.f9452 = abstractRunnableC4003Arr;
        } else if (atomicIntegerFieldUpdater.get(this) >= abstractRunnableC4003Arr.length) {
            abstractRunnableC4003Arr = (AbstractRunnableC4003[]) Arrays.copyOf(abstractRunnableC4003Arr, atomicIntegerFieldUpdater.get(this) * 2);
            this.f9452 = abstractRunnableC4003Arr;
        }
        int i = atomicIntegerFieldUpdater.get(this);
        atomicIntegerFieldUpdater.set(this, i + 1);
        abstractRunnableC4003Arr[i] = abstractRunnableC4003;
        abstractRunnableC4003.f15381 = i;
        while (i > 0) {
            Object[] objArr = this.f9452;
            int i2 = (i - 1) / 2;
            if (objArr[i2].compareTo(objArr[i]) <= 0) {
                return;
            }
            m5603(i, i2);
            i = i2;
        }
    }
}

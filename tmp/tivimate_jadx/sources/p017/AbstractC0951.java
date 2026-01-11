package p017;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* renamed from: ʼʻ.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0951 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f3894;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f3895;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public Object[] f3896;

    public AbstractC0951(int i) {
        AbstractC1004.m3282(i, "initialCapacity");
        this.f3896 = new Object[i];
        this.f3895 = 0;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static int m3234(int i, int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("cannot store more than MAX_VALUE elements");
        }
        if (i2 <= i) {
            return i;
        }
        int i3 = i + (i >> 1) + 1;
        if (i3 < i2) {
            i3 = Integer.highestOneBit(i2 - 1) << 1;
        }
        if (i3 < 0) {
            return Integer.MAX_VALUE;
        }
        return i3;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public abstract AbstractC0951 mo3235(Object obj);

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m3236(Iterable iterable) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            m3237(collection.size());
            if (collection instanceof AbstractC0962) {
                this.f3895 = ((AbstractC0962) collection).mo3207(this.f3895, this.f3896);
                return;
            }
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            mo3235(it.next());
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m3237(int i) {
        Object[] objArr = this.f3896;
        int m3234 = m3234(objArr.length, this.f3895 + i);
        if (m3234 > objArr.length || this.f3894) {
            this.f3896 = Arrays.copyOf(this.f3896, m3234);
            this.f3894 = false;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m3238(Object... objArr) {
        int length = objArr.length;
        AbstractC1004.m3293(length, objArr);
        m3237(length);
        System.arraycopy(objArr, 0, this.f3896, this.f3895, length);
        this.f3895 += length;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m3239(Object obj) {
        obj.getClass();
        m3237(1);
        Object[] objArr = this.f3896;
        int i = this.f3895;
        this.f3895 = i + 1;
        objArr[i] = obj;
    }
}

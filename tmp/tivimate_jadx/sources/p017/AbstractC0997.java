package p017;

import com.google.android.gms.internal.play_billing.י;
import j$.util.Objects;
import java.util.Arrays;
import java.util.Collection;
import java.util.Set;
import java.util.SortedSet;
import p307.AbstractC3740;

/* renamed from: ʼʻ.ᵔٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0997 extends AbstractC0962 implements Set, j$.util.Set {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final /* synthetic */ int f3984 = 0;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public transient AbstractC0993 f3985;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static int m3274(int i) {
        int max = Math.max(i, 2);
        if (max >= 751619276) {
            י.ﾞᴵ("collection too large", max < 1073741824);
            return 1073741824;
        }
        int highestOneBit = Integer.highestOneBit(max - 1) << 1;
        while (highestOneBit * 0.7d < max) {
            highestOneBit <<= 1;
        }
        return highestOneBit;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static AbstractC0997 m3275(int i, Object... objArr) {
        if (i == 0) {
            return C0945.f3878;
        }
        if (i == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return new C0943(obj);
        }
        int m3274 = m3274(i);
        Object[] objArr2 = new Object[m3274];
        int i2 = m3274 - 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            Object obj2 = objArr[i5];
            if (obj2 == null) {
                throw new NullPointerException(AbstractC3740.m7932(i5, "at index "));
            }
            int hashCode = obj2.hashCode();
            int m3292 = AbstractC1004.m3292(hashCode);
            while (true) {
                int i6 = m3292 & i2;
                Object obj3 = objArr2[i6];
                if (obj3 == null) {
                    objArr[i4] = obj2;
                    objArr2[i6] = obj2;
                    i3 += hashCode;
                    i4++;
                    break;
                }
                if (obj3.equals(obj2)) {
                    break;
                }
                m3292++;
            }
        }
        Arrays.fill(objArr, i4, i, (Object) null);
        if (i4 == 1) {
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new C0943(obj4);
        }
        if (m3274(i4) < m3274 / 2) {
            return m3275(i4, objArr);
        }
        int length = objArr.length;
        if (i4 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i4);
        }
        return new C0945(i3, i2, i4, objArr, objArr2);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static AbstractC0997 m3276(Collection collection) {
        if ((collection instanceof AbstractC0997) && !(collection instanceof SortedSet)) {
            AbstractC0997 abstractC0997 = (AbstractC0997) collection;
            if (!abstractC0997.mo3205()) {
                return abstractC0997;
            }
        }
        Object[] array = collection.toArray();
        return m3275(array.length, array);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof AbstractC0997) && (this instanceof C0945) && (((AbstractC0997) obj) instanceof C0945) && hashCode() != obj.hashCode()) {
            return false;
        }
        return AbstractC1004.m3289(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return AbstractC1004.m3288(this);
    }

    @Override // p017.AbstractC0962
    /* renamed from: ﹳٴ */
    public AbstractC0993 mo3208() {
        AbstractC0993 abstractC0993 = this.f3985;
        if (abstractC0993 != null) {
            return abstractC0993;
        }
        AbstractC0993 mo3223 = mo3223();
        this.f3985 = mo3223;
        return mo3223;
    }

    /* renamed from: ﾞʻ */
    public AbstractC0993 mo3223() {
        Object[] array = toArray(AbstractC0962.f3916);
        C0982 c0982 = AbstractC0993.f3977;
        return AbstractC0993.m3259(array.length, array);
    }
}

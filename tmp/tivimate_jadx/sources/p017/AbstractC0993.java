package p017;

import com.google.android.gms.internal.measurement.ᵎ;
import com.google.android.gms.internal.play_billing.י;
import j$.util.List;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.function.UnaryOperator;
import p137.AbstractC2305;

/* renamed from: ʼʻ.ᵎⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0993 extends AbstractC0962 implements List, RandomAccess, j$.util.List {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final C0982 f3977 = new C0982(C0956.f3901, 0);

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static C0956 m3259(int i, Object[] objArr) {
        return i == 0 ? C0956.f3901 : new C0956(i, objArr);
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static C0956 m3260(Object obj) {
        Object[] objArr = {obj};
        AbstractC1004.m3293(1, objArr);
        return m3259(1, objArr);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ʼʻ.ˊʻ, ʼʻ.ʽʽ] */
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static C0968 m3261() {
        return new AbstractC0951(4);
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public static C0956 m3262(Comparator comparator, List list) {
        comparator.getClass();
        if (!AbstractC2305.m5366(list)) {
            Iterator it = list.iterator();
            ArrayList arrayList = new ArrayList();
            it.getClass();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
            list = arrayList;
        }
        Object[] array = list.toArray();
        AbstractC1004.m3293(array.length, array);
        Arrays.sort(array, comparator);
        return m3259(array.length, array);
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public static C0956 m3263(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, Object... objArr) {
        י.ﾞᴵ("the total number of elements must fit in an int", objArr.length <= 2147483635);
        int length = objArr.length + 12;
        Object[] objArr2 = new Object[length];
        objArr2[0] = str;
        objArr2[1] = str2;
        objArr2[2] = str3;
        objArr2[3] = str4;
        objArr2[4] = str5;
        objArr2[5] = str6;
        objArr2[6] = str7;
        objArr2[7] = str8;
        objArr2[8] = str9;
        objArr2[9] = str10;
        objArr2[10] = str11;
        objArr2[11] = str12;
        System.arraycopy(objArr, 0, objArr2, 12, objArr.length);
        AbstractC1004.m3293(length, objArr2);
        return m3259(length, objArr2);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static AbstractC0993 m3264(Collection collection) {
        if (!(collection instanceof AbstractC0962)) {
            Object[] array = collection.toArray();
            AbstractC1004.m3293(array.length, array);
            return m3259(array.length, array);
        }
        AbstractC0993 mo3208 = ((AbstractC0962) collection).mo3208();
        if (!mo3208.mo3205()) {
            return mo3208;
        }
        Object[] array2 = mo3208.toArray(AbstractC0962.f3916);
        return m3259(array2.length, array2);
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static C0956 m3265(Long l, Long l2, Long l3, Long l4, Long l5) {
        Object[] objArr = {l, l2, l3, l4, l5};
        AbstractC1004.m3293(5, objArr);
        return m3259(5, objArr);
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static C0956 m3266(Object obj, Object obj2) {
        Object[] objArr = {obj, obj2};
        AbstractC1004.m3293(2, objArr);
        return m3259(2, objArr);
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static C0956 m3267(Object[] objArr) {
        if (objArr.length == 0) {
            return C0956.f3901;
        }
        Object[] objArr2 = (Object[]) objArr.clone();
        AbstractC1004.m3293(objArr2.length, objArr2);
        return m3259(objArr2.length, objArr2);
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // p017.AbstractC0962, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof List) {
                List list = (List) obj;
                int size = size();
                if (size == list.size()) {
                    if (!(list instanceof RandomAccess)) {
                        Iterator it = iterator();
                        Iterator it2 = list.iterator();
                        while (it.hasNext()) {
                            if (it2.hasNext() && ᵎ.ᵎﹶ(it.next(), it2.next())) {
                            }
                        }
                        return !it2.hasNext();
                    }
                    for (int i = 0; i < size; i++) {
                        if (ᵎ.ᵎﹶ(get(i), list.get(i))) {
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = ~(~(get(i2).hashCode() + (i * 31)));
        }
        return i;
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (obj.equals(get(i))) {
                return i;
            }
        }
        return -1;
    }

    @Override // p017.AbstractC0962, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    public ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final Object remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, j$.util.List
    public /* synthetic */ void replaceAll(UnaryOperator unaryOperator) {
        List.CC.$default$replaceAll(this, unaryOperator);
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, j$.util.List
    public /* synthetic */ void sort(Comparator comparator) {
        List.CC.$default$sort(this, comparator);
    }

    @Override // java.util.List
    /* renamed from: ʽﹳ, reason: merged with bridge method [inline-methods] */
    public AbstractC0993 subList(int i, int i2) {
        י.ˆʾ(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? C0956.f3901 : new C0967(this, i, i3);
    }

    @Override // java.util.List
    /* renamed from: ˉʿ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final C0982 listIterator(int i) {
        י.ʼˎ(i, size());
        return isEmpty() ? f3977 : new C0982(this, i);
    }

    @Override // p017.AbstractC0962
    /* renamed from: ᵔᵢ */
    public final AbstractC0983 iterator() {
        return listIterator(0);
    }

    @Override // p017.AbstractC0962
    /* renamed from: ⁱˊ */
    public int mo3207(int i, Object[] objArr) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    @Override // p017.AbstractC0962
    /* renamed from: ﹳٴ */
    public final AbstractC0993 mo3208() {
        return this;
    }
}

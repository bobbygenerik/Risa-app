package p430;

import java.util.AbstractCollection;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import p137.AbstractC2305;
import p152.AbstractC2444;
import p152.AbstractC2451;
import p329.InterfaceC4106;
import p386.InterfaceC4614;
import p386.InterfaceC4615;
import ᴵˋ.ˊʻ;

/* renamed from: ﹶˈ.ˆʾ */
/* loaded from: classes.dex */
public abstract class AbstractC5099 extends AbstractC5108 {
    /* renamed from: ʻˋ */
    public static Object m10014(int i, List list) {
        if (i < 0 || i >= list.size()) {
            return null;
        }
        return list.get(i);
    }

    /* renamed from: ʻᵎ */
    public static boolean m10015(Iterable iterable, Object obj) {
        int i;
        if (iterable instanceof Collection) {
            return ((Collection) iterable).contains(obj);
        }
        if (!(iterable instanceof List)) {
            Iterator it = iterable.iterator();
            int i2 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                }
                Object next = it.next();
                if (i2 < 0) {
                    AbstractC5106.m10049();
                    throw null;
                }
                if (AbstractC2444.m5562(obj, next)) {
                    i = i2;
                    break;
                }
                i2++;
            }
        } else {
            i = ((List) iterable).indexOf(obj);
        }
        return i >= 0;
    }

    /* renamed from: ʼـ */
    public static List m10016(Iterable iterable, Comparator comparator) {
        if (!(iterable instanceof Collection)) {
            List m10035 = m10035(iterable);
            AbstractC5108.m10052(comparator, m10035);
            return m10035;
        }
        Collection collection = (Collection) iterable;
        if (collection.size() <= 1) {
            return m10020(iterable);
        }
        Object[] array = collection.toArray(new Object[0]);
        if (array.length > 1) {
            Arrays.sort(array, comparator);
        }
        return Arrays.asList(array);
    }

    /* renamed from: ʽᵔ */
    public static Object m10017(List list) {
        if (list.isEmpty()) {
            return null;
        }
        return list.get(list.size() - 1);
    }

    /* renamed from: ʽⁱ */
    public static int[] m10018(ArrayList arrayList) {
        int[] iArr = new int[arrayList.size()];
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            iArr[i] = ((Number) obj).intValue();
            i++;
        }
        return iArr;
    }

    /* renamed from: ʾˊ */
    public static Object m10019(AbstractList abstractList) {
        if (abstractList.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return abstractList.remove(AbstractC5106.m10048(abstractList));
    }

    /* renamed from: ʾﾞ */
    public static List m10020(Iterable iterable) {
        boolean z = iterable instanceof Collection;
        C5097 c5097 = C5097.f19202;
        if (!z) {
            List m10035 = m10035(iterable);
            ArrayList arrayList = (ArrayList) m10035;
            int size = arrayList.size();
            return size != 0 ? size != 1 ? m10035 : Collections.singletonList(arrayList.get(0)) : c5097;
        }
        Collection collection = (Collection) iterable;
        int size2 = collection.size();
        if (size2 == 0) {
            return c5097;
        }
        if (size2 != 1) {
            return new ArrayList(collection);
        }
        return Collections.singletonList(iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next());
    }

    /* renamed from: ˈˏ */
    public static Object m10021(List list) {
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(0);
    }

    /* renamed from: ˊᵔ */
    public static ArrayList m10022(Iterable iterable) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : iterable) {
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    /* renamed from: ˎᐧ */
    public static final void m10023(Iterable iterable, AbstractCollection abstractCollection) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            abstractCollection.add(it.next());
        }
    }

    /* renamed from: ˑ */
    public static List m10024(Iterable iterable) {
        if (!(iterable instanceof Collection)) {
            List m10035 = m10035(iterable);
            if (((ArrayList) m10035).size() > 1) {
                Collections.sort(m10035);
            }
            return m10035;
        }
        Collection collection = (Collection) iterable;
        if (collection.size() <= 1) {
            return m10020(iterable);
        }
        Object[] array = collection.toArray(new Comparable[0]);
        Comparable[] comparableArr = (Comparable[]) array;
        if (comparableArr.length > 1) {
            Arrays.sort(comparableArr);
        }
        return Arrays.asList(array);
    }

    /* renamed from: ˑʼ */
    public static final void m10025(Iterable iterable, StringBuilder sb, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, InterfaceC4106 interfaceC4106) {
        sb.append(charSequence2);
        int i = 0;
        for (Object obj : iterable) {
            i++;
            if (i > 1) {
                sb.append(charSequence);
            }
            ˊʻ.ⁱˊ(sb, obj, interfaceC4106);
        }
        sb.append(charSequence3);
    }

    /* renamed from: י */
    public static void m10026(ArrayList arrayList, InterfaceC4106 interfaceC4106) {
        int m10048;
        if (!AbstractC2305.m5366(arrayList)) {
            if ((arrayList instanceof InterfaceC4615) && !(arrayList instanceof InterfaceC4614)) {
                AbstractC2451.m5578(arrayList, "kotlin.collections.MutableIterable");
                throw null;
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (((Boolean) interfaceC4106.mo3844(it.next())).booleanValue()) {
                    it.remove();
                }
            }
            return;
        }
        int m100482 = AbstractC5106.m10048(arrayList);
        int i = 0;
        if (m100482 >= 0) {
            int i2 = 0;
            while (true) {
                Object obj = arrayList.get(i);
                if (!((Boolean) interfaceC4106.mo3844(obj)).booleanValue()) {
                    if (i2 != i) {
                        arrayList.set(i2, obj);
                    }
                    i2++;
                }
                if (i == m100482) {
                    break;
                } else {
                    i++;
                }
            }
            i = i2;
        }
        if (i >= arrayList.size() || i > (m10048 = AbstractC5106.m10048(arrayList))) {
            return;
        }
        while (true) {
            arrayList.remove(m10048);
            if (m10048 == i) {
                return;
            } else {
                m10048--;
            }
        }
    }

    /* renamed from: יﹳ */
    public static HashSet m10027(ArrayList arrayList) {
        HashSet hashSet = new HashSet(AbstractC5103.m10040(AbstractC5114.m10060(arrayList, 12)));
        m10023(arrayList, hashSet);
        return hashSet;
    }

    /* renamed from: ـᵎ */
    public static Object m10028(List list) {
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(AbstractC5106.m10048(list));
    }

    /* renamed from: ـﹶ */
    public static Object m10029(Iterable iterable) {
        if (iterable instanceof List) {
            return m10021((List) iterable);
        }
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        throw new NoSuchElementException("Collection is empty.");
    }

    /* renamed from: ٴﹳ */
    public static /* synthetic */ void m10030(ArrayList arrayList, StringBuilder sb) {
        m10025(arrayList, sb, "\n", "", "", null);
    }

    /* renamed from: ᐧˎ */
    public static Set m10031(Iterable iterable) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size != 0) {
                if (size == 1) {
                    return Collections.singleton(iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next());
                }
                LinkedHashSet linkedHashSet = new LinkedHashSet(AbstractC5103.m10040(collection.size()));
                m10023(iterable, linkedHashSet);
                return linkedHashSet;
            }
        } else {
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            m10023(iterable, linkedHashSet2);
            int size2 = linkedHashSet2.size();
            if (size2 != 0) {
                return size2 != 1 ? linkedHashSet2 : Collections.singleton(linkedHashSet2.iterator().next());
            }
        }
        return C5113.f19217;
    }

    /* renamed from: ᐧﹶ */
    public static ArrayList m10032(List list, List list2) {
        if (!AbstractC2305.m5366(list2)) {
            ArrayList arrayList = new ArrayList(list);
            m10033(list2, arrayList);
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList(list2.size() + list.size());
        arrayList2.addAll(list);
        arrayList2.addAll(list2);
        return arrayList2;
    }

    /* renamed from: ᴵʼ */
    public static void m10033(Iterable iterable, AbstractCollection abstractCollection) {
        if (iterable instanceof Collection) {
            abstractCollection.addAll((Collection) iterable);
            return;
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            abstractCollection.add(it.next());
        }
    }

    /* renamed from: ᵎʻ */
    public static String m10034(Iterable iterable, String str, String str2, String str3, InterfaceC4106 interfaceC4106, int i) {
        if ((i & 1) != 0) {
            str = ", ";
        }
        String str4 = str;
        String str5 = (i & 2) != 0 ? "" : str2;
        String str6 = (i & 4) != 0 ? "" : str3;
        if ((i & 32) != 0) {
            interfaceC4106 = null;
        }
        StringBuilder sb = new StringBuilder();
        m10025(iterable, sb, str4, str5, str6, interfaceC4106);
        return sb.toString();
    }

    /* renamed from: ⁱˉ */
    public static List m10035(Iterable iterable) {
        if (iterable instanceof Collection) {
            return new ArrayList((Collection) iterable);
        }
        ArrayList arrayList = new ArrayList();
        m10023(iterable, arrayList);
        return arrayList;
    }

    /* renamed from: ﹳﹳ */
    public static Object m10036(List list) {
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    /* renamed from: ﹶᐧ */
    public static Object m10037(Collection collection) {
        if (collection instanceof List) {
            List list = (List) collection;
            if (list.isEmpty()) {
                return null;
            }
            return list.get(0);
        }
        Iterator it = collection.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }
}

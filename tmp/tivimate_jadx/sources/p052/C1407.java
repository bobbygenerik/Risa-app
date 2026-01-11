package p052;

import j$.util.DesugarCollections;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import p356.AbstractC4343;

/* renamed from: ʽᴵ.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1407 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final ArrayList f5510;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final List f5513;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ThreadLocal f5512 = new ThreadLocal();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final LinkedHashMap f5511 = new LinkedHashMap();

    static {
        ArrayList arrayList = new ArrayList(5);
        f5510 = arrayList;
        arrayList.add(AbstractC1414.f5535);
        arrayList.add(C1424.f5570);
        arrayList.add(C1427.f5581);
        arrayList.add(C1427.f5580);
        arrayList.add(AbstractC1420.f5559);
        arrayList.add(C1422.f5566);
    }

    public C1407(C1408 c1408) {
        ArrayList arrayList = c1408.f5515;
        int size = arrayList.size();
        ArrayList arrayList2 = f5510;
        ArrayList arrayList3 = new ArrayList(arrayList2.size() + size);
        arrayList3.addAll(arrayList);
        arrayList3.addAll(arrayList2);
        this.f5513 = DesugarCollections.unmodifiableList(arrayList3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v4, types: [ʽᴵ.ﾞʻ] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final AbstractC1430 m4146(Type type, Set set, String str) {
        C1401 c1401;
        if (type == null) {
            throw new NullPointerException("type == null");
        }
        if (set == null) {
            throw new NullPointerException("annotations == null");
        }
        Type m8810 = AbstractC4343.m8810(type);
        if (m8810 instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) m8810;
            if (wildcardType.getLowerBounds().length == 0) {
                Type[] upperBounds = wildcardType.getUpperBounds();
                if (upperBounds.length != 1) {
                    throw new IllegalArgumentException();
                }
                m8810 = upperBounds[0];
            }
        }
        Object asList = set.isEmpty() ? m8810 : Arrays.asList(m8810, set);
        synchronized (this.f5511) {
            try {
                AbstractC1430 abstractC1430 = (AbstractC1430) this.f5511.get(asList);
                if (abstractC1430 != null) {
                    return abstractC1430;
                }
                C1426 c1426 = (C1426) this.f5512.get();
                if (c1426 == null) {
                    c1426 = new C1426(this);
                    this.f5512.set(c1426);
                }
                ArrayDeque arrayDeque = c1426.f5578;
                ArrayList arrayList = c1426.f5579;
                int size = arrayList.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        C1401 c14012 = new C1401(m8810, str, asList);
                        arrayList.add(c14012);
                        arrayDeque.add(c14012);
                        c1401 = null;
                        break;
                    }
                    c1401 = (C1401) arrayList.get(i);
                    if (c1401.f5489.equals(asList)) {
                        arrayDeque.add(c1401);
                        ?? r13 = c1401.f5490;
                        if (r13 != 0) {
                            c1401 = r13;
                        }
                    } else {
                        i++;
                    }
                }
                try {
                    if (c1401 != null) {
                        return c1401;
                    }
                    try {
                        int size2 = this.f5513.size();
                        for (int i2 = 0; i2 < size2; i2++) {
                            AbstractC1430 mo4174 = ((InterfaceC1419) this.f5513.get(i2)).mo4174(m8810, set, this);
                            if (mo4174 != null) {
                                ((C1401) c1426.f5578.getLast()).f5490 = mo4174;
                                c1426.m4189(true);
                                return mo4174;
                            }
                        }
                        throw new IllegalArgumentException("No JsonAdapter for " + AbstractC4343.m8808(m8810, set));
                    } catch (IllegalArgumentException e) {
                        throw c1426.m4190(e);
                    }
                } finally {
                    c1426.m4189(false);
                }
            } finally {
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC1430 m4147(Class cls) {
        return m4146(cls, AbstractC4343.f16164, null);
    }
}

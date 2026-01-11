package com.bumptech.glide;

import com.bumptech.glide.load.data.C0215;
import com.bumptech.glide.load.data.InterfaceC0222;
import com.bumptech.glide.load.data.InterfaceC0228;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import p027.C1084;
import p031.InterfaceC1139;
import p031.InterfaceC1140;
import p031.InterfaceC1142;
import p031.InterfaceC1145;
import p033.C1182;
import p057.C1513;
import p057.C1514;
import p057.C1515;
import p057.C1516;
import p080.C1704;
import p087.AbstractC1751;
import p238.C3204;
import p335.C4209;
import p383.C4589;
import p383.C4600;
import p383.InterfaceC4578;
import p383.InterfaceC4596;
import p404.C4790;
import p444.C5201;
import p444.InterfaceC5202;
import ﹶﾞ.ⁱי;

/* renamed from: com.bumptech.glide.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0237 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ⁱי f1692;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final ᵢ.ﹳٴ f1693;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C1182 f1694;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C0215 f1695;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C1084 f1696;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1182 f1698;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C4589 f1699;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C1084 f1700;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C4790 f1697 = new C4790(9);

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C1515 f1691 = new C1515();

    public C0237() {
        ᵢ.ﹳٴ r3 = new ᵢ.ﹳٴ(new C3204(20), new Object(), new ﹳˋ.ʼˎ(14), 8);
        this.f1693 = r3;
        this.f1699 = new C4589(r3);
        this.f1698 = new C1182(1);
        this.f1692 = new ⁱי(12);
        this.f1694 = new C1182(2);
        this.f1695 = new C0215();
        this.f1700 = new C1084(4);
        this.f1696 = new C1084(1);
        List asList = Arrays.asList("Animation", "Bitmap", "BitmapDrawable");
        ArrayList arrayList = new ArrayList(asList.size());
        arrayList.add("legacy_prepend_all");
        Iterator it = asList.iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        arrayList.add("legacy_append");
        ⁱי r0 = this.f1692;
        synchronized (r0) {
            try {
                ArrayList arrayList2 = new ArrayList((ArrayList) r0.ᴵˊ);
                ((ArrayList) r0.ᴵˊ).clear();
                int size = arrayList.size();
                int i = 0;
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    ((ArrayList) r0.ᴵˊ).add((String) obj);
                }
                int size2 = arrayList2.size();
                while (i < size2) {
                    Object obj2 = arrayList2.get(i);
                    i++;
                    String str = (String) obj2;
                    if (!arrayList.contains(str)) {
                        ((ArrayList) r0.ᴵˊ).add(str);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m1167(Class cls, InterfaceC4596 interfaceC4596) {
        C4589 c4589 = this.f1699;
        synchronized (c4589) {
            c4589.f17096.m9122(cls, interfaceC4596);
            c4589.f17095.f1713.clear();
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m1168(Class cls, InterfaceC1142 interfaceC1142) {
        C1182 c1182 = this.f1694;
        synchronized (c1182) {
            c1182.f4592.add(new C1514(cls, interfaceC1142));
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m1169(InterfaceC0228 interfaceC0228) {
        C0215 c0215 = this.f1695;
        synchronized (c0215) {
            ((HashMap) c0215.f1614).put(interfaceC0228.mo1110(), interfaceC0228);
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m1170(String str, Class cls, Class cls2, InterfaceC1139 interfaceC1139) {
        ⁱי r0 = this.f1692;
        synchronized (r0) {
            r0.ﹳᐧ(str).add(new C1513(cls, cls2, interfaceC1139));
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m1171(C4209 c4209) {
        C4589 c4589 = this.f1699;
        synchronized (c4589) {
            ArrayList m9123 = c4589.f17096.m9123(c4209);
            int size = m9123.size();
            int i = 0;
            while (i < size) {
                Object obj = m9123.get(i);
                i++;
                ((InterfaceC4596) obj).getClass();
            }
            c4589.f17095.f1713.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final ArrayList m1172(Class cls, Class cls2, Class cls3) {
        ArrayList arrayList;
        Class cls4 = cls;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = this.f1692.יـ(cls4, cls2);
        int size = arrayList3.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            Class cls5 = (Class) arrayList3.get(i);
            ArrayList m3428 = this.f1700.m3428(cls5, cls3);
            int size2 = m3428.size();
            int i3 = 0;
            while (i3 < size2) {
                int i4 = i3 + 1;
                Class cls6 = (Class) m3428.get(i3);
                ⁱי r2 = this.f1692;
                synchronized (r2) {
                    arrayList = new ArrayList();
                    ArrayList arrayList4 = (ArrayList) r2.ᴵˊ;
                    int size3 = arrayList4.size();
                    int i5 = 0;
                    while (i5 < size3) {
                        Object obj = arrayList4.get(i5);
                        i5++;
                        ArrayList arrayList5 = arrayList4;
                        String str = (String) obj;
                        int i6 = size3;
                        List list = (List) ((HashMap) r2.ʽʽ).get(str);
                        if (list != null) {
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                C1513 c1513 = (C1513) it.next();
                                Iterator it2 = it;
                                if (c1513.f5982.isAssignableFrom(cls4) && cls5.isAssignableFrom(c1513.f5981)) {
                                    arrayList.add(c1513.f5980);
                                }
                                it = it2;
                            }
                        }
                        size3 = i6;
                        arrayList4 = arrayList5;
                    }
                }
                arrayList2.add(new C1704(cls4, cls5, cls6, arrayList, this.f1700.m3433(cls5, cls6), this.f1693));
                cls4 = cls;
                i3 = i4;
            }
            cls4 = cls;
            i = i2;
        }
        return arrayList2;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m1173(Class cls, Class cls2, InterfaceC5202 interfaceC5202) {
        C1084 c1084 = this.f1700;
        synchronized (c1084) {
            c1084.f4239.add(new C5201(cls, cls2, interfaceC5202));
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final List m1174(Object obj) {
        List list;
        C4589 c4589 = this.f1699;
        c4589.getClass();
        Class<?> cls = obj.getClass();
        synchronized (c4589) {
            C4600 c4600 = (C4600) c4589.f17095.f1713.get(cls);
            list = c4600 == null ? null : c4600.f17120;
            if (list == null) {
                list = DesugarCollections.unmodifiableList(c4589.f17096.m9124(cls));
                if (((C4600) c4589.f17095.f1713.put(cls, new C4600(list))) != null) {
                    throw new IllegalStateException("Already cached loaders for model: " + cls);
                }
            }
        }
        if (list.isEmpty()) {
            throw new RuntimeException("Failed to find any ModelLoaders registered for model class: " + obj.getClass());
        }
        int size = list.size();
        List list2 = Collections.EMPTY_LIST;
        boolean z = true;
        for (int i = 0; i < size; i++) {
            InterfaceC4578 interfaceC4578 = (InterfaceC4578) list.get(i);
            if (interfaceC4578.mo4899(obj)) {
                if (z) {
                    list2 = new ArrayList(size - i);
                    z = false;
                }
                list2.add(interfaceC4578);
            }
        }
        if (!list2.isEmpty()) {
            return list2;
        }
        throw new RuntimeException("Found ModelLoaders for model class: " + list + ", but none that handle this specific model instance: " + obj);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final InterfaceC0222 m1175(Object obj) {
        InterfaceC0222 mo1109;
        C0215 c0215 = this.f1695;
        synchronized (c0215) {
            try {
                AbstractC1751.m4712(obj);
                InterfaceC0228 interfaceC0228 = (InterfaceC0228) ((HashMap) c0215.f1614).get(obj.getClass());
                if (interfaceC0228 == null) {
                    Iterator it = ((HashMap) c0215.f1614).values().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        InterfaceC0228 interfaceC02282 = (InterfaceC0228) it.next();
                        if (interfaceC02282.mo1110().isAssignableFrom(obj.getClass())) {
                            interfaceC0228 = interfaceC02282;
                            break;
                        }
                    }
                }
                if (interfaceC0228 == null) {
                    interfaceC0228 = C0215.f1612;
                }
                mo1109 = interfaceC0228.mo1109(obj);
            } catch (Throwable th) {
                throw th;
            }
        }
        return mo1109;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m1176(Class cls, InterfaceC1145 interfaceC1145) {
        C1182 c1182 = this.f1698;
        synchronized (c1182) {
            c1182.f4592.add(new C1516(cls, interfaceC1145));
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m1177(Class cls, Class cls2, InterfaceC4596 interfaceC4596) {
        C4589 c4589 = this.f1699;
        synchronized (c4589) {
            c4589.f17096.m9125(cls, cls2, interfaceC4596);
            c4589.f17095.f1713.clear();
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m1178(InterfaceC1140 interfaceC1140) {
        C1084 c1084 = this.f1696;
        synchronized (c1084) {
            c1084.f4239.add(interfaceC1140);
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final ArrayList m1179() {
        ArrayList arrayList;
        C1084 c1084 = this.f1696;
        synchronized (c1084) {
            arrayList = c1084.f4239;
        }
        if (arrayList.isEmpty()) {
            throw new Registry$MissingComponentException() { // from class: com.bumptech.glide.Registry$NoImageHeaderParserException
            };
        }
        return arrayList;
    }
}

package p212;

import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.InvalidRegistrarException;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import p003.RunnableC0786;
import p074.InterfaceC1650;
import p137.AbstractC2305;
import p145.C2402;
import p181.InterfaceC2753;
import p181.InterfaceC2754;
import ᴵˋ.ˊʻ;
import ﹳˋ.ʼˎ;
import ﹳˋ.ٴﹶ;

/* renamed from: ˏ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2997 implements InterfaceC2984 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static final C2989 f11431 = new C2989(0);

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final ʼˎ f11436;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C2985 f11438;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final HashMap f11433 = new HashMap();

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final HashMap f11437 = new HashMap();

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final HashMap f11432 = new HashMap();

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final HashSet f11434 = new HashSet();

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final AtomicReference f11435 = new AtomicReference();

    public C2997(ArrayList arrayList, ArrayList arrayList2, ʼˎ r11) {
        C2985 c2985 = new C2985();
        this.f11438 = c2985;
        this.f11436 = r11;
        ArrayList arrayList3 = new ArrayList();
        int i = 0;
        arrayList3.add(C2994.m6520(c2985, C2985.class, InterfaceC2753.class, InterfaceC2754.class));
        arrayList3.add(C2994.m6520(this, C2997.class, new Class[0]));
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList2.get(i2);
            i2++;
            C2994 c2994 = (C2994) obj;
            if (c2994 != null) {
                arrayList3.add(c2994);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        int size2 = arrayList.size();
        int i3 = 0;
        while (i3 < size2) {
            Object obj2 = arrayList.get(i3);
            i3++;
            arrayList4.add(obj2);
        }
        ArrayList arrayList5 = new ArrayList();
        synchronized (this) {
            Iterator it = arrayList4.iterator();
            while (it.hasNext()) {
                try {
                    ComponentRegistrar componentRegistrar = (ComponentRegistrar) ((InterfaceC1650) it.next()).get();
                    if (componentRegistrar != null) {
                        arrayList3.addAll(this.f11436.ˊˋ(componentRegistrar));
                        it.remove();
                    }
                } catch (InvalidRegistrarException e) {
                    it.remove();
                }
            }
            Iterator it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                Object[] array = ((C2994) it2.next()).f11419.toArray();
                int length = array.length;
                int i4 = 0;
                while (true) {
                    if (i4 < length) {
                        Object obj3 = array[i4];
                        if (obj3.toString().contains("kotlinx.coroutines.CoroutineDispatcher")) {
                            if (this.f11434.contains(obj3.toString())) {
                                it2.remove();
                                break;
                            }
                            this.f11434.add(obj3.toString());
                        }
                        i4++;
                    }
                }
            }
            if (this.f11433.isEmpty()) {
                ˊʻ.ˉʿ(arrayList3);
            } else {
                ArrayList arrayList6 = new ArrayList(this.f11433.keySet());
                arrayList6.addAll(arrayList3);
                ˊʻ.ˉʿ(arrayList6);
            }
            int size3 = arrayList3.size();
            int i5 = 0;
            while (i5 < size3) {
                Object obj4 = arrayList3.get(i5);
                i5++;
                C2994 c29942 = (C2994) obj4;
                this.f11433.put(c29942, new C2990(new C2402(this, 1, c29942)));
            }
            arrayList5.addAll(m6527(arrayList3));
            arrayList5.addAll(m6528());
            m6530();
        }
        int size4 = arrayList5.size();
        while (i < size4) {
            Object obj5 = arrayList5.get(i);
            i++;
            ((Runnable) obj5).run();
        }
        Boolean bool = (Boolean) this.f11435.get();
        if (bool != null) {
            m6529(this.f11433, bool.booleanValue());
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final ArrayList m6527(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            C2994 c2994 = (C2994) obj;
            if (c2994.f11417 == 0) {
                InterfaceC1650 interfaceC1650 = (InterfaceC1650) this.f11433.get(c2994);
                for (C2988 c2988 : c2994.f11419) {
                    HashMap hashMap = this.f11437;
                    if (hashMap.containsKey(c2988)) {
                        arrayList2.add(new RunnableC0786((C2987) ((InterfaceC1650) hashMap.get(c2988)), 16, interfaceC1650));
                    } else {
                        hashMap.put(c2988, interfaceC1650);
                    }
                }
            }
        }
        return arrayList2;
    }

    @Override // p212.InterfaceC2984
    /* renamed from: ʽ */
    public final Object mo6511(C2988 c2988) {
        InterfaceC1650 mo6515 = mo6515(c2988);
        if (mo6515 == null) {
            return null;
        }
        return mo6515.get();
    }

    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.Object, ˏ.ﾞʻ] */
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final ArrayList m6528() {
        HashMap hashMap = this.f11432;
        ArrayList arrayList = new ArrayList();
        HashMap hashMap2 = new HashMap();
        for (Map.Entry entry : this.f11433.entrySet()) {
            C2994 c2994 = (C2994) entry.getKey();
            if (c2994.f11417 != 0) {
                InterfaceC1650 interfaceC1650 = (InterfaceC1650) entry.getValue();
                for (C2988 c2988 : c2994.f11419) {
                    if (!hashMap2.containsKey(c2988)) {
                        hashMap2.put(c2988, new HashSet());
                    }
                    ((Set) hashMap2.get(c2988)).add(interfaceC1650);
                }
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (hashMap.containsKey(entry2.getKey())) {
                C2996 c2996 = (C2996) hashMap.get(entry2.getKey());
                Iterator it = ((Set) entry2.getValue()).iterator();
                while (it.hasNext()) {
                    arrayList.add(new RunnableC0786(c2996, 17, (InterfaceC1650) it.next()));
                }
            } else {
                C2988 c29882 = (C2988) entry2.getKey();
                Set set = (Set) ((Collection) entry2.getValue());
                ?? obj = new Object();
                obj.f11429 = null;
                obj.f11430 = Collections.newSetFromMap(new ConcurrentHashMap());
                obj.f11430.addAll(set);
                hashMap.put(c29882, obj);
            }
        }
        return arrayList;
    }

    @Override // p212.InterfaceC2984
    /* renamed from: ˈ */
    public final Set mo6512(C2988 c2988) {
        InterfaceC1650 interfaceC1650;
        synchronized (this) {
            interfaceC1650 = (C2996) this.f11432.get(c2988);
            if (interfaceC1650 == null) {
                interfaceC1650 = f11431;
            }
        }
        return (Set) interfaceC1650.get();
    }

    @Override // p212.InterfaceC2984
    /* renamed from: ˑﹳ */
    public final C2987 mo6513(C2988 c2988) {
        InterfaceC1650 mo6515 = mo6515(c2988);
        return mo6515 == null ? new C2987(C2987.f11400, C2987.f11401) : mo6515 instanceof C2987 ? (C2987) mo6515 : new C2987(null, mo6515);
    }

    @Override // p212.InterfaceC2984
    /* renamed from: ᵎﹶ */
    public final InterfaceC1650 mo6514(Class cls) {
        return mo6515(C2988.m6519(cls));
    }

    @Override // p212.InterfaceC2984
    /* renamed from: ᵔᵢ */
    public final synchronized InterfaceC1650 mo6515(C2988 c2988) {
        ٴﹶ.ᵎﹶ(c2988, "Null interface requested.");
        return (InterfaceC1650) this.f11437.get(c2988);
    }

    @Override // p212.InterfaceC2984
    /* renamed from: ⁱˊ */
    public final Object mo6516(Class cls) {
        return mo6511(C2988.m6519(cls));
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m6529(HashMap hashMap, boolean z) {
        ArrayDeque arrayDeque;
        for (Map.Entry entry : hashMap.entrySet()) {
            C2994 c2994 = (C2994) entry.getKey();
            InterfaceC1650 interfaceC1650 = (InterfaceC1650) entry.getValue();
            int i = c2994.f11416;
            if (i == 1 || (i == 2 && z)) {
                interfaceC1650.get();
            }
        }
        C2985 c2985 = this.f11438;
        synchronized (c2985) {
            try {
                arrayDeque = c2985.f11398;
                if (arrayDeque != null) {
                    c2985.f11398 = null;
                } else {
                    arrayDeque = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (arrayDeque != null) {
            Iterator it = arrayDeque.iterator();
            if (it.hasNext()) {
                throw AbstractC2305.m5372(it);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.Object, ˏ.ﾞʻ] */
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m6530() {
        HashMap hashMap = this.f11437;
        HashMap hashMap2 = this.f11432;
        for (C2994 c2994 : this.f11433.keySet()) {
            for (C2982 c2982 : c2994.f11415) {
                boolean z = c2982.f11396 == 2;
                C2988 c2988 = c2982.f11397;
                if (z && !hashMap2.containsKey(c2988)) {
                    Set set = Collections.EMPTY_SET;
                    ?? obj = new Object();
                    obj.f11429 = null;
                    obj.f11430 = Collections.newSetFromMap(new ConcurrentHashMap());
                    obj.f11430.addAll(set);
                    hashMap2.put(c2988, obj);
                } else if (hashMap.containsKey(c2988)) {
                    continue;
                } else {
                    int i = c2982.f11396;
                    if (i == 1) {
                        throw new RuntimeException("Unsatisfied dependency for component " + c2994 + ": " + c2988);
                    }
                    if (i != 2) {
                        hashMap.put(c2988, new C2987(C2987.f11400, C2987.f11401));
                    }
                }
            }
        }
    }
}

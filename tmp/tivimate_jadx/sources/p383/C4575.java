package p383;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import p335.C4209;
import ᵢ.ﹳٴ;

/* renamed from: ⁱʼ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4575 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C4579 f17060 = new C4579(6);

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final C4576 f17061 = new C4576(2);

    /* renamed from: ˈ, reason: contains not printable characters */
    public final ﹳٴ f17063;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ArrayList f17065 = new ArrayList();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final HashSet f17062 = new HashSet();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C4579 f17064 = f17060;

    public C4575(ﹳٴ r2) {
        this.f17063 = r2;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final synchronized InterfaceC4578 m9120(Class cls, Class cls2) {
        try {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = this.f17065;
            int size = arrayList2.size();
            boolean z = false;
            int i = 0;
            while (true) {
                boolean z2 = true;
                if (i >= size) {
                    break;
                }
                Object obj = arrayList2.get(i);
                i++;
                C4580 c4580 = (C4580) obj;
                if (this.f17062.contains(c4580)) {
                    z = true;
                } else {
                    if (!c4580.f17072.isAssignableFrom(cls) || !c4580.f17071.isAssignableFrom(cls2)) {
                        z2 = false;
                    }
                    if (z2) {
                        this.f17062.add(c4580);
                        arrayList.add(c4580.f17070.mo4901(this));
                        this.f17062.remove(c4580);
                    }
                }
            }
            if (arrayList.size() > 1) {
                C4579 c4579 = this.f17064;
                ﹳٴ r11 = this.f17063;
                c4579.getClass();
                return new C4598(arrayList, 2, r11);
            }
            if (arrayList.size() == 1) {
                return (InterfaceC4578) arrayList.get(0);
            }
            if (z) {
                return f17061;
            }
            throw new RuntimeException("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        } catch (Throwable th) {
            this.f17062.clear();
            throw th;
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final synchronized ArrayList m9121(Class cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        ArrayList arrayList2 = this.f17065;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            C4580 c4580 = (C4580) obj;
            if (!arrayList.contains(c4580.f17071) && c4580.f17072.isAssignableFrom(cls)) {
                arrayList.add(c4580.f17071);
            }
        }
        return arrayList;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final synchronized void m9122(Class cls, InterfaceC4596 interfaceC4596) {
        this.f17065.add(0, new C4580(cls, InputStream.class, interfaceC4596));
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final synchronized ArrayList m9123(C4209 c4209) {
        ArrayList m9126;
        m9126 = m9126();
        m9125(C4593.class, InputStream.class, c4209);
        return m9126;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final synchronized ArrayList m9124(Class cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            ArrayList arrayList2 = this.f17065;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList2.get(i);
                i++;
                C4580 c4580 = (C4580) obj;
                if (!this.f17062.contains(c4580) && c4580.f17072.isAssignableFrom(cls)) {
                    this.f17062.add(c4580);
                    arrayList.add(c4580.f17070.mo4901(this));
                    this.f17062.remove(c4580);
                }
            }
        } catch (Throwable th) {
            this.f17062.clear();
            throw th;
        }
        return arrayList;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final synchronized void m9125(Class cls, Class cls2, InterfaceC4596 interfaceC4596) {
        C4580 c4580 = new C4580(cls, cls2, interfaceC4596);
        ArrayList arrayList = this.f17065;
        arrayList.add(arrayList.size(), c4580);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final synchronized ArrayList m9126() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator it = this.f17065.iterator();
        while (it.hasNext()) {
            C4580 c4580 = (C4580) it.next();
            if (c4580.f17072.isAssignableFrom(C4593.class) && c4580.f17071.isAssignableFrom(InputStream.class)) {
                it.remove();
                arrayList.add(c4580.f17070);
            }
        }
        return arrayList;
    }
}

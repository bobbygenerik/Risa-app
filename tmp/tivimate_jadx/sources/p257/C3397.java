package p257;

import android.util.Log;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.NavigableMap;
import java.util.TreeMap;
import p087.AbstractC1751;
import p404.C4790;
import ʽⁱ.ᵎﹶ;

/* renamed from: יᐧ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3397 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f13264;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f13267;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C4790 f13266 = new C4790(29);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3391 f13265 = new C3391(0);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final HashMap f13262 = new HashMap();

    /* renamed from: ˈ, reason: contains not printable characters */
    public final HashMap f13263 = new HashMap();

    public C3397(int i) {
        this.f13264 = i;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final synchronized void m7291(int i) {
        try {
            if (i >= 40) {
                m7298();
            } else if (i >= 20 || i == 15) {
                m7292(this.f13264 / 2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m7292(int i) {
        while (this.f13267 > i) {
            Object m9571 = this.f13266.m9571();
            AbstractC1751.m4712(m9571);
            C3395 m7294 = m7294(m9571.getClass());
            this.f13267 -= m7294.m7289() * m7294.m7290(m9571);
            m7297(m7294.m7290(m9571), m9571.getClass());
            if (Log.isLoggable(m7294.m7288(), 2)) {
                m7294.m7288();
                String str = "evicted: " + m7294.m7290(m9571);
            }
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final synchronized Object m7293(int i, Class cls) {
        C3390 c3390;
        int i2;
        try {
            Integer num = (Integer) m7295(cls).ceilingKey(Integer.valueOf(i));
            if (num == null || ((i2 = this.f13267) != 0 && this.f13264 / i2 < 2 && num.intValue() > i * 8)) {
                C3391 c3391 = this.f13265;
                InterfaceC3394 interfaceC3394 = (InterfaceC3394) ((ArrayDeque) ((ᵎﹶ) c3391).ʾˋ).poll();
                if (interfaceC3394 == null) {
                    interfaceC3394 = c3391.m7274();
                }
                c3390 = (C3390) interfaceC3394;
                c3390.f13240 = i;
                c3390.f13239 = cls;
            }
            C3391 c33912 = this.f13265;
            int intValue = num.intValue();
            InterfaceC3394 interfaceC33942 = (InterfaceC3394) ((ArrayDeque) ((ᵎﹶ) c33912).ʾˋ).poll();
            if (interfaceC33942 == null) {
                interfaceC33942 = c33912.m7274();
            }
            c3390 = (C3390) interfaceC33942;
            c3390.f13240 = intValue;
            c3390.f13239 = cls;
        } catch (Throwable th) {
            throw th;
        }
        return m7299(c3390, cls);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C3395 m7294(Class cls) {
        C3395 c3395;
        HashMap hashMap = this.f13263;
        C3395 c33952 = (C3395) hashMap.get(cls);
        if (c33952 != null) {
            return c33952;
        }
        if (cls.equals(int[].class)) {
            c3395 = new C3395(1);
        } else {
            if (!cls.equals(byte[].class)) {
                throw new IllegalArgumentException("No array pool found for: ".concat(cls.getSimpleName()));
            }
            c3395 = new C3395(0);
        }
        hashMap.put(cls, c3395);
        return c3395;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final NavigableMap m7295(Class cls) {
        HashMap hashMap = this.f13262;
        NavigableMap navigableMap = (NavigableMap) hashMap.get(cls);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        hashMap.put(cls, treeMap);
        return treeMap;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final synchronized void m7296(Object obj) {
        Class<?> cls = obj.getClass();
        C3395 m7294 = m7294(cls);
        int m7290 = m7294.m7290(obj);
        int m7289 = m7294.m7289() * m7290;
        if (m7289 <= this.f13264 / 2) {
            C3391 c3391 = this.f13265;
            InterfaceC3394 interfaceC3394 = (InterfaceC3394) ((ArrayDeque) ((ᵎﹶ) c3391).ʾˋ).poll();
            if (interfaceC3394 == null) {
                interfaceC3394 = c3391.m7274();
            }
            C3390 c3390 = (C3390) interfaceC3394;
            c3390.f13240 = m7290;
            c3390.f13239 = cls;
            this.f13266.m9570(c3390, obj);
            NavigableMap m7295 = m7295(cls);
            Integer num = (Integer) m7295.get(Integer.valueOf(c3390.f13240));
            Integer valueOf = Integer.valueOf(c3390.f13240);
            int i = 1;
            if (num != null) {
                i = 1 + num.intValue();
            }
            m7295.put(valueOf, Integer.valueOf(i));
            this.f13267 += m7289;
            m7292(this.f13264);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m7297(int i, Class cls) {
        NavigableMap m7295 = m7295(cls);
        Integer num = (Integer) m7295.get(Integer.valueOf(i));
        if (num != null) {
            if (num.intValue() == 1) {
                m7295.remove(Integer.valueOf(i));
                return;
            } else {
                m7295.put(Integer.valueOf(i), Integer.valueOf(num.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + i + ", this: " + this);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final synchronized void m7298() {
        m7292(0);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final Object m7299(C3390 c3390, Class cls) {
        C3395 m7294 = m7294(cls);
        Object m9575 = this.f13266.m9575(c3390);
        if (m9575 != null) {
            this.f13267 -= m7294.m7289() * m7294.m7290(m9575);
            m7297(m7294.m7290(m9575), cls);
        }
        if (m9575 != null) {
            return m9575;
        }
        if (Log.isLoggable(m7294.m7288(), 2)) {
            m7294.m7288();
            String str = "Allocated " + c3390.f13240 + " bytes";
        }
        int i = c3390.f13240;
        switch (m7294.f13261) {
            case 0:
                return new byte[i];
            default:
                return new int[i];
        }
    }
}

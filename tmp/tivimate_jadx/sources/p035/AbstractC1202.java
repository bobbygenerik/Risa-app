package p035;

import android.content.Context;
import ar.tvplayer.core.domain.ـˆ;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import p013.C0907;
import p121.AbstractC2026;
import p286.AbstractC3586;
import p316.AbstractC3902;
import p373.EnumC4532;
import p391.C4634;
import p417.InterfaceC4930;
import p417.InterfaceC4932;
import p430.C5097;
import p435.AbstractC5143;
import ﹳˋ.ٴﹶ;

/* renamed from: ʼﾞ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1202 {
    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C1203 m3733(Context context, Class cls, String str) {
        if (AbstractC5143.m10123(str)) {
            throw new IllegalArgumentException("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
        }
        if (str.equals(":memory:")) {
            throw new IllegalArgumentException("Cannot build a database with the special name ':memory:'. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
        }
        return new C1203(context, cls, str);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final Object m3734(InterfaceC1206 interfaceC1206, String str, AbstractC3902 abstractC3902) {
        Object mo3409 = interfaceC1206.mo3409(str, new ـˆ(17), abstractC3902);
        return mo3409 == EnumC4532.f16960 ? mo3409 : C0907.f3832;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C1228 m3735(String str) {
        TreeMap treeMap = C1228.f4746;
        synchronized (treeMap) {
            Map.Entry ceilingEntry = treeMap.ceilingEntry(1);
            if (ceilingEntry == null) {
                C1228 c1228 = new C1228();
                c1228.f4748 = str;
                c1228.f4751 = 1;
                return c1228;
            }
            treeMap.remove(ceilingEntry.getKey());
            C1228 c12282 = (C1228) ceilingEntry.getValue();
            c12282.f4748 = str;
            c12282.f4751 = 1;
            return c12282;
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public void m3736(InterfaceC4932 interfaceC4932, Object obj) {
        if (obj == null) {
            return;
        }
        InterfaceC4930 mo3415 = interfaceC4932.mo3415(m3737());
        try {
            m3742(mo3415, obj);
            mo3415.mo3392();
            ٴﹶ.ᵔᵢ(mo3415, (Throwable) null);
        } finally {
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public abstract String m3737();

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public long m3738(InterfaceC4932 interfaceC4932, Object obj) {
        if (obj == null) {
            return -1L;
        }
        InterfaceC4930 mo3415 = interfaceC4932.mo3415(m3737());
        try {
            m3742(mo3415, obj);
            mo3415.mo3392();
            ٴﹶ.ᵔᵢ(mo3415, (Throwable) null);
            return AbstractC3586.m7541(interfaceC4932);
        } finally {
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public List m3739(InterfaceC4932 interfaceC4932, Collection collection) {
        if (collection == null) {
            return C5097.f19202;
        }
        C4634 m5056 = AbstractC2026.m5056();
        InterfaceC4930 mo3415 = interfaceC4932.mo3415(m3737());
        try {
            for (Object obj : collection) {
                if (obj != null) {
                    m3742(mo3415, obj);
                    mo3415.mo3392();
                    mo3415.reset();
                    m5056.add(Long.valueOf(AbstractC3586.m7541(interfaceC4932)));
                } else {
                    m5056.add(-1L);
                }
            }
            ٴﹶ.ᵔᵢ(mo3415, (Throwable) null);
            return AbstractC2026.m5061(m5056);
        } finally {
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public void m3740(InterfaceC4932 interfaceC4932, Iterable iterable) {
        if (iterable == null) {
            return;
        }
        InterfaceC4930 mo3415 = interfaceC4932.mo3415(m3737());
        try {
            for (Object obj : iterable) {
                if (obj != null) {
                    m3742(mo3415, obj);
                    mo3415.mo3392();
                    mo3415.reset();
                    AbstractC3586.m7530(interfaceC4932);
                }
            }
            ٴﹶ.ᵔᵢ(mo3415, (Throwable) null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                ٴﹶ.ᵔᵢ(mo3415, th);
                throw th2;
            }
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public void m3741(InterfaceC4932 interfaceC4932, Iterable iterable) {
        if (iterable == null) {
            return;
        }
        InterfaceC4930 mo3415 = interfaceC4932.mo3415(m3737());
        try {
            for (Object obj : iterable) {
                if (obj != null) {
                    m3742(mo3415, obj);
                    mo3415.mo3392();
                    mo3415.reset();
                }
            }
            ٴﹶ.ᵔᵢ(mo3415, (Throwable) null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                ٴﹶ.ᵔᵢ(mo3415, th);
                throw th2;
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public abstract void m3742(InterfaceC4930 interfaceC4930, Object obj);

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public void m3743(InterfaceC4932 interfaceC4932, Object obj) {
        if (obj == null) {
            return;
        }
        InterfaceC4930 mo3415 = interfaceC4932.mo3415(m3737());
        try {
            m3742(mo3415, obj);
            mo3415.mo3392();
            ٴﹶ.ᵔᵢ(mo3415, (Throwable) null);
            AbstractC3586.m7530(interfaceC4932);
        } finally {
        }
    }
}

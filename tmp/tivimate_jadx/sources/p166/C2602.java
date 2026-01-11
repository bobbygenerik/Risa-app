package p166;

import android.content.Context;
import android.os.Bundle;
import android.os.Trace;
import ar.tvplayer.tv.R;
import com.bumptech.glide.ʽ;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* renamed from: ˊᵎ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2602 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static volatile C2602 f9841;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final Object f9842 = new Object();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Context f9843;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final HashSet f9844 = new HashSet();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final HashMap f9845 = new HashMap();

    public C2602(Context context) {
        this.f9843 = context.getApplicationContext();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static C2602 m5847(Context context) {
        if (f9841 == null) {
            synchronized (f9842) {
                try {
                    if (f9841 == null) {
                        f9841 = new C2602(context);
                    }
                } finally {
                }
            }
        }
        return f9841;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object m5848(Class cls, HashSet hashSet) {
        Object obj;
        HashMap hashMap = this.f9845;
        if (ʽ.ˉˆ()) {
            try {
                Trace.beginSection(ʽ.ˊʻ(cls.getSimpleName()));
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        }
        if (hashSet.contains(cls)) {
            throw new IllegalStateException("Cannot initialize " + cls.getName() + ". Cycle detected.");
        }
        if (hashMap.containsKey(cls)) {
            obj = hashMap.get(cls);
        } else {
            hashSet.add(cls);
            try {
                InterfaceC2601 interfaceC2601 = (InterfaceC2601) cls.getDeclaredConstructor(null).newInstance(null);
                List<Class> mo413 = interfaceC2601.mo413();
                if (!mo413.isEmpty()) {
                    for (Class cls2 : mo413) {
                        if (!hashMap.containsKey(cls2)) {
                            m5848(cls2, hashSet);
                        }
                    }
                }
                obj = interfaceC2601.mo412(this.f9843);
                hashSet.remove(cls);
                hashMap.put(cls, obj);
            } catch (Throwable th2) {
                throw new RuntimeException(th2);
            }
        }
        Trace.endSection();
        return obj;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m5849(Bundle bundle) {
        HashSet hashSet;
        String string = this.f9843.getString(R.string.3jg);
        if (bundle != null) {
            try {
                HashSet hashSet2 = new HashSet();
                Iterator<String> it = bundle.keySet().iterator();
                while (true) {
                    boolean hasNext = it.hasNext();
                    hashSet = this.f9844;
                    if (!hasNext) {
                        break;
                    }
                    String next = it.next();
                    if (string.equals(bundle.getString(next, null))) {
                        Class<?> cls = Class.forName(next);
                        if (InterfaceC2601.class.isAssignableFrom(cls)) {
                            hashSet.add(cls);
                        }
                    }
                }
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    m5848((Class) it2.next(), hashSet2);
                }
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        }
    }
}

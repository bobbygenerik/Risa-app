package androidx.lifecycle;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import p204.C2919;

/* renamed from: androidx.lifecycle.ᵎᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0196 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2919 f1097 = new C2919();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m727(String str, AutoCloseable autoCloseable) {
        AutoCloseable autoCloseable2;
        C2919 c2919 = this.f1097;
        if (c2919 != null) {
            if (c2919.f11042) {
                C2919.m6446(autoCloseable);
                return;
            }
            synchronized (((ﹳˋ.ʼˎ) c2919.f11041)) {
                autoCloseable2 = (AutoCloseable) ((LinkedHashMap) c2919.f11039).put(str, autoCloseable);
            }
            C2919.m6446(autoCloseable2);
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m728() {
        C2919 c2919 = this.f1097;
        if (c2919 != null && !c2919.f11042) {
            c2919.f11042 = true;
            synchronized (((ﹳˋ.ʼˎ) c2919.f11041)) {
                try {
                    Iterator it = ((LinkedHashMap) c2919.f11039).values().iterator();
                    while (it.hasNext()) {
                        C2919.m6446((AutoCloseable) it.next());
                    }
                    Iterator it2 = ((LinkedHashSet) c2919.f11040).iterator();
                    while (it2.hasNext()) {
                        C2919.m6446((AutoCloseable) it2.next());
                    }
                    ((LinkedHashSet) c2919.f11040).clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        mo730();
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final AutoCloseable m729(String str) {
        AutoCloseable autoCloseable;
        C2919 c2919 = this.f1097;
        if (c2919 == null) {
            return null;
        }
        synchronized (((ﹳˋ.ʼˎ) c2919.f11041)) {
            autoCloseable = (AutoCloseable) ((LinkedHashMap) c2919.f11039).get(str);
        }
        return autoCloseable;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public void mo730() {
    }
}

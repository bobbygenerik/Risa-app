package p202;

import java.util.LinkedHashMap;
import java.util.concurrent.locks.ReentrantLock;
import p404.C4790;
import ᵎˉ.ⁱˊ;

/* renamed from: ˎˏ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2914 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final ⁱˊ f11006 = new Object();

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final LinkedHashMap f11007 = new LinkedHashMap();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C4790 f11008;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ReentrantLock f11009;

    public C2914(String str, boolean z) {
        ReentrantLock reentrantLock;
        synchronized (f11006) {
            try {
                LinkedHashMap linkedHashMap = f11007;
                Object obj = linkedHashMap.get(str);
                if (obj == null) {
                    obj = new ReentrantLock();
                    linkedHashMap.put(str, obj);
                }
                reentrantLock = (ReentrantLock) obj;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f11009 = reentrantLock;
        this.f11008 = z ? new C4790(str) : null;
    }
}

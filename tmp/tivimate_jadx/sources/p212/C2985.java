package p212;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayDeque;
import java.util.HashMap;
import p181.InterfaceC2753;
import p181.InterfaceC2754;
import ʿʿ.ﹳٴ;
import ˉᵎ.ⁱˊ;
import ـˎ.ˈ;

/* renamed from: ˏ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2985 implements InterfaceC2753, InterfaceC2754 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final HashMap f11399 = new HashMap();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public ArrayDeque f11398 = new ArrayDeque();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final synchronized void m6517() {
        ﹳٴ r1 = ﹳٴ.ᴵˊ;
        ˈ r2 = ˈ.ᴵˊ;
        synchronized (this) {
            try {
                if (!this.f11399.containsKey(ⁱˊ.class)) {
                    this.f11399.put(ⁱˊ.class, new ConcurrentHashMap());
                }
                ((ConcurrentHashMap) this.f11399.get(ⁱˊ.class)).put(r2, r1);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

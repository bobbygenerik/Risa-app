package p208;

import java.util.LinkedHashMap;
import java.util.List;
import p430.C5097;
import p435.AbstractC5152;

/* renamed from: ˎᵢ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2966 implements InterfaceC2969, InterfaceC2951 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final C2966 f11329 = new Object();

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final C2966 f11330 = new Object();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C2963 m6495(C2966 c2966, String str) {
        C2963 c2963 = new C2963(str);
        C2963.f11311.put(str, c2963);
        return c2963;
    }

    @Override // p208.InterfaceC2969
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public void mo6496(C2940 c2940, List list) {
    }

    @Override // p208.InterfaceC2969
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public List mo6497(C2940 c2940) {
        return C5097.f19202;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public synchronized C2963 m6498(String str) {
        C2963 c2963;
        try {
            LinkedHashMap linkedHashMap = C2963.f11311;
            c2963 = (C2963) linkedHashMap.get(str);
            if (c2963 == null) {
                c2963 = (C2963) linkedHashMap.get(AbstractC5152.m10150(str, "TLS_", false) ? "SSL_".concat(str.substring(4)) : AbstractC5152.m10150(str, "SSL_", false) ? "TLS_".concat(str.substring(4)) : str);
                if (c2963 == null) {
                    c2963 = new C2963(str);
                }
                linkedHashMap.put(str, c2963);
            }
        } catch (Throwable th) {
            throw th;
        }
        return c2963;
    }
}

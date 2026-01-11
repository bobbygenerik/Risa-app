package p404;

import j$.util.concurrent.ConcurrentHashMap;
import java.security.GeneralSecurityException;
import java.util.logging.Logger;
import p035.AbstractC1220;

/* renamed from: ﹳʽ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4808 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final Logger f18072 = Logger.getLogger(C4808.class.getName());

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C4808 f18073;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public ConcurrentHashMap f18074;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public ConcurrentHashMap f18075;

    /* JADX WARN: Type inference failed for: r0v3, types: [ﹳʽ.ⁱˊ, java.lang.Object] */
    static {
        ?? obj = new Object();
        obj.f18075 = new ConcurrentHashMap();
        obj.f18074 = new ConcurrentHashMap();
        f18073 = obj;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final synchronized void m9606(C4802 c4802) {
        try {
            String str = c4802.f18063;
            if (this.f18074.containsKey(str) && !((Boolean) this.f18074.get(str)).booleanValue()) {
                throw new GeneralSecurityException("New keys are already disallowed for key type ".concat(str));
            }
            if (((C4802) this.f18075.get(str)) != null && !C4802.class.equals(C4802.class)) {
                f18072.warning("Attempted overwrite of a registered key manager for key type ".concat(str));
                throw new GeneralSecurityException("typeUrl (" + str + ") is already registered with " + C4802.class.getName() + ", cannot be re-registered with " + C4802.class.getName());
            }
            this.f18075.putIfAbsent(str, c4802);
            this.f18074.put(str, Boolean.TRUE);
        } catch (Throwable th) {
            throw th;
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final synchronized void m9607(C4802 c4802) {
        m9608(c4802, 1);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final synchronized void m9608(C4802 c4802, int i) {
        if (!AbstractC1220.m3793(i)) {
            throw new GeneralSecurityException("Cannot register key manager: FIPS compatibility insufficient");
        }
        m9606(c4802);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final synchronized C4802 m9609(String str) {
        if (!this.f18075.containsKey(str)) {
            throw new GeneralSecurityException("No key manager found for key type " + str + ", see https://developers.google.com/tink/faq/registration_errors");
        }
        return (C4802) this.f18075.get(str);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C4802 m9610(Class cls, String str) {
        C4802 m9609 = m9609(str);
        if (m9609.f18062.equals(cls)) {
            return m9609;
        }
        throw new GeneralSecurityException("Primitive type " + cls.getName() + " not supported by key manager of type " + C4802.class + ", which only supports: " + m9609.f18062);
    }
}

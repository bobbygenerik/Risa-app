package p404;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import p245.C3283;

/* renamed from: ﹳʽ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4787 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C4787 f18029 = new C4787();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final HashMap f18030 = new HashMap();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final synchronized void m9553(C3283 c3283, Class cls) {
        try {
            C3283 c32832 = (C3283) this.f18030.get(cls);
            if (c32832 != null && !c32832.equals(c3283)) {
                throw new GeneralSecurityException("Different key creator for parameters class already inserted");
            }
            this.f18030.put(cls, c3283);
        } catch (Throwable th) {
            throw th;
        }
    }
}

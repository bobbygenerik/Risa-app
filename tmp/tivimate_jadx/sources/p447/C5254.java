package p447;

import p366.C4486;

/* renamed from: ﹶﾞ.ˈٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5254 {

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final Object f19820 = new Object();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object f19821;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Object f19822 = new Object();

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public volatile Object f19823 = null;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC5233 f19824;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f19825;

    public /* synthetic */ C5254(String str, Object obj, InterfaceC5233 interfaceC5233) {
        this.f19825 = str;
        this.f19821 = obj;
        this.f19824 = interfaceC5233;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object m10388(Object obj) {
        synchronized (this.f19822) {
        }
        if (obj != null) {
            return obj;
        }
        if (AbstractC5218.f19631 == null) {
            return this.f19821;
        }
        synchronized (f19820) {
            try {
                if (C4486.m9046()) {
                    return this.f19823 == null ? this.f19821 : this.f19823;
                }
                try {
                    for (C5254 c5254 : AbstractC5321.f20168) {
                        if (C4486.m9046()) {
                            throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                        }
                        Object obj2 = null;
                        try {
                            InterfaceC5233 interfaceC5233 = c5254.f19824;
                            if (interfaceC5233 != null) {
                                obj2 = interfaceC5233.mo8999();
                            }
                        } catch (IllegalStateException unused) {
                        }
                        synchronized (f19820) {
                            c5254.f19823 = obj2;
                        }
                    }
                } catch (SecurityException unused2) {
                }
                InterfaceC5233 interfaceC52332 = this.f19824;
                if (interfaceC52332 != null) {
                    try {
                        return interfaceC52332.mo8999();
                    } catch (IllegalStateException | SecurityException unused3) {
                    }
                }
                return this.f19821;
            } finally {
            }
        }
    }
}

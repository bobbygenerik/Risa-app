package p152;

import java.io.Serializable;
import p301.InterfaceC3703;

/* renamed from: ˊʼ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2445 implements InterfaceC3703, Serializable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Class f9402;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public transient InterfaceC3703 f9403;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final String f9404;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final boolean f9405;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Object f9406;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final String f9407;

    public AbstractC2445(Object obj, Class cls, String str, String str2, boolean z) {
        this.f9406 = obj;
        this.f9402 = cls;
        this.f9404 = str;
        this.f9407 = str2;
        this.f9405 = z;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final InterfaceC2449 m5570() {
        boolean z = this.f9405;
        Class cls = this.f9402;
        if (!z) {
            return AbstractC2443.m5561(cls);
        }
        AbstractC2443.f9400.getClass();
        return new C2446(cls);
    }

    /* renamed from: ﹳٴ */
    public abstract InterfaceC3703 mo5557();
}

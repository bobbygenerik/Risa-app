package p013;

import java.io.Serializable;
import p329.InterfaceC4104;

/* renamed from: ʻᵢ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0906 implements InterfaceC0908, Serializable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public InterfaceC4104 f3830;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public volatile Object f3831 = C0916.f3838;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Object f3829 = this;

    public C0906(InterfaceC4104 interfaceC4104) {
        this.f3830 = interfaceC4104;
    }

    @Override // p013.InterfaceC0908
    public final Object getValue() {
        Object obj;
        Object obj2 = this.f3831;
        C0916 c0916 = C0916.f3838;
        if (obj2 != c0916) {
            return obj2;
        }
        synchronized (this.f3829) {
            obj = this.f3831;
            if (obj == c0916) {
                obj = this.f3830.mo716();
                this.f3831 = obj;
                this.f3830 = null;
            }
        }
        return obj;
    }

    public final String toString() {
        return m3185() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m3185() {
        return this.f3831 != C0916.f3838;
    }
}

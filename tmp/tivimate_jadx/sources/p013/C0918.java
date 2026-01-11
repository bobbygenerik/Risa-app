package p013;

import java.io.Serializable;
import p329.InterfaceC4104;

/* renamed from: ʻᵢ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0918 implements InterfaceC0908, Serializable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public InterfaceC4104 f3842;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Object f3843;

    @Override // p013.InterfaceC0908
    public final Object getValue() {
        if (this.f3843 == C0916.f3838) {
            this.f3843 = this.f3842.mo716();
            this.f3842 = null;
        }
        return this.f3843;
    }

    public final String toString() {
        return this.f3843 != C0916.f3838 ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}

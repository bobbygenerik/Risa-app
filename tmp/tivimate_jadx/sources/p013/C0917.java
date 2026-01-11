package p013;

import java.io.Serializable;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import p329.InterfaceC4104;

/* renamed from: ʻᵢ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0917 implements InterfaceC0908, Serializable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final AtomicReferenceFieldUpdater f3839 = AtomicReferenceFieldUpdater.newUpdater(C0917.class, Object.class, "ᴵˊ");

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public volatile InterfaceC4104 f3840;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public volatile Object f3841;

    @Override // p013.InterfaceC0908
    public final Object getValue() {
        Object obj = this.f3841;
        C0916 c0916 = C0916.f3838;
        if (obj != c0916) {
            return obj;
        }
        InterfaceC4104 interfaceC4104 = this.f3840;
        if (interfaceC4104 != null) {
            Object mo716 = interfaceC4104.mo716();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3839;
            while (!atomicReferenceFieldUpdater.compareAndSet(this, c0916, mo716)) {
                if (atomicReferenceFieldUpdater.get(this) != c0916) {
                }
            }
            this.f3840 = null;
            return mo716;
        }
        return this.f3841;
    }

    public final String toString() {
        return this.f3841 != C0916.f3838 ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}

package p017;

import java.io.Serializable;
import java.util.Arrays;
import p095.InterfaceC1881;

/* renamed from: ʼʻ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0999 extends AbstractC0955 implements Serializable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC1881 f3986;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final AbstractC0955 f3987;

    public C0999(InterfaceC1881 interfaceC1881, AbstractC0955 abstractC0955) {
        this.f3986 = interfaceC1881;
        this.f3987 = abstractC0955;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        InterfaceC1881 interfaceC1881 = this.f3986;
        return this.f3987.compare(interfaceC1881.apply(obj), interfaceC1881.apply(obj2));
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C0999) {
            C0999 c0999 = (C0999) obj;
            if (this.f3986.equals(c0999.f3986) && this.f3987.equals(c0999.f3987)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3986, this.f3987});
    }

    public final String toString() {
        return this.f3987 + ".onResultOf(" + this.f3986 + ")";
    }
}

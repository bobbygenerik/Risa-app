package p139;

import androidx.leanback.widget.ʻٴ;
import java.util.Set;
import p318.C3919;
import p318.InterfaceC3917;
import p318.InterfaceC3918;

/* renamed from: ˉˋ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2362 implements InterfaceC3918 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2357 f9131;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2356 f9132;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Set f9133;

    public C2362(Set set, C2356 c2356, C2357 c2357) {
        this.f9133 = set;
        this.f9132 = c2356;
        this.f9131 = c2357;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ʻٴ m5446(String str, C3919 c3919, InterfaceC3917 interfaceC3917) {
        Set set = this.f9133;
        if (set.contains(c3919)) {
            return new ʻٴ(this.f9132, str, c3919, interfaceC3917, this.f9131, 4);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", c3919, set));
    }
}

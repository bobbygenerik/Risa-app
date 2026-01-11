package p311;

import j$.util.DesugarCollections;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/* renamed from: ᐧᵢ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3812 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Method f14779;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final List f14780;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f14781;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Class f14782;

    public C3812(Class cls, Object obj, Method method, ArrayList arrayList) {
        this.f14782 = cls;
        this.f14781 = obj;
        this.f14779 = method;
        this.f14780 = DesugarCollections.unmodifiableList(arrayList);
    }

    public final String toString() {
        return String.format("%s.%s() %s", this.f14782.getName(), this.f14779.getName(), this.f14780);
    }
}

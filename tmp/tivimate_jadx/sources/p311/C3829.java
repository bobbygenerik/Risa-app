package p311;

import android.os.Build;
import java.lang.reflect.Method;

/* renamed from: ᐧᵢ.ᵔٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3829 extends C3835 {
    @Override // p311.C3835
    /* renamed from: ˈ */
    public final Object mo7982(Method method, Class cls, Object obj, Object[] objArr) {
        if (Build.VERSION.SDK_INT >= 26) {
            return AbstractC3791.m7955(method, cls, obj, objArr);
        }
        throw new UnsupportedOperationException("Calling default methods on API 24 and 25 is not supported");
    }

    @Override // p311.C3835
    /* renamed from: ˑﹳ */
    public final boolean mo7983(Method method) {
        return method.isDefault();
    }
}

package p311;

import java.lang.reflect.Method;
import java.lang.reflect.Parameter;

/* renamed from: ᐧᵢ.ˈʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3802 extends C3835 {
    @Override // p311.C3835
    /* renamed from: ʽ, reason: contains not printable characters */
    public final String mo7981(int i, Method method) {
        Parameter parameter = method.getParameters()[i];
        if (!parameter.isNamePresent()) {
            return super.mo7981(i, method);
        }
        return "parameter '" + parameter.getName() + '\'';
    }

    @Override // p311.C3835
    /* renamed from: ˈ, reason: contains not printable characters */
    public final Object mo7982(Method method, Class cls, Object obj, Object[] objArr) {
        return AbstractC3791.m7955(method, cls, obj, objArr);
    }

    @Override // p311.C3835
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean mo7983(Method method) {
        return method.isDefault();
    }
}

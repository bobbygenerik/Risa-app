package p052;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/* renamed from: ʽᴵ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1404 extends AbstractC1414 {

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final /* synthetic */ AccessibleObject f5504;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final /* synthetic */ int f5505 = 0;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final /* synthetic */ Class f5506;

    public C1404(Constructor constructor, Class cls) {
        this.f5504 = constructor;
        this.f5506 = cls;
    }

    public C1404(Method method, Class cls) {
        this.f5504 = method;
        this.f5506 = cls;
    }

    public final String toString() {
        switch (this.f5505) {
            case 0:
                return this.f5506.getName();
            default:
                return this.f5506.getName();
        }
    }

    @Override // p052.AbstractC1414
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Object mo4145() {
        int i = this.f5505;
        AccessibleObject accessibleObject = this.f5504;
        switch (i) {
            case 0:
                return ((Constructor) accessibleObject).newInstance(null);
            default:
                return ((Method) accessibleObject).invoke(null, this.f5506, Object.class);
        }
    }
}

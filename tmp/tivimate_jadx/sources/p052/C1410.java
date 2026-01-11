package p052;

import java.lang.reflect.Method;

/* renamed from: ʽᴵ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1410 extends AbstractC1414 {

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final /* synthetic */ Class f5516;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final /* synthetic */ Method f5517;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final /* synthetic */ Object f5518;

    public C1410(Method method, Object obj, Class cls) {
        this.f5517 = method;
        this.f5518 = obj;
        this.f5516 = cls;
    }

    public final String toString() {
        return this.f5516.getName();
    }

    @Override // p052.AbstractC1414
    /* renamed from: ˑﹳ */
    public final Object mo4145() {
        return this.f5517.invoke(this.f5518, this.f5516);
    }
}

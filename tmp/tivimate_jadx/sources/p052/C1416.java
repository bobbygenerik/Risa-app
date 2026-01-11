package p052;

import java.lang.reflect.Method;

/* renamed from: ʽᴵ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1416 extends AbstractC1414 {

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final /* synthetic */ int f5542;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final /* synthetic */ Method f5543;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final /* synthetic */ Class f5544;

    public C1416(Method method, Class cls, int i) {
        this.f5543 = method;
        this.f5544 = cls;
        this.f5542 = i;
    }

    public final String toString() {
        return this.f5544.getName();
    }

    @Override // p052.AbstractC1414
    /* renamed from: ˑﹳ */
    public final Object mo4145() {
        return this.f5543.invoke(null, this.f5544, Integer.valueOf(this.f5542));
    }
}

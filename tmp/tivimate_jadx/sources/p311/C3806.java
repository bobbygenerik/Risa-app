package p311;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.Executor;
import p229.C3125;

/* renamed from: ᐧᵢ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3806 extends AbstractC3814 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Executor f14728;

    public C3806(Executor executor) {
        this.f14728 = executor;
    }

    @Override // p311.AbstractC3814
    /* renamed from: ﹳٴ */
    public final InterfaceC3838 mo7976(Type type, Annotation[] annotationArr) {
        if (AbstractC3798.m7970(type) != InterfaceC3801.class) {
            return null;
        }
        if (type instanceof ParameterizedType) {
            return new C3125(AbstractC3798.m7968(0, (ParameterizedType) type), 11, AbstractC3798.m7967(annotationArr, InterfaceC3834.class) ? null : this.f14728);
        }
        throw new IllegalArgumentException("Call return type must be parameterized as Call<Foo> or Call<? extends Foo>");
    }
}

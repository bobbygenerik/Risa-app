package p311;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.CompletableFuture;
import ˉˆ.ʿ;
import ˊⁱ.ˑﹳ;

/* renamed from: ᐧᵢ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3799 extends AbstractC3814 {
    @Override // p311.AbstractC3814
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC3838 mo7976(Type type, Annotation[] annotationArr) {
        if (AbstractC3798.m7970(type) != CompletableFuture.class) {
            return null;
        }
        if (!(type instanceof ParameterizedType)) {
            throw new IllegalStateException("CompletableFuture return type must be parameterized as CompletableFuture<Foo> or CompletableFuture<? extends Foo>");
        }
        Type m7968 = AbstractC3798.m7968(0, (ParameterizedType) type);
        if (AbstractC3798.m7970(m7968) != C3789.class) {
            return new ʿ(29, m7968);
        }
        if (m7968 instanceof ParameterizedType) {
            return new ˑﹳ(16, AbstractC3798.m7968(0, (ParameterizedType) m7968));
        }
        throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
    }
}

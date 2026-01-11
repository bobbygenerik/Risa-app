package p311;

import androidx.leanback.widget.ʻٴ;
import j$.util.Optional;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import p013.C0907;
import p208.AbstractC2944;
import p208.AbstractC2960;
import p382.InterfaceC4564;
import ˊⁱ.ˑﹳ;

/* renamed from: ᐧᵢ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3833 extends AbstractC3820 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f14837;

    public /* synthetic */ C3833(int i) {
        this.f14837 = i;
    }

    @Override // p311.AbstractC3820
    /* renamed from: ⁱˊ */
    public final InterfaceC3837 mo7994(Type type, Annotation[] annotationArr, ʻٴ r5) {
        switch (this.f14837) {
            case 0:
                if (type == AbstractC2960.class) {
                    return AbstractC3798.m7967(annotationArr, InterfaceC4564.class) ? C3835.f14843 : C3835.f14838;
                }
                if (type == Void.class) {
                    return C3835.f14841;
                }
                if (AbstractC3798.f14716 && type == C0907.class) {
                    return C3835.f14840;
                }
                return null;
            default:
                if (AbstractC3798.m7970(type) != Optional.class) {
                    return null;
                }
                return new ˑﹳ(17, r5.ʽﹳ(AbstractC3798.m7968(0, (ParameterizedType) type), annotationArr));
        }
    }

    @Override // p311.AbstractC3820
    /* renamed from: ﹳٴ */
    public InterfaceC3837 mo7995(Type type, Annotation[] annotationArr) {
        switch (this.f14837) {
            case 0:
                if (AbstractC2944.class.isAssignableFrom(AbstractC3798.m7970(type))) {
                    return C3835.f14839;
                }
                return null;
            default:
                return super.mo7995(type, annotationArr);
        }
    }
}

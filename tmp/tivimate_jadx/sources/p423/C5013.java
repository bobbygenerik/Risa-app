package p423;

import androidx.leanback.widget.ʻٴ;
import j$.util.DesugarCollections;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
import p052.C1407;
import p052.InterfaceC1423;
import p311.AbstractC3820;
import p311.InterfaceC3837;

/* renamed from: ﹳﹶ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5013 extends AbstractC3820 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean f18756;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1407 f18757;

    public C5013(C1407 c1407, boolean z) {
        this.f18757 = c1407;
        this.f18756 = z;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static Set m9889(Annotation[] annotationArr) {
        LinkedHashSet linkedHashSet = null;
        for (Annotation annotation : annotationArr) {
            if (annotation.annotationType().isAnnotationPresent(InterfaceC1423.class)) {
                if (linkedHashSet == null) {
                    linkedHashSet = new LinkedHashSet();
                }
                linkedHashSet.add(annotation);
            }
        }
        return linkedHashSet != null ? DesugarCollections.unmodifiableSet(linkedHashSet) : Collections.EMPTY_SET;
    }

    @Override // p311.AbstractC3820
    /* renamed from: ⁱˊ */
    public final InterfaceC3837 mo7994(Type type, Annotation[] annotationArr, ʻٴ r4) {
        return new C5011(this.f18757.m4146(type, m9889(annotationArr), null));
    }

    @Override // p311.AbstractC3820
    /* renamed from: ﹳٴ */
    public final InterfaceC3837 mo7995(Type type, Annotation[] annotationArr) {
        return new C5012(this.f18757.m4146(type, m9889(annotationArr), null), this.f18756);
    }
}

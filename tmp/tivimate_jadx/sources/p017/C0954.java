package p017;

import java.util.Comparator;

/* renamed from: ʼʻ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0954 extends AbstractC1000 {
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static AbstractC1000 m3241(int i) {
        return i < 0 ? AbstractC1000.f3989 : i > 0 ? AbstractC1000.f3988 : AbstractC1000.f3990;
    }

    @Override // p017.AbstractC1000
    /* renamed from: ʽ */
    public final AbstractC1000 mo3225(boolean z, boolean z2) {
        return m3241(Boolean.compare(z, z2));
    }

    @Override // p017.AbstractC1000
    /* renamed from: ˈ */
    public final AbstractC1000 mo3226(boolean z, boolean z2) {
        return m3241(Boolean.compare(z2, z));
    }

    @Override // p017.AbstractC1000
    /* renamed from: ˑﹳ */
    public final int mo3227() {
        return 0;
    }

    @Override // p017.AbstractC1000
    /* renamed from: ⁱˊ */
    public final AbstractC1000 mo3228(Object obj, Object obj2, Comparator comparator) {
        return m3241(comparator.compare(obj, obj2));
    }

    @Override // p017.AbstractC1000
    /* renamed from: ﹳٴ */
    public final AbstractC1000 mo3229(int i, int i2) {
        return m3241(Integer.compare(i, i2));
    }
}

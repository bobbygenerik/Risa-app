package p017;

import com.google.android.gms.internal.play_billing.י;
import j$.util.Objects;
import java.util.AbstractMap;

/* renamed from: ʼʻ.ᵎᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0992 extends AbstractC0993 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C0986 f3976;

    public C0992(C0986 c0986) {
        this.f3976 = c0986;
    }

    @Override // java.util.List
    public final Object get(int i) {
        C0986 c0986 = this.f3976;
        י.ᵎﹶ(i, c0986.f3961);
        Object[] objArr = c0986.f3962;
        int i2 = i * 2;
        Object obj = objArr[i2];
        Objects.requireNonNull(obj);
        Object obj2 = objArr[i2 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3976.f3961;
    }

    @Override // p017.AbstractC0962
    /* renamed from: ᵎﹶ */
    public final boolean mo3205() {
        return true;
    }
}

package p017;

import com.google.android.gms.internal.play_billing.י;
import j$.util.Objects;

/* renamed from: ʼʻ.ˏᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0973 extends AbstractC0993 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final transient Object[] f3934;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final transient int f3935;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final transient int f3936;

    public C0973(Object[] objArr, int i, int i2) {
        this.f3934 = objArr;
        this.f3935 = i;
        this.f3936 = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        י.ᵎﹶ(i, this.f3936);
        Object obj = this.f3934[(i * 2) + this.f3935];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3936;
    }

    @Override // p017.AbstractC0962
    /* renamed from: ᵎﹶ */
    public final boolean mo3205() {
        return true;
    }
}

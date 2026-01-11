package p017;

import com.google.android.gms.internal.play_billing.י;
import j$.util.Objects;

/* renamed from: ʼʻ.ʿᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0956 extends AbstractC0993 {

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final C0956 f3901 = new C0956(0, new Object[0]);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final transient Object[] f3902;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final transient int f3903;

    public C0956(int i, Object[] objArr) {
        this.f3902 = objArr;
        this.f3903 = i;
    }

    @Override // java.util.List
    public final Object get(int i) {
        י.ᵎﹶ(i, this.f3903);
        Object obj = this.f3902[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3903;
    }

    @Override // p017.AbstractC0962
    /* renamed from: ˈ */
    public final Object[] mo3221() {
        return this.f3902;
    }

    @Override // p017.AbstractC0962
    /* renamed from: ˑﹳ */
    public final int mo3222() {
        return this.f3903;
    }

    @Override // p017.AbstractC0962
    /* renamed from: ᵎﹶ */
    public final boolean mo3205() {
        return false;
    }

    @Override // p017.AbstractC0993, p017.AbstractC0962
    /* renamed from: ⁱˊ */
    public final int mo3207(int i, Object[] objArr) {
        Object[] objArr2 = this.f3902;
        int i2 = this.f3903;
        System.arraycopy(objArr2, 0, objArr, i, i2);
        return i + i2;
    }

    @Override // p017.AbstractC0962
    /* renamed from: ﾞᴵ */
    public final int mo3224() {
        return 0;
    }
}

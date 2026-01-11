package p017;

import com.google.android.gms.internal.play_billing.י;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: ʼʻ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0977 implements Iterator {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f3942;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f3943;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ C0944 f3944;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ C0944 f3945;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f3946;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f3947;

    public C0977(C0944 c0944, int i) {
        this.f3947 = i;
        this.f3945 = c0944;
        this.f3944 = c0944;
        this.f3943 = c0944.f3876;
        this.f3946 = c0944.isEmpty() ? -1 : 0;
        this.f3942 = -1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f3946 >= 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        Object obj;
        C0944 c0944 = this.f3944;
        if (c0944.f3876 != this.f3943) {
            throw new ConcurrentModificationException();
        }
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.f3946;
        this.f3942 = i;
        switch (this.f3947) {
            case 0:
                obj = this.f3945.m3213()[i];
                break;
            case 1:
                obj = new C0952(this.f3945, i);
                break;
            default:
                obj = this.f3945.m3216()[i];
                break;
        }
        int i2 = this.f3946 + 1;
        if (i2 >= c0944.f3873) {
            i2 = -1;
        }
        this.f3946 = i2;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        C0944 c0944 = this.f3944;
        if (c0944.f3876 != this.f3943) {
            throw new ConcurrentModificationException();
        }
        י.ٴﹶ("no calls to next() since the last call to remove()", this.f3942 >= 0);
        this.f3943 += 32;
        c0944.remove(c0944.m3213()[this.f3942]);
        this.f3946--;
        this.f3942 = -1;
    }
}

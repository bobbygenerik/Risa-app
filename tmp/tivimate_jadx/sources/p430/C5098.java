package p430;

import android.support.v4.media.session.AbstractC0001;
import java.util.List;
import java.util.RandomAccess;
import ʽٴ.ˈ;

/* renamed from: ﹶˈ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5098 extends AbstractC5100 implements RandomAccess {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f19203;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final AbstractC5100 f19204;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f19205;

    public C5098(AbstractC5100 abstractC5100, int i, int i2) {
        this.f19204 = abstractC5100;
        this.f19205 = i;
        ˈ.ˈ(i, i2, abstractC5100.mo5786());
        this.f19203 = i2 - i;
    }

    @Override // java.util.List
    public final Object get(int i) {
        int i2 = this.f19203;
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException(AbstractC0001.m14(i, i2, "index: ", ", size: "));
        }
        return this.f19204.get(this.f19205 + i);
    }

    @Override // p430.AbstractC5100, java.util.List
    public final List subList(int i, int i2) {
        ˈ.ˈ(i, i2, this.f19203);
        int i3 = this.f19205;
        return new C5098(this.f19204, i + i3, i3 + i2);
    }

    @Override // p430.AbstractC5112
    /* renamed from: ﹳٴ */
    public final int mo5786() {
        return this.f19203;
    }
}

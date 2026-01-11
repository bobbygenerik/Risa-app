package p081;

import java.util.Iterator;
import java.util.NoSuchElementException;
import p386.InterfaceC4615;

/* renamed from: ʿˈ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1717 implements Iterator, InterfaceC4615 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f7015;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f7016;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f7017;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f7018;

    public C1717(int i, int i2, int i3) {
        this.f7016 = i3;
        this.f7018 = i2;
        boolean z = false;
        if (i3 <= 0 ? i >= i2 : i <= i2) {
            z = true;
        }
        this.f7015 = z;
        this.f7017 = z ? i : i2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f7015;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.f7017;
        if (i != this.f7018) {
            this.f7017 = this.f7016 + i;
        } else {
            if (!this.f7015) {
                throw new NoSuchElementException();
            }
            this.f7015 = false;
        }
        return Integer.valueOf(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}

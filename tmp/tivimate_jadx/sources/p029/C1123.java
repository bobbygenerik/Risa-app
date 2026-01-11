package p029;

import java.util.Iterator;
import java.util.NoSuchElementException;
import p386.InterfaceC4615;
import p435.C5151;
import ʽˋ.ـˆ;

/* renamed from: ʼᴵ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1123 implements Iterator, InterfaceC4615 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C1124 f4383;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public Object f4384;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f4385 = -2;

    public C1123(C1124 c1124) {
        this.f4383 = c1124;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f4385 < 0) {
            m3548();
        }
        return this.f4385 == 1;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f4385 < 0) {
            m3548();
        }
        if (this.f4385 == 0) {
            throw new NoSuchElementException();
        }
        Object obj = this.f4384;
        this.f4385 = -1;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m3548() {
        Object obj = this.f4385 == -2 ? ((ـˆ) this.f4383.f4386).ʽ() : C5151.f19425.mo3844(this.f4384);
        this.f4384 = obj;
        this.f4385 = obj == null ? 0 : 1;
    }
}

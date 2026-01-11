package p017;

import java.util.NoSuchElementException;

/* renamed from: ʼʻ.ˋᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0971 extends AbstractC0983 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Object f3930;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f3931;

    public C0971(Object obj) {
        this.f3930 = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f3931;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f3931) {
            throw new NoSuchElementException();
        }
        this.f3931 = true;
        return this.f3930;
    }
}

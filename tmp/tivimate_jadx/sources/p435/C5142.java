package p435;

import java.util.Iterator;
import java.util.NoSuchElementException;
import p386.InterfaceC4615;

/* renamed from: ﹶˑ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5142 implements Iterator, InterfaceC4615 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f19413;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final CharSequence f19414;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f19415;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f19416;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f19417;

    public C5142(CharSequence charSequence) {
        this.f19414 = charSequence;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i;
        int i2;
        int i3 = this.f19416;
        if (i3 != 0) {
            return i3 == 1;
        }
        if (this.f19417 < 0) {
            this.f19416 = 2;
            return false;
        }
        CharSequence charSequence = this.f19414;
        int length = charSequence.length();
        int length2 = charSequence.length();
        for (int i4 = this.f19413; i4 < length2; i4++) {
            char charAt = charSequence.charAt(i4);
            if (charAt == '\n' || charAt == '\r') {
                i = (charAt == '\r' && (i2 = i4 + 1) < charSequence.length() && charSequence.charAt(i2) == '\n') ? 2 : 1;
                length = i4;
                this.f19416 = 1;
                this.f19417 = i;
                this.f19415 = length;
                return true;
            }
        }
        i = -1;
        this.f19416 = 1;
        this.f19417 = i;
        this.f19415 = length;
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f19416 = 0;
        int i = this.f19415;
        int i2 = this.f19413;
        this.f19413 = this.f19417 + i;
        return this.f19414.subSequence(i2, i).toString();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}

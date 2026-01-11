package p052;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: ʽᴵ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1415 implements Iterator {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f5537;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public C1400 f5538;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ C1418 f5539;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C1400 f5540 = null;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f5541;

    public C1415(C1418 c1418, int i) {
        this.f5541 = i;
        this.f5539 = c1418;
        this.f5538 = c1418.f5551.f5482;
        this.f5537 = c1418.f5558;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f5538 != this.f5539.f5551;
    }

    @Override // java.util.Iterator
    public Object next() {
        switch (this.f5541) {
            case 1:
                return m4160().f5484;
            default:
                return m4161();
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        C1400 c1400 = this.f5540;
        if (c1400 == null) {
            throw new IllegalStateException();
        }
        C1418 c1418 = this.f5539;
        c1418.m4168(c1400, true);
        this.f5540 = null;
        this.f5537 = c1418.f5558;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1400 m4160() {
        C1400 c1400 = this.f5538;
        C1418 c1418 = this.f5539;
        if (c1400 == c1418.f5551) {
            throw new NoSuchElementException();
        }
        if (c1418.f5558 != this.f5537) {
            throw new ConcurrentModificationException();
        }
        this.f5538 = c1400.f5482;
        this.f5540 = c1400;
        return c1400;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object m4161() {
        return m4160();
    }
}

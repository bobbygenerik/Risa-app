package p029;

import java.util.Iterator;
import p386.InterfaceC4615;
import p430.AbstractC5106;
import p430.C5105;

/* renamed from: ʼᴵ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1128 implements Iterator, InterfaceC4615 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f4395;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f4396 = 1;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Iterator f4397;

    public C1128(Iterator it) {
        this.f4397 = it;
    }

    public C1128(C1121 c1121) {
        this.f4397 = c1121.f4379.iterator();
        this.f4395 = c1121.f4378;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        Iterator it;
        switch (this.f4396) {
            case 0:
                break;
            default:
                return this.f4397.hasNext();
        }
        while (true) {
            int i = this.f4395;
            it = this.f4397;
            if (i > 0 && it.hasNext()) {
                it.next();
                this.f4395--;
            }
        }
        return it.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        Iterator it;
        switch (this.f4396) {
            case 0:
                break;
            default:
                int i = this.f4395;
                this.f4395 = i + 1;
                if (i >= 0) {
                    return new C5105(i, this.f4397.next());
                }
                AbstractC5106.m10049();
                throw null;
        }
        while (true) {
            int i2 = this.f4395;
            it = this.f4397;
            if (i2 > 0 && it.hasNext()) {
                it.next();
                this.f4395--;
            }
        }
        return it.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f4396) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }
}

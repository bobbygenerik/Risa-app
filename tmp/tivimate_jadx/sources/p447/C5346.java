package p447;

import java.io.IOException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import p450.C5362;

/* renamed from: ﹶﾞ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5346 implements Iterator {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f20355 = 0;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Object f20356;

    public C5346(C5294 c5294) {
        this.f20356 = c5294.f19968.keySet().iterator();
    }

    public C5346(C5362 c5362) {
        this.f20356 = c5362;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f20355) {
            case 0:
                return ((Iterator) this.f20356).hasNext();
            default:
                try {
                    return ((C5362) this.f20356).available() > 0;
                } catch (IOException unused) {
                    return false;
                }
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f20355) {
            case 0:
                return (String) ((Iterator) this.f20356).next();
            default:
                try {
                    return ((C5362) this.f20356).m10758();
                } catch (Exception e) {
                    throw new NoSuchElementException(e.getMessage());
                }
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f20355) {
            case 0:
                throw new UnsupportedOperationException("Remove not supported");
            default:
                throw new UnsupportedOperationException("Remove not supported on ASN.1 InputStream iterator");
        }
    }
}

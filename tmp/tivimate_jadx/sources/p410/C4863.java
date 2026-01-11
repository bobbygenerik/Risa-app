package p410;

import com.hierynomus.protocol.commons.buffer.Buffer$BufferException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import p197.AbstractC2901;
import p197.C2900;
import p197.C2902;

/* renamed from: ﹳˋ.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4863 implements Iterator {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C2902 f18207;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC4870 f18209;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f18206 = 0;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public AbstractC4879 f18208 = m9672();

    /* JADX WARN: Type inference failed for: r0v0, types: [ˎʿ.ﹳٴ, ˎʿ.ⁱˊ] */
    public C4863(byte[] bArr, InterfaceC4870 interfaceC4870) {
        this.f18207 = new AbstractC2901(bArr, true, C2900.f10933);
        this.f18209 = interfaceC4870;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f18208 != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        AbstractC4879 abstractC4879 = this.f18208;
        if (abstractC4879 == null) {
            throw new NoSuchElementException();
        }
        this.f18208 = m9672();
        return abstractC4879;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC4879 m9672() {
        AbstractC4879 abstractC4879 = null;
        while (abstractC4879 == null) {
            try {
                int i = this.f18206;
                if (i == -1) {
                    break;
                }
                C2902 c2902 = this.f18207;
                c2902.f10937 = i;
                abstractC4879 = (AbstractC4879) this.f18209.mo9673(c2902);
                int i2 = (int) abstractC4879.f18221;
                if (i2 == 0) {
                    this.f18206 = -1;
                } else {
                    this.f18206 += i2;
                }
            } catch (Buffer$BufferException e) {
                throw new RuntimeException(e);
            }
        }
        return abstractC4879;
    }
}

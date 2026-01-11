package androidx.datastore.preferences.protobuf;

import com.google.android.gms.internal.measurement.C0364;
import com.google.android.gms.internal.play_billing.C0585;
import com.google.crypto.tink.shaded.protobuf.C0740;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: androidx.datastore.preferences.protobuf.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0018 implements Iterator {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f398;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ Object f400;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f399 = 0;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f401 = 0;

    public C0018(C0054 c0054) {
        this.f400 = c0054;
        this.f398 = c0054.size();
    }

    public C0018(C0364 c0364) {
        this.f400 = c0364;
        this.f398 = c0364.mo1236();
    }

    public C0018(C0585 c0585) {
        this.f400 = c0585;
        this.f398 = c0585.mo2031();
    }

    public C0018(C0740 c0740) {
        this.f400 = c0740;
        this.f398 = c0740.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f399) {
            case 0:
                return this.f401 < this.f398;
            case 1:
                return this.f401 < this.f398;
            case 2:
                return this.f401 < this.f398;
            default:
                return this.f401 < this.f398;
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f399) {
            case 0:
                int i = this.f401;
                if (i >= this.f398) {
                    throw new NoSuchElementException();
                }
                this.f401 = i + 1;
                return Byte.valueOf(((C0054) this.f400).mo356(i));
            case 1:
                int i2 = this.f401;
                if (i2 >= this.f398) {
                    throw new NoSuchElementException();
                }
                this.f401 = i2 + 1;
                return Byte.valueOf(((C0364) this.f400).mo1237(i2));
            case 2:
                int i3 = this.f401;
                if (i3 >= this.f398) {
                    throw new NoSuchElementException();
                }
                this.f401 = i3 + 1;
                return Byte.valueOf(((C0585) this.f400).mo2032(i3));
            default:
                int i4 = this.f401;
                if (i4 >= this.f398) {
                    throw new NoSuchElementException();
                }
                this.f401 = i4 + 1;
                return Byte.valueOf(((C0740) this.f400).mo2656(i4));
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f399) {
            case 0:
                throw new UnsupportedOperationException();
            case 1:
                throw new UnsupportedOperationException();
            case 2:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }
}

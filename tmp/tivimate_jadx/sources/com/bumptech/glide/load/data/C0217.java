package com.bumptech.glide.load.data;

import java.io.FilterInputStream;
import java.io.InputStream;
import p307.AbstractC3740;

/* renamed from: com.bumptech.glide.load.data.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0217 extends FilterInputStream {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final byte[] f1619 = {-1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final int f1620 = 31;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final byte f1621;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f1622;

    public C0217(InputStream inputStream, int i) {
        super(inputStream);
        if (i < -1 || i > 8) {
            throw new IllegalArgumentException(AbstractC3740.m7932(i, "Cannot add invalid orientation: "));
        }
        this.f1621 = (byte) i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        int i;
        int i2 = this.f1622;
        int read = (i2 < 2 || i2 > (i = f1620)) ? super.read() : i2 == i ? this.f1621 : f1619[i2 - 2] & 255;
        if (read != -1) {
            this.f1622++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int i3;
        int i4 = this.f1622;
        int i5 = f1620;
        if (i4 > i5) {
            i3 = super.read(bArr, i, i2);
        } else if (i4 == i5) {
            bArr[i] = this.f1621;
            i3 = 1;
        } else if (i4 < 2) {
            i3 = super.read(bArr, i, 2 - i4);
        } else {
            int min = Math.min(i5 - i4, i2);
            System.arraycopy(f1619, this.f1622 - 2, bArr, i, min);
            i3 = min;
        }
        if (i3 > 0) {
            this.f1622 += i3;
        }
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void reset() {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) {
        long skip = super.skip(j);
        if (skip > 0) {
            this.f1622 = (int) (this.f1622 + skip);
        }
        return skip;
    }
}

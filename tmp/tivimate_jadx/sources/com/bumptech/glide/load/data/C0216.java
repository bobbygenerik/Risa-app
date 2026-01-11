package com.bumptech.glide.load.data;

import java.io.FileOutputStream;
import java.io.OutputStream;
import p257.C3397;

/* renamed from: com.bumptech.glide.load.data.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0216 extends OutputStream {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C3397 f1615;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final FileOutputStream f1616;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f1617;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public byte[] f1618;

    public C0216(FileOutputStream fileOutputStream, C3397 c3397) {
        this.f1616 = fileOutputStream;
        this.f1615 = c3397;
        this.f1618 = (byte[]) c3397.m7293(65536, byte[].class);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        FileOutputStream fileOutputStream = this.f1616;
        try {
            flush();
            fileOutputStream.close();
            byte[] bArr = this.f1618;
            if (bArr != null) {
                this.f1615.m7296(bArr);
                this.f1618 = null;
            }
        } catch (Throwable th) {
            fileOutputStream.close();
            throw th;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
        int i = this.f1617;
        FileOutputStream fileOutputStream = this.f1616;
        if (i > 0) {
            fileOutputStream.write(this.f1618, 0, i);
            this.f1617 = 0;
        }
        fileOutputStream.flush();
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        byte[] bArr = this.f1618;
        int i2 = this.f1617;
        int i3 = i2 + 1;
        this.f1617 = i3;
        bArr[i2] = (byte) i;
        if (i3 != bArr.length || i3 <= 0) {
            return;
        }
        this.f1616.write(bArr, 0, i3);
        this.f1617 = 0;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        int i3 = 0;
        do {
            int i4 = i2 - i3;
            int i5 = i + i3;
            int i6 = this.f1617;
            FileOutputStream fileOutputStream = this.f1616;
            if (i6 == 0 && i4 >= this.f1618.length) {
                fileOutputStream.write(bArr, i5, i4);
                return;
            }
            int min = Math.min(i4, this.f1618.length - i6);
            System.arraycopy(bArr, i5, this.f1618, this.f1617, min);
            int i7 = this.f1617 + min;
            this.f1617 = i7;
            i3 += min;
            byte[] bArr2 = this.f1618;
            if (i7 == bArr2.length && i7 > 0) {
                fileOutputStream.write(bArr2, 0, i7);
                this.f1617 = 0;
            }
        } while (i3 < i2);
    }
}

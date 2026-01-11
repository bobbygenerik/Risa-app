package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: com.google.android.gms.internal.measurement.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0264 implements Iterator {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f1762;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f1763;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f1764 = 0;

    public /* synthetic */ C0264(int i, Object obj) {
        this.f1763 = i;
        this.f1762 = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f1763) {
            case 0:
                return this.f1764 < ((C0467) this.f1762).f2225.length();
            case 1:
                return this.f1764 < ((C0467) this.f1762).f2225.length();
            default:
                return this.f1764 < ((C0316) this.f1762).m1554();
        }
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        switch (this.f1763) {
            case 0:
                String str = ((C0467) this.f1762).f2225;
                int i = this.f1764;
                if (i >= str.length()) {
                    throw new NoSuchElementException();
                }
                this.f1764 = i + 1;
                return new C0467(String.valueOf(i));
            case 1:
                C0467 c0467 = (C0467) this.f1762;
                String str2 = c0467.f2225;
                int i2 = this.f1764;
                if (i2 >= str2.length()) {
                    throw new NoSuchElementException();
                }
                this.f1764 = i2 + 1;
                return new C0467(String.valueOf(c0467.f2225.charAt(i2)));
            default:
                C0316 c0316 = (C0316) this.f1762;
                if (this.f1764 < c0316.m1554()) {
                    int i3 = this.f1764;
                    this.f1764 = i3 + 1;
                    return c0316.m1559(i3);
                }
                int i4 = this.f1764;
                StringBuilder sb = new StringBuilder(String.valueOf(i4).length() + 21);
                sb.append("Out of bounds index: ");
                sb.append(i4);
                throw new NoSuchElementException(sb.toString());
        }
    }
}

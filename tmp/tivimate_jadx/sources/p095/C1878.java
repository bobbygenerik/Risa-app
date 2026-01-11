package p095;

import com.google.android.gms.internal.play_billing.ʽﹳ;
import com.google.android.gms.internal.play_billing.י;
import java.util.Iterator;
import java.util.NoSuchElementException;
import p010.AbstractC0844;
import ﹳי.ʽ;

/* renamed from: ˆʽ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1878 implements Iterator {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final CharSequence f7517;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final AbstractC1886 f7519;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f7520;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ ʽ f7521;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public String f7522;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f7518 = 2;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f7523 = 0;

    public C1878(ʽ r1, ʽﹳ r2, CharSequence charSequence) {
        this.f7521 = r1;
        this.f7519 = (AbstractC1886) r2.ʽʽ;
        this.f7520 = r2.ᴵˊ;
        this.f7517 = charSequence;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        String str;
        AbstractC1886 abstractC1886;
        int i = this.f7518;
        if (i == 4) {
            throw new IllegalStateException();
        }
        int m3018 = AbstractC0844.m3018(i);
        if (m3018 == 0) {
            return true;
        }
        if (m3018 == 2) {
            return false;
        }
        this.f7518 = 4;
        int i2 = this.f7523;
        while (true) {
            int i3 = this.f7523;
            if (i3 == -1) {
                this.f7518 = 3;
                str = null;
                break;
            }
            C1877 c1877 = (C1877) this.f7521.ʾˋ;
            CharSequence charSequence = this.f7517;
            int length = charSequence.length();
            י.ʼˎ(i3, length);
            while (true) {
                if (i3 >= length) {
                    i3 = -1;
                    break;
                }
                if (c1877.mo4814(charSequence.charAt(i3))) {
                    break;
                }
                i3++;
            }
            if (i3 == -1) {
                i3 = charSequence.length();
                this.f7523 = -1;
            } else {
                this.f7523 = i3 + 1;
            }
            int i4 = this.f7523;
            if (i4 == i2) {
                int i5 = i4 + 1;
                this.f7523 = i5;
                if (i5 > charSequence.length()) {
                    this.f7523 = -1;
                }
            } else {
                while (true) {
                    abstractC1886 = this.f7519;
                    if (i2 >= i3 || !abstractC1886.mo4814(charSequence.charAt(i2))) {
                        break;
                    }
                    i2++;
                }
                while (i3 > i2 && abstractC1886.mo4814(charSequence.charAt(i3 - 1))) {
                    i3--;
                }
                int i6 = this.f7520;
                if (i6 == 1) {
                    i3 = charSequence.length();
                    this.f7523 = -1;
                    while (i3 > i2 && abstractC1886.mo4814(charSequence.charAt(i3 - 1))) {
                        i3--;
                    }
                } else {
                    this.f7520 = i6 - 1;
                }
                str = charSequence.subSequence(i2, i3).toString();
            }
        }
        this.f7522 = str;
        if (this.f7518 == 3) {
            return false;
        }
        this.f7518 = 1;
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f7518 = 2;
        String str = this.f7522;
        this.f7522 = null;
        return str;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}

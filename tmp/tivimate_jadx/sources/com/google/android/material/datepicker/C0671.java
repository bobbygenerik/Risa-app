package com.google.android.material.datepicker;

import android.view.View;
import java.util.NoSuchElementException;
import p004.InterfaceC0799;
import p186.C2816;
import p186.InterfaceC2792;
import p305.C3732;
import p349.C4292;

/* renamed from: com.google.android.material.datepicker.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0671 implements InterfaceC2792, InterfaceC0799 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f2738;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f2739;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f2740;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f2741;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public Object f2742;

    @Override // p004.InterfaceC0799
    /* renamed from: ʽ */
    public int mo623() {
        C3732 c3732 = (C3732) this.f2742;
        int i = this.f2741;
        if (i == 8) {
            return c3732.m7874();
        }
        if (i == 16) {
            return c3732.m7895();
        }
        int i2 = this.f2738;
        this.f2738 = i2 + 1;
        if (i2 % 2 != 0) {
            return this.f2740 & 15;
        }
        int m7874 = c3732.m7874();
        this.f2740 = m7874;
        return (m7874 & 240) >> 4;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public long m2404() {
        int i = this.f2738;
        if (i == 0) {
            throw new NoSuchElementException();
        }
        long[] jArr = (long[]) this.f2742;
        int i2 = this.f2739;
        long j = jArr[i2];
        this.f2739 = this.f2740 & (i2 + 1);
        this.f2738 = i - 1;
        return j;
    }

    @Override // p004.InterfaceC0799
    /* renamed from: ⁱˊ */
    public int mo626() {
        return this.f2739;
    }

    @Override // p004.InterfaceC0799
    /* renamed from: ﹳٴ */
    public int mo627() {
        return -1;
    }

    @Override // p186.InterfaceC2792
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public C2816 mo2405(View view, C2816 c2816) {
        View view2 = (View) this.f2742;
        C4292 mo6167 = c2816.f10589.mo6167(519);
        int i = this.f2739;
        if (i >= 0) {
            view2.getLayoutParams().height = i + mo6167.f15890;
            view2.setLayoutParams(view2.getLayoutParams());
        }
        view2.setPadding(this.f2741 + mo6167.f15891, this.f2738 + mo6167.f15890, this.f2740 + mo6167.f15888, view2.getPaddingBottom());
        return c2816;
    }
}

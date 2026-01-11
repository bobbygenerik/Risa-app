package com.google.android.material.datepicker;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import p179.C2688;
import p179.C2723;

/* renamed from: com.google.android.material.datepicker.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0672 extends LinearLayoutManager {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ C0678 f2743;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f2744;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0672(C0678 c0678, int i, int i2) {
        super(i);
        this.f2743 = c0678;
        this.f2744 = i2;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: ˎʾ */
    public final void mo899(C2723 c2723, int[] iArr) {
        int i = this.f2744;
        C0678 c0678 = this.f2743;
        if (i == 0) {
            iArr[0] = c0678.f2767.getWidth();
            iArr[1] = c0678.f2767.getWidth();
        } else {
            iArr[0] = c0678.f2767.getHeight();
            iArr[1] = c0678.f2767.getHeight();
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, p179.AbstractC2669
    /* renamed from: יˉ */
    public final void mo510(RecyclerView recyclerView, int i) {
        C2688 c2688 = new C2688(recyclerView.getContext());
        c2688.f10247 = i;
        mo536(c2688);
    }
}

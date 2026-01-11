package com.google.android.gms.internal.play_billing;

import p137.AbstractC2305;

/* renamed from: com.google.android.gms.internal.play_billing.ⁱʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0633 extends C0593 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final /* synthetic */ C0579 f2469;

    public C0633(C0579 c0579) {
        this.f2469 = c0579;
    }

    @Override // com.google.android.gms.internal.play_billing.C0593
    /* renamed from: ʽ */
    public final String mo2193() {
        C0536 c0536 = (C0536) this.f2469.f2372.get();
        return c0536 == null ? "Completer object has been garbage collected, future will fail soon" : AbstractC2305.m5378("tag=[", String.valueOf(c0536.f2310), "]");
    }
}

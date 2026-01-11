package com.google.android.gms.internal.measurement;

import android.app.Activity;
import p296.AbstractC3659;

/* renamed from: com.google.android.gms.internal.measurement.ﹶᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0506 extends AbstractRunnableC0411 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ Activity f2276;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ C0500 f2277;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f2278;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0506(C0500 c0500, Activity activity, int i) {
        super(c0500.f2263, true);
        this.f2278 = i;
        switch (i) {
            case 1:
                this.f2276 = activity;
                this.f2277 = c0500;
                super(c0500.f2263, true);
                return;
            case 2:
                this.f2276 = activity;
                this.f2277 = c0500;
                super(c0500.f2263, true);
                return;
            case 3:
                this.f2276 = activity;
                this.f2277 = c0500;
                super(c0500.f2263, true);
                return;
            case 4:
                this.f2276 = activity;
                this.f2277 = c0500;
                super(c0500.f2263, true);
                return;
            default:
                this.f2276 = activity;
                this.f2277 = c0500;
                return;
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC0411
    /* renamed from: ﹳٴ */
    public final void mo1203() {
        switch (this.f2278) {
            case 0:
                InterfaceC0460 interfaceC0460 = this.f2277.f2263.f1738;
                AbstractC3659.m7687(interfaceC0460);
                interfaceC0460.onActivityStartedByScionActivityInfo(C0441.m1870(this.f2276), this.f2150);
                return;
            case 1:
                InterfaceC0460 interfaceC04602 = this.f2277.f2263.f1738;
                AbstractC3659.m7687(interfaceC04602);
                interfaceC04602.onActivityResumedByScionActivityInfo(C0441.m1870(this.f2276), this.f2150);
                return;
            case 2:
                InterfaceC0460 interfaceC04603 = this.f2277.f2263.f1738;
                AbstractC3659.m7687(interfaceC04603);
                interfaceC04603.onActivityPausedByScionActivityInfo(C0441.m1870(this.f2276), this.f2150);
                return;
            case 3:
                InterfaceC0460 interfaceC04604 = this.f2277.f2263.f1738;
                AbstractC3659.m7687(interfaceC04604);
                interfaceC04604.onActivityStoppedByScionActivityInfo(C0441.m1870(this.f2276), this.f2150);
                return;
            default:
                InterfaceC0460 interfaceC04605 = this.f2277.f2263.f1738;
                AbstractC3659.m7687(interfaceC04605);
                interfaceC04605.onActivityDestroyedByScionActivityInfo(C0441.m1870(this.f2276), this.f2150);
                return;
        }
    }
}

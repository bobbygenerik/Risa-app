package p098;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import java.util.Collections;
import java.util.Set;
import p296.AbstractC3675;
import p296.C3670;
import p319.C3926;
import p369.InterfaceC4507;
import p370.AbstractC4511;

/* renamed from: ˆˆ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1898 extends AbstractC3675 implements InterfaceC4507 {

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final Set f7600;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final C3670 f7601;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1898(android.content.Context r10, android.os.Looper r11, com.parse.ٴʼ r12, p296.C3670 r13, p409.C4840 r14, p409.C4840 r15) {
        /*
            r9 = this;
            ٴﾞ.ˊʻ r3 = p296.C3673.m7697(r10)
            ᴵˈ.ˑﹳ r4 = p319.C3930.f15206
            p296.AbstractC3659.m7687(r14)
            p296.AbstractC3659.m7687(r15)
            ˊⁱ.ˑﹳ r6 = new ˊⁱ.ˑﹳ
            r0 = 14
            r6.<init>(r0, r14)
            ˉˆ.ʿ r7 = new ˉˆ.ʿ
            r14 = 28
            r7.<init>(r14, r15)
            java.lang.Object r14 = r12.ᴵˊ
            r8 = r14
            java.lang.String r8 = (java.lang.String) r8
            r5 = 270(0x10e, float:3.78E-43)
            r0 = r9
            r1 = r10
            r2 = r11
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            java.lang.Object r10 = r12.ʽʽ
            java.util.Set r10 = (java.util.Set) r10
            java.util.Iterator r11 = r10.iterator()
        L2f:
            boolean r12 = r11.hasNext()
            if (r12 == 0) goto L4a
            java.lang.Object r12 = r11.next()
            com.google.android.gms.common.api.Scope r12 = (com.google.android.gms.common.api.Scope) r12
            boolean r12 = r10.contains(r12)
            if (r12 == 0) goto L42
            goto L2f
        L42:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "Expanding scopes is not permitted, use implied scopes instead"
            r10.<init>(r11)
            throw r10
        L4a:
            r0.f7600 = r10
            r0.f7601 = r13
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p098.C1898.<init>(android.content.Context, android.os.Looper, com.parse.ٴʼ, ٴﾞ.ˉʿ, ﹳˊ.ʼˎ, ﹳˊ.ʼˎ):void");
    }

    @Override // p296.AbstractC3675
    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final String mo4839() {
        return "com.google.android.gms.common.internal.service.IClientTelemetryService";
    }

    @Override // p296.AbstractC3675
    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final IInterface mo4840(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.IClientTelemetryService");
        return queryLocalInterface instanceof C1900 ? (C1900) queryLocalInterface : new C1900(iBinder, "com.google.android.gms.common.internal.service.IClientTelemetryService");
    }

    @Override // p296.AbstractC3675
    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final boolean mo4841() {
        return true;
    }

    @Override // p296.AbstractC3675, p369.InterfaceC4507
    /* renamed from: ˈ, reason: contains not printable characters */
    public final int mo4842() {
        return 203400000;
    }

    @Override // p296.AbstractC3675
    /* renamed from: ˏי, reason: contains not printable characters */
    public final Set mo4843() {
        return this.f7600;
    }

    @Override // p296.AbstractC3675
    /* renamed from: יـ, reason: contains not printable characters */
    public final Bundle mo4844() {
        C3670 c3670 = this.f7601;
        c3670.getClass();
        Bundle bundle = new Bundle();
        String str = c3670.f14357;
        if (str != null) {
            bundle.putString("api", str);
        }
        return bundle;
    }

    @Override // p296.AbstractC3675
    /* renamed from: ـˆ, reason: contains not printable characters */
    public final String mo4845() {
        return "com.google.android.gms.common.telemetry.service.START";
    }

    @Override // p296.AbstractC3675
    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final Account mo4846() {
        return null;
    }

    @Override // p369.InterfaceC4507
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Set mo4847() {
        return m7714() ? this.f7600 : Collections.EMPTY_SET;
    }

    @Override // p296.AbstractC3675
    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final C3926[] mo4848() {
        return AbstractC4511.f16869;
    }
}

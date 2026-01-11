package p048;

import p121.AbstractC2026;
import p164.C2586;
import p164.InterfaceC2592;
import p208.AbstractC2960;
import p208.C2968;
import p435.C5140;

/* renamed from: ʽי.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1377 extends AbstractC2960 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final long f5420;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C2586 f5421;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final String f5422;

    public C1377(String str, long j, C2586 c2586) {
        this.f5422 = str;
        this.f5420 = j;
        this.f5421 = c2586;
    }

    @Override // p208.AbstractC2960
    /* renamed from: ʽ, reason: contains not printable characters */
    public final long mo4066() {
        return this.f5420;
    }

    @Override // p208.AbstractC2960
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final InterfaceC2592 mo4067() {
        return this.f5421;
    }

    @Override // p208.AbstractC2960
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C2968 mo4068() {
        String str = this.f5422;
        if (str == null) {
            return null;
        }
        C5140 c5140 = C2968.f11341;
        try {
            return AbstractC2026.m5063(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }
}

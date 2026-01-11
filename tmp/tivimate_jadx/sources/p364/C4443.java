package p364;

import java.util.Arrays;
import p305.AbstractC3712;

/* renamed from: ᵔⁱ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4443 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f16596;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f16597;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean f16600 = true;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f16599 = 65536;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f16598 = 0;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public C4451[] f16601 = new C4451[100];

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final synchronized void m8984() {
        int max = Math.max(0, AbstractC3712.m7811(this.f16596, this.f16599) - this.f16597);
        int i = this.f16598;
        if (max >= i) {
            return;
        }
        Arrays.fill(this.f16601, max, i, (Object) null);
        this.f16598 = max;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final synchronized void m8985(int i) {
        boolean z = i < this.f16596;
        this.f16596 = i;
        if (z) {
            m8984();
        }
    }
}

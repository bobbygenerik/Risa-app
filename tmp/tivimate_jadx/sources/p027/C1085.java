package p027;

import java.util.Collections;
import java.util.List;
import p051.InterfaceC1390;
import p305.AbstractC3731;

/* renamed from: ʼٴ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1085 implements InterfaceC1390 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final List f4240;

    @Override // p051.InterfaceC1390
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public int mo3438() {
        return 1;
    }

    @Override // p051.InterfaceC1390
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int mo3439(long j) {
        return j < 0 ? 0 : -1;
    }

    @Override // p051.InterfaceC1390
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public List mo3440(long j) {
        return j >= 0 ? this.f4240 : Collections.EMPTY_LIST;
    }

    @Override // p051.InterfaceC1390
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public long mo3441(int i) {
        AbstractC3731.m7849(i == 0);
        return 0L;
    }
}

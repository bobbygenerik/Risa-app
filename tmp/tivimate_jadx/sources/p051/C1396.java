package p051;

import java.util.List;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0966;
import p017.C0982;
import p017.C0999;
import p305.AbstractC3712;
import p305.AbstractC3731;
import ʻʿ.ᵔﹳ;

/* renamed from: ʽᐧ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1396 implements InterfaceC1390 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final C0999 f5471 = new C0999(new ᵔﹳ(26), C0966.f3922);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final AbstractC0993 f5472;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final long[] f5473;

    /* JADX WARN: Removed duplicated region for block: B:45:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0111 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1396(p017.C0956 r19) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p051.C1396.<init>(ʼʻ.ʿᵢ):void");
    }

    @Override // p051.InterfaceC1390
    /* renamed from: ᵔʾ */
    public final int mo3438() {
        return this.f5472.size();
    }

    @Override // p051.InterfaceC1390
    /* renamed from: ﹳٴ */
    public final int mo3439(long j) {
        int m7808 = AbstractC3712.m7808(this.f5473, j, false);
        if (m7808 < this.f5472.size()) {
            return m7808;
        }
        return -1;
    }

    @Override // p051.InterfaceC1390
    /* renamed from: ﾞʻ */
    public final List mo3440(long j) {
        int m7783 = AbstractC3712.m7783(this.f5473, j, false);
        if (m7783 != -1) {
            return (AbstractC0993) this.f5472.get(m7783);
        }
        C0982 c0982 = AbstractC0993.f3977;
        return C0956.f3901;
    }

    @Override // p051.InterfaceC1390
    /* renamed from: ﾞᴵ */
    public final long mo3441(int i) {
        AbstractC3731.m7849(i < this.f5472.size());
        return this.f5473[i];
    }
}

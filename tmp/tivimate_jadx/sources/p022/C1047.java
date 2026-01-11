package p022;

import java.io.InputStream;
import p171.InterfaceC2622;
import p305.AbstractC3731;
import p305.C3732;
import p461.C5416;

/* renamed from: ʼˊ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1047 implements InterfaceC1042, InterfaceC1037 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f4127;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public long f4128;

    public C1047(int i, long j) {
        AbstractC3731.m7849(j >= 0);
        this.f4127 = i;
        this.f4128 = j;
    }

    public /* synthetic */ C1047(long j, boolean z, int i) {
        this.f4127 = i;
        this.f4128 = j;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static C1047 m3385(InterfaceC2622 interfaceC2622, C3732 c3732) {
        interfaceC2622.mo4576(c3732.f14534, 0, 8);
        c3732.m7896(0);
        int m7893 = c3732.m7893();
        return new C1047(c3732.m7876(), false, m7893);
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [ﾞᵢ.ʽ, java.lang.Object] */
    @Override // p022.InterfaceC1042
    /* renamed from: ʽ */
    public InputStream mo3381(InputStream inputStream, C1048 c1048) {
        C5416 c5416;
        int i = this.f4127;
        long j = this.f4128;
        if (j == 4) {
            ?? obj = new Object();
            obj.f20681 = 0;
            obj.f20682 = i + 5;
            c5416 = obj;
        } else if (j == 5) {
            C5416 c54162 = new C5416(4);
            c54162.f20684 = i;
            c5416 = c54162;
        } else if (j == 6) {
            C5416 c54163 = new C5416(0);
            c54163.f20684 = i;
            c5416 = c54163;
        } else if (j == 7) {
            C5416 c54164 = new C5416(2);
            c54164.f20684 = i + 8;
            c5416 = c54164;
        } else if (j == 8) {
            C5416 c54165 = new C5416(3);
            c54165.f20684 = i + 4;
            c5416 = c54165;
        } else if (j == 9) {
            C5416 c54166 = new C5416(6);
            c54166.f20684 = i;
            c5416 = c54166;
        } else if (j == 10) {
            C5416 c54167 = new C5416(1);
            c54167.f20684 = i;
            c5416 = c54167;
        } else if (j == 11) {
            C5416 c54168 = new C5416(5);
            c54168.f20684 = i;
            c5416 = c54168;
        } else {
            c5416 = null;
        }
        return new C1044(inputStream, c5416);
    }

    @Override // p022.InterfaceC1042
    /* renamed from: ˈ */
    public int mo3382() {
        int i = C1044.f4108;
        return 5;
    }

    @Override // p022.InterfaceC1037
    /* renamed from: ˑﹳ */
    public boolean mo3372() {
        return true;
    }

    @Override // p022.InterfaceC1037
    /* renamed from: ⁱˊ */
    public boolean mo3373() {
        return false;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public boolean m3386() {
        int i = this.f4127;
        return i == 0 || i == 1;
    }

    @Override // p022.InterfaceC1037
    /* renamed from: ﾞᴵ */
    public boolean mo3374() {
        return false;
    }
}

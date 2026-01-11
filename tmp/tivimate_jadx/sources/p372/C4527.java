package p372;

import com.google.android.gms.internal.play_billing.ʽﹳ;
import p262.C3433;
import p420.C4976;
import p420.InterfaceC4956;
import p421.C4996;

/* renamed from: ᵢˋ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4527 implements InterfaceC4956 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f16949;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C4523 f16950;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public boolean f16951;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C4976 f16952;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ C4523 f16953;

    public C4527(C4523 c4523, C4523 c45232, C4976 c4976, int i) {
        this.f16953 = c4523;
        this.f16950 = c45232;
        this.f16952 = c4976;
        this.f16949 = i;
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ʽ */
    public final void mo3459() {
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ᵔᵢ */
    public final int mo3472(C3433 c3433, C4996 c4996, int i) {
        C4523 c4523 = this.f16953;
        if (c4523.m9098()) {
            return -3;
        }
        AbstractC4525 abstractC4525 = c4523.f16923;
        C4976 c4976 = this.f16952;
        if (abstractC4525 != null && abstractC4525.m9100(this.f16949 + 1) <= c4976.m9818()) {
            return -3;
        }
        m9101();
        return c4976.m9808(c3433, c4996, i, c4523.f16919);
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ᵔﹳ */
    public final int mo3473(long j) {
        C4523 c4523 = this.f16953;
        if (c4523.m9098()) {
            return 0;
        }
        boolean z = c4523.f16919;
        C4976 c4976 = this.f16952;
        int m9804 = c4976.m9804(z, j);
        AbstractC4525 abstractC4525 = c4523.f16923;
        if (abstractC4525 != null) {
            m9804 = Math.min(m9804, abstractC4525.m9100(this.f16949 + 1) - c4976.m9818());
        }
        c4976.m9825(m9804);
        if (m9804 > 0) {
            m9101();
        }
        return m9804;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m9101() {
        if (this.f16951) {
            return;
        }
        C4523 c4523 = this.f16953;
        ʽﹳ r1 = c4523.f16932;
        int[] iArr = c4523.f16933;
        int i = this.f16949;
        r1.ٴﹶ(iArr[i], c4523.f16917[i], 0, (Object) null, c4523.f16930);
        this.f16951 = true;
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ﹳٴ */
    public final boolean mo3475() {
        C4523 c4523 = this.f16953;
        return !c4523.m9098() && this.f16952.m9811(c4523.f16919);
    }
}

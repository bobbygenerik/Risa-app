package p036;

import androidx.lifecycle.C0184;
import androidx.lifecycle.EnumC0174;
import androidx.lifecycle.InterfaceC0162;
import androidx.lifecycle.InterfaceC0183;
import p229.C3131;
import p430.C5109;
import ʼﾞ.ᴵᵔ;

/* renamed from: ʽ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1261 implements InterfaceC0183, InterfaceC1253 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public C1259 f4887;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C0184 f4888;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ C1254 f4889;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C3131 f4890;

    public C1261(C1254 c1254, C0184 c0184, C3131 c3131) {
        this.f4889 = c1254;
        this.f4888 = c0184;
        this.f4890 = c3131;
        c0184.m714(this);
    }

    @Override // p036.InterfaceC1253
    public final void cancel() {
        this.f4888.m715(this);
        this.f4890.f11964.remove(this);
        C1259 c1259 = this.f4887;
        if (c1259 != null) {
            c1259.cancel();
        }
        this.f4887 = null;
    }

    @Override // androidx.lifecycle.InterfaceC0183
    /* renamed from: ᵎﹶ */
    public final void mo679(InterfaceC0162 interfaceC0162, EnumC0174 enumC0174) {
        if (enumC0174 == EnumC0174.ON_START) {
            C1254 c1254 = this.f4889;
            C5109 c5109 = c1254.f4870;
            C3131 c3131 = this.f4890;
            c5109.addLast(c3131);
            C1259 c1259 = new C1259(c1254, c3131);
            c3131.f11964.add(c1259);
            c1254.m3840();
            c3131.f11962 = new ᴵᵔ(0, c1254, C1254.class, "updateEnabledCallbacks", "updateEnabledCallbacks()V", 0, 0, 2);
            this.f4887 = c1259;
            return;
        }
        if (enumC0174 != EnumC0174.ON_STOP) {
            if (enumC0174 == EnumC0174.ON_DESTROY) {
                cancel();
            }
        } else {
            C1259 c12592 = this.f4887;
            if (c12592 != null) {
                c12592.cancel();
            }
        }
    }
}

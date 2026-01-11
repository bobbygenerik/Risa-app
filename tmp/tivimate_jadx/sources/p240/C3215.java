package p240;

import p013.C0907;
import p255.C3359;
import p329.InterfaceC4106;
import p417.InterfaceC4932;

/* renamed from: ˑᵎ.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C3215 implements InterfaceC4106 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC4932 f12271;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f12272;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C3216 f12273;

    public /* synthetic */ C3215(C3216 c3216, InterfaceC4932 interfaceC4932, int i) {
        this.f12272 = i;
        this.f12273 = c3216;
        this.f12271 = interfaceC4932;
    }

    @Override // p329.InterfaceC4106
    /* renamed from: ⁱˊ */
    public final Object mo3844(Object obj) {
        switch (this.f12272) {
            case 0:
                this.f12273.m7055(this.f12271, (C3359) obj);
                break;
            default:
                this.f12273.m7054(this.f12271, (C3359) obj);
                break;
        }
        return C0907.f3832;
    }
}

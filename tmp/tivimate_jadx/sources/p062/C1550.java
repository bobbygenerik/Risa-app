package p062;

import android.content.Context;
import p075.C1652;
import p126.InterfaceC2139;
import p336.C4214;
import p343.InterfaceC4267;
import p462.InterfaceC5417;
import p462.InterfaceC5418;

/* renamed from: ʾˈ.ˈٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1550 implements InterfaceC5418 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C1652 f6084;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f6085 = 0;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC4267 f6086;

    public C1550(C1652 c1652, InterfaceC5417 interfaceC5417) {
        this.f6084 = c1652;
        this.f6086 = interfaceC5417;
    }

    public C1550(InterfaceC5417 interfaceC5417, C1652 c1652) {
        this.f6086 = interfaceC5417;
        this.f6084 = c1652;
    }

    @Override // p343.InterfaceC4267
    public final Object get() {
        switch (this.f6085) {
            case 0:
                return new C1539((Context) this.f6084.f6699, (C1591) this.f6086.get());
            default:
                return new C4214((C1587) this.f6086.get(), (InterfaceC2139) this.f6084.f6699);
        }
    }
}

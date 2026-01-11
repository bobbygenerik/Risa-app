package p023;

import p035.InterfaceC1206;
import p159.C2543;
import p316.AbstractC3902;
import p329.InterfaceC4106;
import p417.InterfaceC4932;

/* renamed from: ʼˋ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1068 implements InterfaceC1056, InterfaceC1206 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f4214;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f4215;

    public /* synthetic */ C1068(int i, Object obj) {
        this.f4215 = i;
        this.f4214 = obj;
    }

    @Override // p023.InterfaceC1056
    /* renamed from: ⁱˊ */
    public final InterfaceC4932 mo3398() {
        switch (this.f4215) {
            case 0:
                return ((C1064) this.f4214).f4201;
            default:
                return ((C2543) this.f4214).f9643;
        }
    }

    @Override // p035.InterfaceC1206
    /* renamed from: ﹳٴ */
    public final Object mo3409(String str, InterfaceC4106 interfaceC4106, AbstractC3902 abstractC3902) {
        switch (this.f4215) {
            case 0:
                return ((C1064) this.f4214).mo3409(str, interfaceC4106, abstractC3902);
            default:
                return ((C2543) this.f4214).mo3409(str, interfaceC4106, abstractC3902);
        }
    }
}

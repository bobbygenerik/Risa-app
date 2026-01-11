package p396;

import p013.C0907;
import p121.AbstractC2026;
import p126.InterfaceC2136;
import p152.AbstractC2444;
import p316.AbstractC3906;
import p329.InterfaceC4102;
import p340.InterfaceC4256;
import p373.EnumC4532;

/* renamed from: ⁱᵎ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4741 extends AbstractC3906 implements InterfaceC4102 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public /* synthetic */ InterfaceC4256 f17898;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public /* synthetic */ Object[] f17899;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f17900;

    /* JADX WARN: Type inference failed for: r0v0, types: [ⁱᵎ.ᵔᵢ, ᴵʾ.ᵔᵢ] */
    @Override // p329.InterfaceC4102
    /* renamed from: ᵎﹶ */
    public final Object mo4346(Object obj, Object obj2, Object obj3) {
        ?? abstractC3906 = new AbstractC3906(3, (InterfaceC2136) obj3);
        abstractC3906.f17898 = (InterfaceC4256) obj;
        abstractC3906.f17899 = (Object[]) obj2;
        return abstractC3906.mo3389(C0907.f3832);
    }

    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    public final Object mo3389(Object obj) {
        AbstractC4737 abstractC4737;
        AbstractC4737 abstractC47372;
        int i = this.f17900;
        if (i == 0) {
            AbstractC2026.m5044(obj);
            InterfaceC4256 interfaceC4256 = this.f17898;
            AbstractC4737[] abstractC4737Arr = (AbstractC4737[]) this.f17899;
            int length = abstractC4737Arr.length;
            int i2 = 0;
            while (true) {
                abstractC4737 = C4743.f17902;
                if (i2 >= length) {
                    abstractC47372 = null;
                    break;
                }
                abstractC47372 = abstractC4737Arr[i2];
                if (!AbstractC2444.m5562(abstractC47372, abstractC4737)) {
                    break;
                }
                i2++;
            }
            if (abstractC47372 != null) {
                abstractC4737 = abstractC47372;
            }
            this.f17900 = 1;
            Object mo3399 = interfaceC4256.mo3399(abstractC4737, this);
            EnumC4532 enumC4532 = EnumC4532.f16960;
            if (mo3399 == enumC4532) {
                return enumC4532;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            AbstractC2026.m5044(obj);
        }
        return C0907.f3832;
    }
}

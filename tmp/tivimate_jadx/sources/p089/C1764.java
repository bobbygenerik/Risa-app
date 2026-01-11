package p089;

import java.util.concurrent.atomic.AtomicInteger;
import p013.C0907;
import p041.C1316;
import p121.AbstractC2026;
import p126.InterfaceC2136;
import p316.AbstractC3906;
import p324.InterfaceC4023;
import p329.InterfaceC4087;
import p340.InterfaceC4254;
import p373.EnumC4532;

/* renamed from: ʿᵔ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1764 extends AbstractC3906 implements InterfaceC4087 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final /* synthetic */ AtomicInteger f7130;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC4254[] f7131;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ int f7132;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f7133;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final /* synthetic */ C1316 f7134;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1764(InterfaceC4254[] interfaceC4254Arr, int i, AtomicInteger atomicInteger, C1316 c1316, InterfaceC2136 interfaceC2136) {
        super(2, interfaceC2136);
        this.f7131 = interfaceC4254Arr;
        this.f7132 = i;
        this.f7130 = atomicInteger;
        this.f7134 = c1316;
    }

    @Override // p329.InterfaceC4087
    /* renamed from: ʼˎ */
    public final Object mo3749(Object obj, Object obj2) {
        return ((C1764) mo3750((InterfaceC4023) obj, (InterfaceC2136) obj2)).mo3389(C0907.f3832);
    }

    @Override // p316.AbstractC3908
    /* renamed from: ˉˆ */
    public final InterfaceC2136 mo3750(Object obj, InterfaceC2136 interfaceC2136) {
        return new C1764(this.f7131, this.f7132, this.f7130, this.f7134, interfaceC2136);
    }

    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    public final Object mo3389(Object obj) {
        int i = this.f7133;
        AtomicInteger atomicInteger = this.f7130;
        C1316 c1316 = this.f7134;
        try {
            if (i == 0) {
                AbstractC2026.m5044(obj);
                InterfaceC4254[] interfaceC4254Arr = this.f7131;
                int i2 = this.f7132;
                InterfaceC4254 interfaceC4254 = interfaceC4254Arr[i2];
                C1772 c1772 = new C1772(c1316, i2);
                this.f7133 = 1;
                Object mo3411 = interfaceC4254.mo3411(c1772, this);
                EnumC4532 enumC4532 = EnumC4532.f16960;
                if (mo3411 == enumC4532) {
                    return enumC4532;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                AbstractC2026.m5044(obj);
            }
            if (atomicInteger.decrementAndGet() == 0) {
                c1316.m3937(null);
            }
            return C0907.f3832;
        } finally {
            if (atomicInteger.decrementAndGet() == 0) {
                c1316.m3937(null);
            }
        }
    }
}

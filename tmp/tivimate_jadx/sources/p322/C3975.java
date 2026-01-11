package p322;

import androidx.work.CoroutineWorker;
import p013.C0907;
import p121.AbstractC2026;
import p126.InterfaceC2136;
import p316.AbstractC3906;
import p324.InterfaceC4023;
import p329.InterfaceC4087;
import p373.EnumC4532;

/* renamed from: ᴵˋ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3975 extends AbstractC3906 implements InterfaceC4087 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f15323;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ CoroutineWorker f15324;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f15325;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3975(CoroutineWorker coroutineWorker, InterfaceC2136 interfaceC2136, int i) {
        super(2, interfaceC2136);
        this.f15325 = i;
        this.f15324 = coroutineWorker;
    }

    @Override // p329.InterfaceC4087
    /* renamed from: ʼˎ */
    public final Object mo3749(Object obj, Object obj2) {
        InterfaceC4023 interfaceC4023 = (InterfaceC4023) obj;
        InterfaceC2136 interfaceC2136 = (InterfaceC2136) obj2;
        switch (this.f15325) {
            case 0:
                return ((C3975) mo3750(interfaceC4023, interfaceC2136)).mo3389(C0907.f3832);
            default:
                return ((C3975) mo3750(interfaceC4023, interfaceC2136)).mo3389(C0907.f3832);
        }
    }

    @Override // p316.AbstractC3908
    /* renamed from: ˉˆ */
    public final InterfaceC2136 mo3750(Object obj, InterfaceC2136 interfaceC2136) {
        switch (this.f15325) {
            case 0:
                return new C3975(this.f15324, interfaceC2136, 0);
            default:
                return new C3975(this.f15324, interfaceC2136, 1);
        }
    }

    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    public final Object mo3389(Object obj) {
        switch (this.f15325) {
            case 0:
                int i = this.f15323;
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    AbstractC2026.m5044(obj);
                    return obj;
                }
                AbstractC2026.m5044(obj);
                this.f15323 = 1;
                Object m1021 = this.f15324.m1021();
                EnumC4532 enumC4532 = EnumC4532.f16960;
                return m1021 == enumC4532 ? enumC4532 : m1021;
            default:
                int i2 = this.f15323;
                if (i2 != 0) {
                    if (i2 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    AbstractC2026.m5044(obj);
                    return obj;
                }
                AbstractC2026.m5044(obj);
                this.f15323 = 1;
                Object mo1019 = this.f15324.mo1019(this);
                EnumC4532 enumC45322 = EnumC4532.f16960;
                return mo1019 == enumC45322 ? enumC45322 : mo1019;
        }
    }
}

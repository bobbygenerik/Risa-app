package p262;

import p013.C0907;
import p121.AbstractC2026;
import p126.InterfaceC2136;
import p316.AbstractC3906;
import p322.C3965;
import p324.AbstractC3999;
import p329.InterfaceC4105;
import p373.EnumC4532;

/* renamed from: ـʾ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3415 extends AbstractC3906 implements InterfaceC4105 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public /* synthetic */ Throwable f13406;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public /* synthetic */ long f13407;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f13408;

    /* JADX WARN: Type inference failed for: r3v2, types: [ـʾ.ʼˎ, ᴵʾ.ᵔᵢ] */
    @Override // p329.InterfaceC4105
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final Object mo7302(Object obj, Object obj2, Object obj3, Object obj4) {
        long longValue = ((Number) obj3).longValue();
        ?? abstractC3906 = new AbstractC3906(4, (InterfaceC2136) obj4);
        abstractC3906.f13406 = (Throwable) obj2;
        abstractC3906.f13407 = longValue;
        return abstractC3906.mo3389(C0907.f3832);
    }

    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    public final Object mo3389(Object obj) {
        int i = this.f13408;
        if (i == 0) {
            AbstractC2026.m5044(obj);
            Throwable th = this.f13406;
            long j = this.f13407;
            C3965.m8127().m8130(AbstractC3428.f13450, "Cannot check for unfinished work", th);
            long min = Math.min(j * 30000, AbstractC3428.f13449);
            this.f13408 = 1;
            Object m8183 = AbstractC3999.m8183(min, this);
            EnumC4532 enumC4532 = EnumC4532.f16960;
            if (m8183 == enumC4532) {
                return enumC4532;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            AbstractC2026.m5044(obj);
        }
        return Boolean.TRUE;
    }
}

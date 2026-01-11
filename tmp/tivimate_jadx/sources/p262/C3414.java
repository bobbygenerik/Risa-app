package p262;

import androidx.lifecycle.C0185;
import androidx.work.impl.WorkerStoppedException;
import com.parse.ٴﹶ;
import java.util.concurrent.CancellationException;
import p013.C0907;
import p121.AbstractC2026;
import p126.InterfaceC2136;
import p316.AbstractC3906;
import p322.C3965;
import p324.AbstractC3999;
import p324.C4011;
import p324.InterfaceC4023;
import p329.InterfaceC4087;
import p373.EnumC4532;

/* renamed from: ـʾ.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3414 extends AbstractC3906 implements InterfaceC4087 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f13403;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ C3419 f13404;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f13405;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3414(C3419 c3419, InterfaceC2136 interfaceC2136, int i) {
        super(2, interfaceC2136);
        this.f13405 = i;
        this.f13404 = c3419;
    }

    @Override // p329.InterfaceC4087
    /* renamed from: ʼˎ */
    public final Object mo3749(Object obj, Object obj2) {
        InterfaceC4023 interfaceC4023 = (InterfaceC4023) obj;
        InterfaceC2136 interfaceC2136 = (InterfaceC2136) obj2;
        switch (this.f13405) {
            case 0:
                return ((C3414) mo3750(interfaceC4023, interfaceC2136)).mo3389(C0907.f3832);
            default:
                return ((C3414) mo3750(interfaceC4023, interfaceC2136)).mo3389(C0907.f3832);
        }
    }

    @Override // p316.AbstractC3908
    /* renamed from: ˉˆ */
    public final InterfaceC2136 mo3750(Object obj, InterfaceC2136 interfaceC2136) {
        switch (this.f13405) {
            case 0:
                return new C3414(this.f13404, interfaceC2136, 0);
            default:
                return new C3414(this.f13404, interfaceC2136, 1);
        }
    }

    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    public final Object mo3389(Object obj) {
        Object c3418;
        switch (this.f13405) {
            case 0:
                int i = this.f13403;
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    AbstractC2026.m5044(obj);
                    return obj;
                }
                AbstractC2026.m5044(obj);
                this.f13403 = 1;
                Object m7311 = C3419.m7311(this.f13404, this);
                EnumC4532 enumC4532 = EnumC4532.f16960;
                return m7311 == enumC4532 ? enumC4532 : m7311;
            default:
                int i2 = this.f13403;
                C3419 c3419 = this.f13404;
                try {
                    if (i2 == 0) {
                        AbstractC2026.m5044(obj);
                        C4011 c4011 = c3419.f13428;
                        C3414 c3414 = new C3414(c3419, null, 0);
                        this.f13403 = 1;
                        obj = AbstractC3999.m8164(c4011, c3414, this);
                        EnumC4532 enumC45322 = EnumC4532.f16960;
                        if (obj == enumC45322) {
                            return enumC45322;
                        }
                    } else {
                        if (i2 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        AbstractC2026.m5044(obj);
                    }
                    c3418 = (AbstractC3420) obj;
                } catch (WorkerStoppedException e) {
                    c3418 = new C3427(e.f1580);
                } catch (CancellationException unused) {
                    c3418 = new C3418();
                } catch (Throwable th) {
                    C3965.m8127().m8130(AbstractC3429.f13451, "Unexpected error in WorkerWrapper", th);
                    c3418 = new C3418();
                }
                return c3419.f13432.m3758(new C0185(12, new ٴﹶ(c3418, 1, c3419)));
        }
    }
}

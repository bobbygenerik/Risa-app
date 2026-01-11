package p090;

import java.io.File;
import java.util.concurrent.CancellationException;
import p013.C0907;
import p041.AbstractC1307;
import p041.C1301;
import p041.C1309;
import p041.C1316;
import p041.InterfaceC1294;
import p041.InterfaceC1305;
import p056.C1502;
import p056.C1505;
import p056.C1508;
import p126.C2134;
import p126.InterfaceC2136;
import p152.AbstractC2444;
import p152.AbstractC2452;
import p324.AbstractC3999;
import p324.C4022;
import p324.C4035;
import p324.C4047;
import p329.InterfaceC4106;
import ʼˋ.ﾞᴵ;
import ˏˆ.ﹳٴ;

/* renamed from: ʿᵢ.ʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1784 extends AbstractC2452 implements InterfaceC4106 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f7210;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ Object f7211;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ int f7212;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1784(Object obj, int i, Object obj2) {
        super(1);
        this.f7212 = i;
        this.f7210 = obj;
        this.f7211 = obj2;
    }

    @Override // p329.InterfaceC4106
    /* renamed from: ⁱˊ */
    public final Object mo3844(Object obj) {
        C0907 c0907;
        C0907 c09072;
        switch (this.f7212) {
            case 0:
                boolean m5562 = AbstractC2444.m5562((String) obj, ((File) this.f7210).getName());
                C0907 c09073 = C0907.f3832;
                if (m5562) {
                    InterfaceC1294 interfaceC1294 = (InterfaceC1305) this.f7211;
                    Object mo3890 = ((AbstractC1307) interfaceC1294).mo3890(c09073);
                    if (mo3890 instanceof C1301) {
                        Object obj2 = ((C1309) AbstractC3999.m8171(C2134.f8324, new ﾞᴵ(interfaceC1294, (InterfaceC2136) null, 8))).f5010;
                    }
                }
                return c09073;
            case 1:
                Throwable th = (Throwable) obj;
                ((C1502) this.f7210).mo3844(th);
                C1316 c1316 = (C1316) ((ﹳٴ) this.f7211).ˈٴ;
                c1316.m3933(th, false);
                do {
                    Object mo3897 = c1316.mo3897();
                    c0907 = null;
                    if (mo3897 instanceof C1301) {
                        mo3897 = null;
                    }
                    c09072 = C0907.f3832;
                    if (mo3897 != null) {
                        C4047 c4047 = ((C1800) mo3897).f7275;
                        Throwable cancellationException = th == null ? new CancellationException("DataStore scope was cancelled before updateData could complete") : th;
                        c4047.getClass();
                        c4047.m8244(new C4022(cancellationException, false));
                        c0907 = c09072;
                    }
                } while (c0907 != null);
                return c09072;
            default:
                Throwable th2 = (Throwable) obj;
                C1508 c1508 = (C1508) this.f7210;
                if (th2 == null) {
                    c1508.m4323(((C4035) this.f7211).m8250());
                } else if (th2 instanceof CancellationException) {
                    c1508.f5967 = true;
                    C1505 c1505 = c1508.f5968;
                    if (c1505 != null && c1505.f5958.cancel(true)) {
                        c1508.f5969 = null;
                        c1508.f5968 = null;
                        c1508.f5966 = null;
                    }
                } else {
                    c1508.m4322(th2);
                }
                return C0907.f3832;
        }
    }
}

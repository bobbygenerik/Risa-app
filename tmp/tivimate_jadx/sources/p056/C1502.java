package p056;

import java.io.File;
import p013.C0906;
import p013.C0907;
import p090.C1789;
import p090.C1791;
import p090.C1818;
import p090.C1826;
import p121.InterfaceFutureC2031;
import p152.AbstractC2452;
import p153.C2469;
import p329.InterfaceC4106;

/* renamed from: ʽﹳ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1502 extends AbstractC2452 implements InterfaceC4106 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f5952;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ int f5953;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1502(int i, Object obj) {
        super(1);
        this.f5953 = i;
        this.f5952 = obj;
    }

    @Override // p329.InterfaceC4106
    /* renamed from: ⁱˊ */
    public final Object mo3844(Object obj) {
        switch (this.f5953) {
            case 0:
                ((InterfaceFutureC2031) this.f5952).cancel(false);
                return C0907.f3832;
            case 1:
                Throwable th = (Throwable) obj;
                C1791 c1791 = (C1791) this.f5952;
                C0906 c0906 = c1791.f7233;
                if (th != null) {
                    c1791.f7238.m3722(new C1789(th));
                }
                if (c0906.m3185()) {
                    ((C1826) c0906.getValue()).close();
                }
                return C0907.f3832;
            default:
                return new C1818(((C2469) this.f5952).f9439, (File) obj);
        }
    }
}

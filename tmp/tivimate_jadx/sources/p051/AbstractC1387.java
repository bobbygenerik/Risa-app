package p051;

import java.util.List;
import p421.AbstractC5001;

/* renamed from: ʽᐧ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1387 extends AbstractC5001 implements InterfaceC1390 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public InterfaceC1390 f5444;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public long f5445;

    @Override // p421.AbstractC5001
    /* renamed from: ˏי */
    public final void mo744() {
        this.f3828 = 0;
        this.f18690 = 0L;
        this.f18691 = 0;
        this.f18692 = false;
        this.f5444 = null;
    }

    @Override // p051.InterfaceC1390
    /* renamed from: ᵔʾ */
    public final int mo3438() {
        InterfaceC1390 interfaceC1390 = this.f5444;
        interfaceC1390.getClass();
        return interfaceC1390.mo3438();
    }

    @Override // p051.InterfaceC1390
    /* renamed from: ﹳٴ */
    public final int mo3439(long j) {
        InterfaceC1390 interfaceC1390 = this.f5444;
        interfaceC1390.getClass();
        return interfaceC1390.mo3439(j - this.f5445);
    }

    @Override // p051.InterfaceC1390
    /* renamed from: ﾞʻ */
    public final List mo3440(long j) {
        InterfaceC1390 interfaceC1390 = this.f5444;
        interfaceC1390.getClass();
        return interfaceC1390.mo3440(j - this.f5445);
    }

    @Override // p051.InterfaceC1390
    /* renamed from: ﾞᴵ */
    public final long mo3441(int i) {
        InterfaceC1390 interfaceC1390 = this.f5444;
        interfaceC1390.getClass();
        return interfaceC1390.mo3441(i) + this.f5445;
    }
}

package p018;

import p072.C1635;
import p072.C1638;

/* renamed from: ʼʼ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1009 extends AbstractC1014 {
    @Override // p018.AbstractC1014
    /* renamed from: ˈ, reason: contains not printable characters */
    public final void mo3303() {
        C1635 c1635 = this.f4015;
        C1638 c1638 = (C1638) c1635;
        int i = c1638.f6640;
        int i2 = c1638.f6639;
        int i3 = c1638.f6638;
        C1023 c1023 = this.f4014;
        if (i3 == 1) {
            if (i != -1) {
                c1023.f4057.add(c1635.f6545.f6525.f4014);
                this.f4015.f6545.f6525.f4014.f4052.add(c1023);
                c1023.f4058 = i;
            } else if (i2 != -1) {
                c1023.f4057.add(c1635.f6545.f6525.f4008);
                this.f4015.f6545.f6525.f4008.f4052.add(c1023);
                c1023.f4058 = -i2;
            } else {
                c1023.f4055 = true;
                c1023.f4057.add(c1635.f6545.f6525.f4008);
                this.f4015.f6545.f6525.f4008.f4052.add(c1023);
            }
            m3304(this.f4015.f6525.f4014);
            m3304(this.f4015.f6525.f4008);
            return;
        }
        if (i != -1) {
            c1023.f4057.add(c1635.f6545.f6542.f4014);
            this.f4015.f6545.f6542.f4014.f4052.add(c1023);
            c1023.f4058 = i;
        } else if (i2 != -1) {
            c1023.f4057.add(c1635.f6545.f6542.f4008);
            this.f4015.f6545.f6542.f4008.f4052.add(c1023);
            c1023.f4058 = -i2;
        } else {
            c1023.f4055 = true;
            c1023.f4057.add(c1635.f6545.f6542.f4008);
            this.f4015.f6545.f6542.f4008.f4052.add(c1023);
        }
        m3304(this.f4015.f6542.f4014);
        m3304(this.f4015.f6542.f4008);
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m3304(C1023 c1023) {
        C1023 c10232 = this.f4014;
        c10232.f4052.add(c1023);
        c1023.f4057.add(c10232);
    }

    @Override // p018.AbstractC1014
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void mo3305() {
        C1635 c1635 = this.f4015;
        int i = ((C1638) c1635).f6638;
        C1023 c1023 = this.f4014;
        if (i == 1) {
            c1635.f6521 = c1023.f4053;
        } else {
            c1635.f6522 = c1023.f4053;
        }
    }

    @Override // p018.AbstractC1014
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final boolean mo3306() {
        return false;
    }

    @Override // p018.InterfaceC1012
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo3307(InterfaceC1012 interfaceC1012) {
        C1023 c1023 = this.f4014;
        if (c1023.f4048 && !c1023.f4049) {
            c1023.mo3329((int) ((((C1023) c1023.f4057.get(0)).f4053 * ((C1638) this.f4015).f6636) + 0.5f));
        }
    }

    @Override // p018.AbstractC1014
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void mo3308() {
        this.f4014.m3344();
    }
}

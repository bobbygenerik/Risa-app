package p429;

import p130.AbstractC2192;
import p364.C4447;
import p366.C4472;
import p366.C4476;
import p366.C4483;
import p366.C4486;
import ᐧﹳ.ʽ;

/* renamed from: ﹶˆ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5081 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C5081 f19160;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C5081 f19161 = new C5081(new C4486(6));

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC5091 f19162;

    static {
        int i = 7;
        f19160 = new C5081(new C4447(i));
        new C5081(new C4483(i));
        new C5081(new C4486(i));
        int i2 = 6;
        new C5081(new C4483(i2));
        new C5081(new C4476(i2));
        new C5081(new C4472(i2));
    }

    public C5081(InterfaceC5083 interfaceC5083) {
        if (AbstractC2192.m5191()) {
            this.f19162 = new C5089(interfaceC5083, 1);
        } else if ("The Android Project".equals(System.getProperty("java.vendor"))) {
            this.f19162 = new C5089(interfaceC5083, 0);
        } else {
            this.f19162 = new ʽ(19, interfaceC5083);
        }
    }
}

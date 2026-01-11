package p263;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.util.EnumSet;
import p033.C1181;
import p033.C1184;
import p033.EnumC1175;
import p033.EnumC1185;
import p033.EnumC1189;
import p052.C1417;
import p078.AbstractC1679;
import p078.C1668;
import p154.C2488;
import p154.C2489;
import p154.C2493;
import p154.C2497;
import p154.C2504;
import p173.InterfaceC2655;
import p205.C2921;
import p209.C2971;
import p250.C3304;
import p284.EnumC3571;
import p289.C3602;
import p398.AbstractC4747;
import p451.EnumC5364;
import ʽⁱ.ᵎﹶ;

/* renamed from: ـʿ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3440 extends AbstractC4747 implements Closeable {

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public static final EnumSet f13499;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static final EnumSet f13500;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final int f13501;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C1184 f13502;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final int f13503;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C1668 f13504;

    static {
        EnumC3571 enumC3571 = EnumC3571.f13961;
        EnumC3571 enumC35712 = EnumC3571.f13958;
        f13500 = EnumSet.of(enumC3571, enumC35712);
        f13499 = EnumSet.of(enumC3571, enumC35712, EnumC3571.f13959);
        EnumSet.of(enumC3571);
    }

    public C3440(C3304 c3304, C1668 c1668, String str) {
        super(c3304);
        this.f13504 = c1668;
        C3602 c3602 = c3304.f12708;
        this.f13502 = ((C2497) m9484(new C2493((EnumC1175) ((C1417) c3602.f14088.f9920).f5547, c3304.f12707, c1668.f6813.f6685, 3, EnumSet.of(EnumC5364.f20407), null, EnumSet.of(EnumC1185.f4600, EnumC1185.f4597), 4, null, new C2921(c1668.f6806, str)), EnumSet.of(EnumC3571.f13961))).f9515;
        C2971 c2971 = c3602.f14086;
        this.f13503 = Math.min(c2971.f11368, ((C1417) c3602.f14088.f9920).f5548);
        this.f13501 = Math.min(c2971.f11365, ((C1417) c3602.f14088.f9920).f5545);
        Math.min(c2971.f11357, ((C1417) c3602.f14088.f9920).f5546);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        C1668 c1668 = this.f13504;
        C2489 c2489 = new C2489(24, c1668.f6814, EnumC1189.f4616, c1668.f6817, c1668.f6805, 0);
        C1184 c1184 = this.f13502;
        c2489.f9487 = c1184;
        c1668.m4569(c2489, "Close", c1184, AbstractC1679.f6803, c1668.f6815);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final byte[] m7354() {
        C2504 c2504;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(4096);
        do {
            c2504 = (C2504) m9484(new C2488(this.f17907, this.f13502, this.f17906, this.f13504.f6813.f6685, 0L, this.f13501), f13499);
            try {
                byteArrayOutputStream.write(c2504.f9531);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        } while (EnumC3571.m7526(((C1181) ((InterfaceC2655) ((ᵎﹶ) c2504).ʾˋ)).f4580).equals(EnumC3571.f13958));
        return byteArrayOutputStream.toByteArray();
    }
}

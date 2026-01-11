package p078;

import android.support.v4.media.session.AbstractC0001;
import com.hierynomus.protocol.commons.buffer.Buffer$BufferException;
import java.io.Closeable;
import p033.C1184;
import p033.EnumC1175;
import p033.EnumC1189;
import p154.C2489;
import p154.C2490;
import p154.C2495;
import p154.C2502;
import p197.AbstractC2901;
import p197.C2900;
import p410.AbstractC4859;
import p410.C4868;
import p410.InterfaceC4861;
import p410.InterfaceC4870;
import p410.InterfaceC4875;
import p449.AbstractC5359;
import p449.InterfaceC5360;
import ﹳˋ.ʼˎ;

/* renamed from: ʿʼ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1669 implements Closeable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C1184 f6779;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC5360 f6780 = AbstractC5359.m10750(getClass());

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final String f6781;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C1671 f6782;

    public AbstractC1669(C1184 c1184, C1671 c1671, String str) {
        this.f6782 = c1671;
        this.f6779 = c1184;
        this.f6781 = str;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        C1671 c1671 = this.f6782;
        int i = 24;
        C2489 c2489 = new C2489(i, c1671.f6814, EnumC1189.f4616, c1671.f6817, c1671.f6805, 0);
        C1184 c1184 = this.f6779;
        c2489.f9487 = c1184;
        c1671.m4569(c2489, "Close", c1184, AbstractC1679.f6803, c1671.f6815);
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final InterfaceC4875 m4553() {
        C1671 c1671 = this.f6782;
        c1671.getClass();
        InterfaceC4870 m9669 = AbstractC4859.m9669(C4868.class);
        int mo9674 = m9669.mo9674();
        EnumC1175 enumC1175 = c1671.f6814;
        long j = c1671.f6817;
        long j2 = c1671.f6805;
        C1184 c1184 = this.f6779;
        try {
            return (InterfaceC4875) m9669.mo9673(new AbstractC2901(((C2495) c1671.m4569(new C2502(enumC1175, j, j2, c1184, mo9674), "QueryInfo", c1184, InterfaceC1672.f6786, c1671.f6815)).f9508, true, C2900.f10933));
        } catch (Buffer$BufferException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [ˋʼ.ﹳٴ, ˎʿ.ⁱˊ] */
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m4554() {
        C1671 c1671 = this.f6782;
        c1671.getClass();
        ʼˎ r1 = new ʼˎ(0);
        ?? abstractC2901 = new AbstractC2901();
        InterfaceC4861 interfaceC4861 = (InterfaceC4861) AbstractC4859.f18204.get(ʼˎ.class);
        if (interfaceC4861 == 0) {
            throw new IllegalArgumentException(AbstractC0001.m22(ʼˎ.class, "FileInformationClass not supported - "));
        }
        interfaceC4861.mo9670(r1, abstractC2901);
        int mo9671 = interfaceC4861.mo9671();
        byte[] m6420 = abstractC2901.m6420();
        EnumC1175 enumC1175 = c1671.f6814;
        long j = c1671.f6817;
        long j2 = c1671.f6805;
        C1184 c1184 = this.f6779;
        c1671.m4569(new C2490(enumC1175, j, j2, c1184, mo9671, m6420), "SetInfo", c1184, InterfaceC1672.f6786, c1671.f6815);
    }
}

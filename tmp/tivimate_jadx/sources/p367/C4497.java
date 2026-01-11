package p367;

import com.hierynomus.protocol.commons.buffer.Buffer$BufferException;
import com.hierynomus.security.SecurityException;
import com.hierynomus.spnego.SpnegoException;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Random;
import p002.C0769;
import p002.C0773;
import p002.EnumC0770;
import p002.EnumC0774;
import p033.C1184;
import p111.C1957;
import p125.C2131;
import p125.C2133;
import p197.AbstractC2901;
import p197.C2900;
import p207.AbstractC2934;
import p207.AbstractC2936;
import p207.EnumC2933;
import p207.EnumC2935;
import p209.C2971;
import p239.C3208;
import p317.AbstractC3913;
import p317.AbstractC3914;
import p366.C4476;
import p379.C4545;
import p406.C4832;
import p431.C5116;
import p449.AbstractC5359;
import p449.InterfaceC5360;
import p450.C5361;
import p456.InterfaceC5377;
import p456.InterfaceC5378;

/* renamed from: ᵢ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4497 implements InterfaceC4499 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final InterfaceC5360 f16848 = AbstractC5359.m10750(C4497.class);

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final C1957 f16849 = new C1957("1.3.6.1.4.1.311.2.2.10");

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f16850;

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f16851;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public Random f16852;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public InterfaceC5377 f16853;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static byte[] m9065(C0769 c0769) {
        C4832 c4832 = new C4832();
        ((ArrayList) c4832.f18132).add(f16849);
        AbstractC2901 abstractC2901 = new AbstractC2901();
        abstractC2901.m6423("NTLMSSP\u0000", AbstractC3913.f15175);
        abstractC2901.m6419(1L);
        abstractC2901.m6419(c0769.f3177);
        abstractC2901.m6417(0);
        abstractC2901.m6417(0);
        abstractC2901.m6419(0L);
        abstractC2901.m6417(0);
        abstractC2901.m6417(0);
        abstractC2901.m6419(0L);
        c4832.f18131 = abstractC2901.m6420();
        AbstractC2901 abstractC29012 = new AbstractC2901();
        try {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = (ArrayList) c4832.f18132;
            int size = arrayList2.size();
            EnumC2935 enumC2935 = EnumC2935.f11102;
            EnumC2933 enumC2933 = EnumC2933.f11097;
            if (size > 0) {
                arrayList.add(new C2131(AbstractC2936.m6461(enumC2933, 0).m6462(enumC2935), (AbstractC2934) new C2133(new ArrayList(arrayList2)), true));
            }
            byte[] bArr = c4832.f18131;
            if (bArr != null && bArr.length > 0) {
                arrayList.add(new C2131(AbstractC2936.m6461(enumC2933, 2).m6462(enumC2935), (AbstractC2934) new C3208(c4832.f18131), true));
            }
            c4832.mo8660(abstractC29012, new C2133(arrayList));
            return abstractC29012.m6420();
        } catch (IOException e) {
            throw new Exception("Unable to write NegTokenInit", e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [ˎʿ.ﹳٴ, ˎʿ.ⁱˊ] */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static byte[] m9066(C0773 c0773) {
        ?? abstractC2901 = new AbstractC2901();
        c0773.m2800(abstractC2901);
        if (c0773.f3201) {
            byte[] bArr = c0773.f3204;
            abstractC2901.mo6415(bArr.length, bArr);
        }
        byte[] bArr2 = c0773.f3197;
        abstractC2901.mo6415(bArr2.length, bArr2);
        byte[] bArr3 = c0773.f3198;
        abstractC2901.mo6415(bArr3.length, bArr3);
        byte[] bArr4 = c0773.f3200;
        abstractC2901.mo6415(bArr4.length, bArr4);
        byte[] bArr5 = c0773.f3203;
        abstractC2901.mo6415(bArr5.length, bArr5);
        byte[] bArr6 = c0773.f3202;
        abstractC2901.mo6415(bArr6.length, bArr6);
        byte[] bArr7 = c0773.f3199;
        abstractC2901.mo6415(bArr7.length, bArr7);
        byte[] m6420 = abstractC2901.m6420();
        AbstractC2901 abstractC29012 = new AbstractC2901();
        ArrayList arrayList = new ArrayList();
        try {
            int length = m6420.length;
            EnumC2933 enumC2933 = EnumC2933.f11097;
            EnumC2935 enumC2935 = EnumC2935.f11102;
            if (length > 0) {
                arrayList.add(new C2131(AbstractC2936.m6461(enumC2933, 2).m6462(enumC2935), (AbstractC2934) new C3208(m6420), true));
            }
            C2131 c2131 = new C2131(AbstractC2936.m6461(enumC2933, 1).m6462(enumC2935), (AbstractC2934) new C2133(arrayList), true);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            C5361 c5361 = new C5361(new C4476(1), byteArrayOutputStream);
            try {
                c5361.m10757(c2131);
                C4832.m9629(c5361, null);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                abstractC29012.mo6415(byteArray.length, byteArray);
                return abstractC29012.m6420();
            } finally {
            }
        } catch (IOException e) {
            throw new Exception("Could not write NegTokenTarg to buffer", e);
        }
    }

    @Override // p367.InterfaceC4499
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo9067(C2971 c2971) {
        this.f16853 = c2971.f11363;
        this.f16852 = c2971.f11358;
    }

    @Override // p367.InterfaceC4499
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean mo9068(ﹳٴ r2) {
        return r2.getClass().equals(ﹳٴ.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [ʻʽ.ˈ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v7, types: [ˎʿ.ﹳٴ, ˎʿ.ⁱˊ] */
    /* JADX WARN: Type inference failed for: r10v0, types: [ˎʿ.ﹳٴ, ˎʿ.ⁱˊ] */
    /* JADX WARN: Type inference failed for: r8v2, types: [ʻʽ.ʽ, java.lang.Object] */
    @Override // p367.InterfaceC4499
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1184 mo9069(ﹳٴ r26, byte[] bArr) {
        byte[] bArr2;
        try {
            C1184 c1184 = new C1184();
            if (this.f16851) {
                return null;
            }
            boolean z = this.f16850;
            InterfaceC5360 interfaceC5360 = f16848;
            int i = 1;
            if (!z) {
                interfaceC5360.mo4098((String) r26.ᴵˊ, "Initialized Authentication of {} using NTLM");
                ?? obj = new Object();
                obj.f3177 = C0769.f3176;
                this.f16850 = true;
                c1184.f4595 = m9065(obj);
                return c1184;
            }
            interfaceC5360.mo4098(AbstractC3914.m8086(bArr), "Received token: {}");
            Random random = this.f16852;
            InterfaceC5377 interfaceC5377 = this.f16853;
            C5116 c5116 = new C5116(random, interfaceC5377);
            C4832 c4832 = new C4832(i, "NegTokenTarg");
            c4832.m9631(bArr);
            ?? obj2 = new Object();
            HashMap hashMap = new HashMap();
            obj2.f3171 = hashMap;
            try {
                obj2.m2798(new AbstractC2901(c4832.f18131, true, C2900.f10933));
                interfaceC5360.mo4098(obj2.f3175, "Received NTLM challenge from: {}");
                Object obj3 = hashMap.get(EnumC0774.f3208);
                if (obj3 != null) {
                    String.valueOf(obj3);
                }
                byte[] bArr3 = obj2.f3170;
                char[] cArr = (char[]) r26.ˈٴ;
                String str = (String) r26.ᴵˊ;
                String valueOf = String.valueOf(cArr);
                String str2 = (String) r26.ʽʽ;
                byte[] bytes = valueOf == null ? new byte[0] : valueOf.getBytes(C5116.f19218);
                try {
                    InterfaceC5378 mo8996 = interfaceC5377.mo8996();
                    mo8996.update(bytes);
                    byte[] mo9115 = mo8996.mo9115();
                    String upperCase = str.toUpperCase();
                    byte[] m10061 = c5116.m10061(mo9115, upperCase == null ? new byte[0] : upperCase.getBytes(C5116.f19218), str2 == null ? new byte[0] : str2.getBytes(C5116.f19218));
                    byte[] m10062 = c5116.m10062(obj2.f3174);
                    byte[] m100612 = c5116.m10061(m10061, bArr3, m10062);
                    byte[] bArr4 = new byte[m100612.length + m10062.length];
                    System.arraycopy(m100612, 0, bArr4, 0, m100612.length);
                    System.arraycopy(m10062, 0, bArr4, m100612.length, m10062.length);
                    byte[] m100613 = c5116.m10061(m10061, Arrays.copyOfRange(bArr4, 0, 16));
                    EnumSet enumSet = obj2.f3173;
                    if (enumSet.contains(EnumC0770.f3178) && (enumSet.contains(EnumC0770.f3187) || enumSet.contains(EnumC0770.f3183) || enumSet.contains(EnumC0770.f3181))) {
                        byte[] bArr5 = new byte[16];
                        this.f16852.nextBytes(bArr5);
                        try {
                            C4545 mo8995 = interfaceC5377.mo8995();
                            mo8995.m9117(m100613);
                            byte[] bArr6 = new byte[16];
                            try {
                                mo8995.m9118(mo8995.m9116(16, bArr5, bArr6), bArr6);
                                c1184.f4594 = bArr5;
                                bArr2 = bArr6;
                            } catch (SecurityException e) {
                                throw new RuntimeException(e);
                            }
                        } catch (SecurityException e2) {
                            throw new RuntimeException(e2);
                        }
                    } else {
                        c1184.f4594 = m100613;
                        bArr2 = m100613;
                    }
                    this.f16851 = true;
                    Object obj4 = hashMap.get(EnumC0774.f3206);
                    if (!(obj4 instanceof Long) || (((Long) obj4).longValue() & 2) <= 0) {
                        c1184.f4595 = m9066(new C0773(new byte[0], bArr4, str, (String) r26.ʽʽ, bArr2, AbstractC3914.m8088(enumSet), false));
                        return c1184;
                    }
                    C0773 c0773 = new C0773(new byte[0], bArr4, str, (String) r26.ʽʽ, bArr2, AbstractC3914.m8088(enumSet), true);
                    ?? abstractC2901 = new AbstractC2901();
                    byte[] bArr7 = c4832.f18131;
                    abstractC2901.mo6415(bArr7.length, bArr7);
                    byte[] bArr8 = obj2.f3170;
                    abstractC2901.mo6415(bArr8.length, bArr8);
                    c0773.m2800(abstractC2901);
                    c0773.f3204 = c5116.m10061(m100613, abstractC2901.m6420());
                    c1184.f4595 = m9066(c0773);
                    return c1184;
                } catch (SecurityException e3) {
                    throw new RuntimeException(e3);
                }
            } catch (Buffer$BufferException e4) {
                throw new IOException(e4);
            }
        } catch (SpnegoException e5) {
            throw new RuntimeException(e5);
        }
    }
}

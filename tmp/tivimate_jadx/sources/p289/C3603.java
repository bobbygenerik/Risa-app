package p289;

import com.hierynomus.protocol.transport.TransportException;
import p033.AbstractC1179;
import p033.C1181;
import p033.EnumC1175;
import p033.EnumC1189;
import p052.C1417;
import p173.InterfaceC2655;
import p296.AbstractC3659;
import p447.C5257;
import ʽⁱ.ᵎﹶ;

/* renamed from: ٴٴ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3603 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f14094;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f14095;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public long f14096;

    public C3603(C3602 c3602, C3601 c3601, long j) {
        this.f14094 = c3602;
        this.f14095 = c3601;
        this.f14096 = j;
    }

    public C3603(C5257 c5257, String str) {
        this.f14094 = c5257;
        AbstractC3659.m7680(str);
        this.f14095 = str;
        this.f14096 = -1L;
    }

    public C3603(C5257 c5257, String str, long j) {
        this.f14094 = c5257;
        AbstractC3659.m7680(str);
        this.f14095 = str;
        this.f14096 = c5257.m10424("select rowid from raw_events where app_id = ? and timestamp < ? order by rowid desc limit 1", new String[]{str, String.valueOf(j)}, -1L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00de A[DONT_GENERATE] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.List] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List m7567() {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p289.C3603.m7567():java.util.List");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m7568() {
        C3602 c3602 = (C3602) this.f14094;
        EnumC1175 enumC1175 = (EnumC1175) ((C1417) c3602.f14088.f9920).f5547;
        C3601 c3601 = (C3601) this.f14095;
        long j = c3601.f14073;
        long j2 = c3601.f14078;
        AbstractC1179 abstractC1179 = new AbstractC1179(4, enumC1175, EnumC1189.f4626);
        C1181 c1181 = (C1181) ((InterfaceC2655) ((ᵎﹶ) abstractC1179).ʾˋ);
        c1181.f4591 = j;
        if (j2 != 0) {
            c1181.f4584 |= 2;
            c1181.f4585 = j2;
        }
        try {
            c3602.f14081.m6830(Long.valueOf(this.f14096)).m7113(abstractC1179);
        } catch (TransportException unused) {
            C3602.f14079.mo4084(abstractC1179, "Failed to send {}");
        }
    }
}

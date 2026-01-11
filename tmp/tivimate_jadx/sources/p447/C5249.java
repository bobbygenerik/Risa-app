package p447;

import java.math.BigInteger;
import java.util.List;
import java.util.Locale;
import p296.AbstractC3659;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ˆﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5249 extends AbstractC5308 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public String f19776;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public int f19777;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public String f19778;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public String f19779;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public long f19780;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public String f19781;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public String f19782;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public long f19783;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final long f19784;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public String f19785;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f19786;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public List f19787;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final long f19788;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public String f19789;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public String f19790;

    public C5249(C5322 c5322, long j, long j2) {
        super(c5322);
        this.f19783 = 0L;
        this.f19782 = null;
        this.f19788 = j;
        this.f19784 = j2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x02c8  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x025d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0109  */
    /* JADX WARN: Type inference failed for: r21v0 */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* renamed from: ʼᵢ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p447.C5217 m10358(java.lang.String r45) {
        /*
            Method dump skipped, instructions count: 818
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5249.m10358(java.lang.String):ﹶﾞ.ʻᐧ");
    }

    /* renamed from: ˈـ, reason: contains not printable characters */
    public final String m10359() {
        m10252();
        m10526();
        AbstractC3659.m7687(this.f19790);
        return this.f19790;
    }

    @Override // p447.AbstractC5308
    /* renamed from: ˋˊ */
    public final boolean mo10296() {
        return true;
    }

    /* renamed from: יˉ, reason: contains not printable characters */
    public final void m10360() {
        String format;
        m10252();
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        C5313 c5313 = c5322.f20205;
        C5344 c5344 = c5322.f20193;
        C5322.m10560(c5313);
        if (c5313.m10546().m10537(EnumC5341.f20321)) {
            byte[] bArr = new byte[16];
            C5339 c5339 = c5322.f20208;
            C5322.m10560(c5339);
            c5339.m10682().nextBytes(bArr);
            format = String.format(Locale.US, "%032x", new BigInteger(1, bArr));
        } else {
            C5322.m10556(c5344);
            c5344.f20340.m10217("Analytics Storage consent is not granted");
            format = null;
        }
        C5322.m10556(c5344);
        c5344.f20340.m10217("Resetting session stitching token to ".concat(format == null ? "null" : "not null"));
        this.f19778 = format;
        c5322.f20206.getClass();
        this.f19783 = System.currentTimeMillis();
    }

    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public final String m10361() {
        m10526();
        AbstractC3659.m7687(this.f19776);
        return this.f19776;
    }
}

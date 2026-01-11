package p433;

import android.text.TextUtils;
import androidx.media3.common.ParserException;
import com.bumptech.glide.C0229;
import java.math.RoundingMode;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p051.InterfaceC1389;
import p055.AbstractC1464;
import p055.C1468;
import p055.C1490;
import p084.AbstractC1721;
import p084.AbstractC1723;
import p171.C2637;
import p171.C2651;
import p171.InterfaceC2622;
import p171.InterfaceC2632;
import p171.InterfaceC2639;
import p171.InterfaceC2646;
import p305.AbstractC3712;
import p305.C3724;
import p305.C3732;
import p411.AbstractC4892;

/* renamed from: ﹶˎ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5134 implements InterfaceC2632 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final Pattern f19395 = Pattern.compile("LOCAL:([^,]+)");

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final Pattern f19396 = Pattern.compile("MPEGTS:(-?\\d+)");

    /* renamed from: ˈ, reason: contains not printable characters */
    public final InterfaceC1389 f19398;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean f19399;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f19401;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3724 f19402;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f19403;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public InterfaceC2646 f19404;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3732 f19397 = new C3732();

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public byte[] f19400 = new byte[1024];

    public C5134(String str, C3724 c3724, InterfaceC1389 interfaceC1389, boolean z) {
        this.f19403 = str;
        this.f19402 = c3724;
        this.f19398 = interfaceC1389;
        this.f19399 = z;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ʼˎ */
    public final void mo2900(InterfaceC2646 interfaceC2646) {
        if (this.f19399) {
            interfaceC2646 = new C0229(interfaceC2646, this.f19398);
        }
        this.f19404 = interfaceC2646;
        interfaceC2646.mo1133(new C2637(-9223372036854775807L));
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final InterfaceC2639 m10094(long j) {
        InterfaceC2639 mo1138 = this.f19404.mo1138(0, 3);
        C1490 c1490 = new C1490();
        c1490.f5861 = AbstractC1464.m4251("text/vtt");
        c1490.f5859 = this.f19403;
        c1490.f5885 = j;
        AbstractC4892.m9687(c1490, mo1138);
        this.f19404.mo1137();
        return mo1138;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ˈ */
    public final InterfaceC2632 mo2902() {
        return this;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m10095() {
        String m7906;
        C3732 c3732 = new C3732(this.f19400);
        AbstractC1723.m4669(c3732);
        String m79062 = c3732.m7906(StandardCharsets.UTF_8);
        long j = 0;
        long j2 = 0;
        while (true) {
            Matcher matcher = null;
            if (TextUtils.isEmpty(m79062)) {
                while (true) {
                    String m79063 = c3732.m7906(StandardCharsets.UTF_8);
                    if (m79063 == null) {
                        break;
                    }
                    if (AbstractC1723.f7056.matcher(m79063).matches()) {
                        do {
                            m7906 = c3732.m7906(StandardCharsets.UTF_8);
                            if (m7906 != null) {
                            }
                        } while (!m7906.isEmpty());
                    } else {
                        Matcher matcher2 = AbstractC1721.f7038.matcher(m79063);
                        if (matcher2.matches()) {
                            matcher = matcher2;
                            break;
                        }
                    }
                }
                if (matcher == null) {
                    m10094(0L);
                    return;
                }
                String group = matcher.group(1);
                group.getClass();
                long m4668 = AbstractC1723.m4668(group);
                String str = AbstractC3712.f14481;
                long m7831 = this.f19402.m7831(AbstractC3712.m7797((j + m4668) - j2, 90000L, 1000000L, RoundingMode.DOWN) % 8589934592L);
                InterfaceC2639 m10094 = m10094(m7831 - m4668);
                byte[] bArr = this.f19400;
                int i = this.f19401;
                C3732 c37322 = this.f19397;
                c37322.m7897(i, bArr);
                m10094.mo4109(this.f19401, c37322);
                m10094.mo4112(m7831, 1, this.f19401, 0, null);
                return;
            }
            if (m79062.startsWith("X-TIMESTAMP-MAP")) {
                Matcher matcher3 = f19395.matcher(m79062);
                if (!matcher3.find()) {
                    throw ParserException.m741(null, "X-TIMESTAMP-MAP doesn't contain local timestamp: ".concat(m79062));
                }
                Matcher matcher4 = f19396.matcher(m79062);
                if (!matcher4.find()) {
                    throw ParserException.m741(null, "X-TIMESTAMP-MAP doesn't contain media timestamp: ".concat(m79062));
                }
                String group2 = matcher3.group(1);
                group2.getClass();
                j2 = AbstractC1723.m4668(group2);
                String group3 = matcher4.group(1);
                group3.getClass();
                long parseLong = Long.parseLong(group3);
                String str2 = AbstractC3712.f14481;
                j = AbstractC3712.m7797(parseLong, 1000000L, 90000L, RoundingMode.DOWN);
            }
            m79062 = c3732.m7906(StandardCharsets.UTF_8);
        }
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ٴﹶ */
    public final int mo2904(InterfaceC2622 interfaceC2622, C1468 c1468) {
        this.f19404.getClass();
        int length = (int) interfaceC2622.getLength();
        int i = this.f19401;
        byte[] bArr = this.f19400;
        if (i == bArr.length) {
            this.f19400 = Arrays.copyOf(bArr, ((length != -1 ? length : bArr.length) * 3) / 2);
        }
        byte[] bArr2 = this.f19400;
        int i2 = this.f19401;
        int read = interfaceC2622.read(bArr2, i2, bArr2.length - i2);
        if (read != -1) {
            int i3 = this.f19401 + read;
            this.f19401 = i3;
            if (length == -1 || i3 != length) {
                return 0;
            }
        }
        try {
            m10095();
        } catch (ParserException unused) {
        }
        return -1;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ᵎﹶ */
    public final List mo2905() {
        C0982 c0982 = AbstractC0993.f3977;
        return C0956.f3901;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ⁱˊ */
    public final void mo2908(long j, long j2) {
        throw new IllegalStateException();
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﹳٴ */
    public final void mo2909() {
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﾞᴵ */
    public final boolean mo2910(InterfaceC2622 interfaceC2622) {
        C2651 c2651 = (C2651) interfaceC2622;
        c2651.mo4572(this.f19400, 0, 6, false);
        byte[] bArr = this.f19400;
        C3732 c3732 = this.f19397;
        c3732.m7897(6, bArr);
        if (AbstractC1723.m4671(c3732)) {
            return true;
        }
        c2651.mo4572(this.f19400, 6, 3, false);
        c3732.m7897(9, this.f19400);
        return AbstractC1723.m4671(c3732);
    }
}

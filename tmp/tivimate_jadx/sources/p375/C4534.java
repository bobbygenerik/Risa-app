package p375;

import android.support.v4.media.session.AbstractC0001;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p035.AbstractC1220;
import p051.C1393;
import p051.C1397;
import p051.InterfaceC1390;
import p051.InterfaceC1398;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3732;
import p305.InterfaceC3734;
import p388.C4625;
import p411.AbstractC4892;

/* renamed from: ᵢי.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4534 implements InterfaceC1398 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f16963;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C3732 f16964 = new C3732();

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int f16965;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final float f16966;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final int f16967;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final boolean f16968;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final String f16969;

    public C4534(List list) {
        if (list.size() != 1 || (((byte[]) list.get(0)).length != 48 && ((byte[]) list.get(0)).length != 53)) {
            this.f16963 = 0;
            this.f16965 = -1;
            this.f16969 = "sans-serif";
            this.f16968 = false;
            this.f16966 = 0.85f;
            this.f16967 = -1;
            return;
        }
        byte[] bArr = (byte[]) list.get(0);
        this.f16963 = bArr[24];
        this.f16965 = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
        this.f16969 = "Serif".equals(new String(bArr, 43, bArr.length - 43, StandardCharsets.UTF_8)) ? "serif" : "sans-serif";
        int i = bArr[25] * 20;
        this.f16967 = i;
        boolean z = (bArr[0] & 32) != 0;
        this.f16968 = z;
        if (z) {
            this.f16966 = AbstractC3712.m7803(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i, 0.0f, 0.95f);
        } else {
            this.f16966 = 0.85f;
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m9102(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i >>> 8) | ((i & 255) << 24)), i3, i4, i5 | 33);
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static void m9103(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            int i6 = i5 | 33;
            boolean z = (i & 1) != 0;
            boolean z2 = (i & 2) != 0;
            if (z) {
                if (z2) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i3, i4, i6);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i3, i4, i6);
                }
            } else if (z2) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i3, i4, i6);
            }
            boolean z3 = (i & 4) != 0;
            if (z3) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i3, i4, i6);
            }
            if (z3 || z || z2) {
                return;
            }
            spannableStringBuilder.setSpan(new StyleSpan(0), i3, i4, i6);
        }
    }

    @Override // p051.InterfaceC1398
    public final /* synthetic */ void reset() {
    }

    @Override // p051.InterfaceC1398
    /* renamed from: ᵎﹶ */
    public final int mo4116() {
        return 2;
    }

    @Override // p051.InterfaceC1398
    /* renamed from: ⁱˊ */
    public final /* synthetic */ InterfaceC1390 mo4117(byte[] bArr, int i, int i2) {
        return AbstractC1220.m3794(this, bArr, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p051.InterfaceC1398
    /* renamed from: ﹳٴ */
    public final void mo4118(byte[] bArr, int i, int i2, C1393 c1393, InterfaceC3734 interfaceC3734) {
        String m7890;
        int i3;
        int i4;
        C3732 c3732 = this.f16964;
        c3732.m7897(i + i2, bArr);
        c3732.m7896(i);
        int i5 = 1;
        int i6 = 0;
        int i7 = 2;
        AbstractC3731.m7849(c3732.m7904() >= 2);
        int m7895 = c3732.m7895();
        if (m7895 == 0) {
            m7890 = "";
        } else {
            int i8 = c3732.f14533;
            Charset m7892 = c3732.m7892();
            int i9 = m7895 - (c3732.f14533 - i8);
            if (m7892 == null) {
                m7892 = StandardCharsets.UTF_8;
            }
            m7890 = c3732.m7890(i9, m7892);
        }
        if (m7890.isEmpty()) {
            C0982 c0982 = AbstractC0993.f3977;
            interfaceC3734.accept(new C1397(-9223372036854775807L, -9223372036854775807L, C0956.f3901));
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(m7890);
        m9103(spannableStringBuilder, this.f16963, 0, 0, spannableStringBuilder.length(), 16711680);
        m9102(spannableStringBuilder, this.f16965, -1, 0, spannableStringBuilder.length(), 16711680);
        int length = spannableStringBuilder.length();
        String str = this.f16969;
        if (str != "sans-serif") {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), 0, length, 16711713);
        }
        float f = this.f16966;
        while (c3732.m7904() >= 8) {
            int i10 = c3732.f14533;
            int m7893 = c3732.m7893();
            int m78932 = c3732.m7893();
            if (m78932 == 1937013100) {
                AbstractC3731.m7849(c3732.m7904() >= i7 ? i5 : i6);
                int m78952 = c3732.m7895();
                int i11 = i6;
                while (i11 < m78952) {
                    AbstractC3731.m7849(c3732.m7904() >= 12 ? i5 : i6);
                    int m78953 = c3732.m7895();
                    int m78954 = c3732.m7895();
                    c3732.m7900(i7);
                    int i12 = i11;
                    int m7874 = c3732.m7874();
                    c3732.m7900(i5);
                    int m78933 = c3732.m7893();
                    if (m78954 > spannableStringBuilder.length()) {
                        StringBuilder m16 = AbstractC0001.m16(m78954, "Truncating styl end (", ") to cueText.length() (");
                        m16.append(spannableStringBuilder.length());
                        m16.append(").");
                        AbstractC3731.m7850("Tx3gParser", m16.toString());
                        m78954 = spannableStringBuilder.length();
                    }
                    if (m78953 >= m78954) {
                        AbstractC3731.m7850("Tx3gParser", AbstractC4892.m9681("Ignoring styl with start (", m78953, ") >= end (", m78954, ")."));
                        i4 = i12;
                    } else {
                        i4 = i12;
                        int i13 = m78954;
                        m9103(spannableStringBuilder, m7874, this.f16963, m78953, i13, 0);
                        m9102(spannableStringBuilder, m78933, this.f16965, m78953, i13, 0);
                    }
                    i11 = i4 + 1;
                    i5 = 1;
                    i6 = 0;
                    i7 = 2;
                }
                i3 = i7;
            } else if (m78932 == 1952608120 && this.f16968) {
                i3 = 2;
                AbstractC3731.m7849(c3732.m7904() >= 2);
                f = AbstractC3712.m7803(c3732.m7895() / this.f16967, 0.0f, 0.95f);
            } else {
                i3 = 2;
            }
            c3732.m7896(i10 + m7893);
            i7 = i3;
            i5 = 1;
            i6 = 0;
        }
        interfaceC3734.accept(new C1397(-9223372036854775807L, -9223372036854775807L, AbstractC0993.m3260(new C4625(spannableStringBuilder, null, null, null, f, 0, 0, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f, 0))));
    }
}

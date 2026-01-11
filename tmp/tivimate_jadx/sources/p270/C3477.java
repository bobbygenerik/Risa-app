package p270;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p017.AbstractC0993;
import p035.AbstractC1220;
import p051.C1393;
import p051.C1397;
import p051.InterfaceC1390;
import p051.InterfaceC1398;
import p305.AbstractC3731;
import p305.C3732;
import p305.InterfaceC3734;

/* renamed from: ـˑ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3477 implements InterfaceC1398 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final Pattern f13649 = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*");

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final Pattern f13650 = Pattern.compile("\\{\\\\.*?\\}");

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final StringBuilder f13652 = new StringBuilder();

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ArrayList f13653 = new ArrayList();

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C3732 f13651 = new C3732();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0070, code lost:
    
        r1 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x008c, code lost:
    
        if (r22.equals("{\\an9}") != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x009c, code lost:
    
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0093, code lost:
    
        if (r22.equals("{\\an8}") != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x009a, code lost:
    
        if (r22.equals("{\\an7}") != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00b1, code lost:
    
        if (r22.equals("{\\an3}") != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00c1, code lost:
    
        r3 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b8, code lost:
    
        if (r22.equals("{\\an2}") != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00bf, code lost:
    
        if (r22.equals("{\\an1}") != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0054, code lost:
    
        if (r22.equals("{\\an7}") != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x007d, code lost:
    
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x005b, code lost:
    
        if (r22.equals("{\\an6}") != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0067, code lost:
    
        if (r22.equals("{\\an4}") != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x006e, code lost:
    
        if (r22.equals("{\\an3}") != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x007b, code lost:
    
        if (r22.equals("{\\an1}") != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0048, code lost:
    
        if (r22.equals("{\\an9}") != false) goto L25;
     */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p388.C4625 m7398(android.text.Spanned r21, java.lang.String r22) {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p270.C3477.m7398(android.text.Spanned, java.lang.String):ⁱˉ.ⁱˊ");
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static long m7399(Matcher matcher, int i) {
        String group = matcher.group(i + 1);
        long parseLong = group != null ? Long.parseLong(group) * 3600000 : 0L;
        String group2 = matcher.group(i + 2);
        group2.getClass();
        long parseLong2 = (Long.parseLong(group2) * 60000) + parseLong;
        String group3 = matcher.group(i + 3);
        group3.getClass();
        long parseLong3 = (Long.parseLong(group3) * 1000) + parseLong2;
        String group4 = matcher.group(i + 4);
        if (group4 != null) {
            parseLong3 += Long.parseLong(group4);
        }
        return parseLong3 * 1000;
    }

    @Override // p051.InterfaceC1398
    public final /* synthetic */ void reset() {
    }

    @Override // p051.InterfaceC1398
    /* renamed from: ᵎﹶ */
    public final int mo4116() {
        return 1;
    }

    @Override // p051.InterfaceC1398
    /* renamed from: ⁱˊ */
    public final /* synthetic */ InterfaceC1390 mo4117(byte[] bArr, int i, int i2) {
        return AbstractC1220.m3794(this, bArr, i2);
    }

    @Override // p051.InterfaceC1398
    /* renamed from: ﹳٴ */
    public final void mo4118(byte[] bArr, int i, int i2, C1393 c1393, InterfaceC3734 interfaceC3734) {
        String m7906;
        String str;
        C3477 c3477 = this;
        long j = c1393.f5459;
        C3732 c3732 = c3477.f13651;
        c3732.m7897(i + i2, bArr);
        c3732.m7896(i);
        Charset m7892 = c3732.m7892();
        if (m7892 == null) {
            m7892 = StandardCharsets.UTF_8;
        }
        long j2 = -9223372036854775807L;
        ArrayList arrayList = (j == -9223372036854775807L || !c1393.f5458) ? null : new ArrayList();
        while (true) {
            String m79062 = c3732.m7906(m7892);
            if (m79062 == null) {
                break;
            }
            if (!m79062.isEmpty()) {
                try {
                    Integer.parseInt(m79062);
                    m7906 = c3732.m7906(m7892);
                } catch (NumberFormatException unused) {
                    AbstractC3731.m7850("SubripParser", "Skipping invalid index: ".concat(m79062));
                }
                if (m7906 == null) {
                    AbstractC3731.m7850("SubripParser", "Unexpected end");
                    break;
                }
                Matcher matcher = f13649.matcher(m7906);
                if (matcher.matches()) {
                    long m7399 = m7399(matcher, 1);
                    long m73992 = m7399(matcher, 6);
                    StringBuilder sb = c3477.f13652;
                    sb.setLength(0);
                    long j3 = j2;
                    ArrayList arrayList2 = c3477.f13653;
                    arrayList2.clear();
                    for (String m79063 = c3732.m7906(m7892); !TextUtils.isEmpty(m79063); m79063 = c3732.m7906(m7892)) {
                        if (sb.length() > 0) {
                            sb.append("<br>");
                        }
                        String trim = m79063.trim();
                        StringBuilder sb2 = new StringBuilder(trim);
                        Matcher matcher2 = f13650.matcher(trim);
                        int i3 = 0;
                        while (matcher2.find()) {
                            String group = matcher2.group();
                            arrayList2.add(group);
                            int start = matcher2.start() - i3;
                            int length = group.length();
                            sb2.replace(start, start + length, "");
                            i3 += length;
                            j = j;
                        }
                        sb.append(sb2.toString());
                    }
                    long j4 = j;
                    Spanned fromHtml = Html.fromHtml(sb.toString());
                    int i4 = 0;
                    while (true) {
                        if (i4 >= arrayList2.size()) {
                            str = null;
                            break;
                        }
                        str = (String) arrayList2.get(i4);
                        if (str.matches("\\{\\\\an[1-9]\\}")) {
                            break;
                        } else {
                            i4++;
                        }
                    }
                    if (j4 == j3 || m73992 >= j4) {
                        interfaceC3734.accept(new C1397(m7399, m73992 - m7399, AbstractC0993.m3260(m7398(fromHtml, str))));
                    } else if (arrayList != null) {
                        arrayList.add(new C1397(m7399, m73992 - m7399, AbstractC0993.m3260(m7398(fromHtml, str))));
                    }
                    c3477 = this;
                    j2 = j3;
                    j = j4;
                } else {
                    AbstractC3731.m7850("SubripParser", "Skipping invalid timing: ".concat(m7906));
                    c3477 = this;
                }
            }
        }
        if (arrayList != null) {
            int size = arrayList.size();
            int i5 = 0;
            while (i5 < size) {
                Object obj = arrayList.get(i5);
                i5++;
                interfaceC3734.accept((C1397) obj);
            }
        }
    }
}

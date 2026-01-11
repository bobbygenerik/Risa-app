package p306;

import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p035.AbstractC1220;
import p051.InterfaceC1390;
import p051.InterfaceC1398;
import p206.C2927;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3732;

/* renamed from: ᐧˏ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3738 implements InterfaceC1398 {

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final Pattern f14564 = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final boolean f14566;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public LinkedHashMap f14567;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C2927 f14569;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public float f14570 = -3.4028235E38f;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public float f14568 = -3.4028235E38f;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C3732 f14565 = new C3732();

    public C3738(List list) {
        if (list == null || list.isEmpty()) {
            this.f14566 = false;
            this.f14569 = null;
            return;
        }
        this.f14566 = true;
        String m7804 = AbstractC3712.m7804((byte[]) list.get(0));
        AbstractC3731.m7849(m7804.startsWith("Format:"));
        C2927 m6457 = C2927.m6457(m7804);
        m6457.getClass();
        this.f14569 = m6457;
        m7914(new C3732((byte[]) list.get(1)), StandardCharsets.UTF_8);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static int m7912(long j, ArrayList arrayList, ArrayList arrayList2) {
        int i;
        int size = arrayList.size() - 1;
        while (true) {
            if (size < 0) {
                i = 0;
                break;
            }
            if (((Long) arrayList.get(size)).longValue() == j) {
                return size;
            }
            if (((Long) arrayList.get(size)).longValue() < j) {
                i = size + 1;
                break;
            }
            size--;
        }
        arrayList.add(i, Long.valueOf(j));
        arrayList2.add(i, i == 0 ? new ArrayList() : new ArrayList((Collection) arrayList2.get(i - 1)));
        return i;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static long m7913(String str) {
        Matcher matcher = f14564.matcher(str.trim());
        if (!matcher.matches()) {
            return -9223372036854775807L;
        }
        String group = matcher.group(1);
        String str2 = AbstractC3712.f14481;
        return (Long.parseLong(matcher.group(4)) * 10000) + (Long.parseLong(matcher.group(3)) * 1000000) + (Long.parseLong(matcher.group(2)) * 60000000) + (Long.parseLong(group) * 3600000000L);
    }

    @Override // p051.InterfaceC1398
    public final /* synthetic */ void reset() {
    }

    /* JADX WARN: Removed duplicated region for block: B:185:0x001b  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x02e8  */
    /* renamed from: ˈ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7914(p305.C3732 r39, java.nio.charset.Charset r40) {
        /*
            Method dump skipped, instructions count: 850
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p306.C3738.m7914(ᐧˎ.ﹳᐧ, java.nio.charset.Charset):void");
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

    /* JADX WARN: Failed to find 'out' block for switch in B:104:0x0274. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:97:0x0251. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00cc  */
    @Override // p051.InterfaceC1398
    /* renamed from: ﹳٴ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo4118(byte[] r44, int r45, int r46, p051.C1393 r47, p305.InterfaceC3734 r48) {
        /*
            Method dump skipped, instructions count: 994
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p306.C3738.mo4118(byte[], int, int, ʽᐧ.ٴﹶ, ᐧˎ.ﾞᴵ):void");
    }
}

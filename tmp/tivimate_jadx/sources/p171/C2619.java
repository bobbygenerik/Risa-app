package p171;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p055.C1476;
import p055.InterfaceC1465;
import p094.C1867;
import p094.C1874;
import p305.AbstractC3712;

/* renamed from: ˊﾞ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2619 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final Pattern f9922 = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f9924 = -1;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f9923 = -1;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m5880(C1476 c1476) {
        int i = 0;
        while (true) {
            InterfaceC1465[] interfaceC1465Arr = c1476.f5773;
            if (i >= interfaceC1465Arr.length) {
                return;
            }
            InterfaceC1465 interfaceC1465 = interfaceC1465Arr[i];
            if (interfaceC1465 instanceof C1867) {
                C1867 c1867 = (C1867) interfaceC1465;
                if ("iTunSMPB".equals(c1867.f7494) && m5881(c1867.f7495)) {
                    return;
                }
            } else if (interfaceC1465 instanceof C1874) {
                C1874 c1874 = (C1874) interfaceC1465;
                if ("com.apple.iTunes".equals(c1874.f7510) && "iTunSMPB".equals(c1874.f7508) && m5881(c1874.f7509)) {
                    return;
                }
            } else {
                continue;
            }
            i++;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m5881(String str) {
        Matcher matcher = f9922.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        try {
            String group = matcher.group(1);
            String str2 = AbstractC3712.f14481;
            int parseInt = Integer.parseInt(group, 16);
            int parseInt2 = Integer.parseInt(matcher.group(2), 16);
            if (parseInt <= 0 && parseInt2 <= 0) {
                return false;
            }
            this.f9924 = parseInt;
            this.f9923 = parseInt2;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }
}

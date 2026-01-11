package p364;

import android.content.Context;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import p003.C0776;
import p003.C0779;
import p003.C0789;
import p017.AbstractC0993;
import p017.AbstractC0996;
import p017.AbstractC1004;
import p017.C0956;
import p223.C3056;
import p266.InterfaceC3457;
import p283.RunnableC3568;
import p305.AbstractC3731;
import p305.C3714;
import p305.C3721;
import p305.C3729;
import p404.C4799;
import p420.C4987;
import ˊⁱ.ˑﹳ;

/* renamed from: ᵔⁱ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4446 implements InterfaceC4440, InterfaceC3457 {

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public static C4446 f16610;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public long f16617;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ˑﹳ f16618;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public long f16619;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C3721 f16620;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public long f16621;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public String f16622;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean f16623;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public long f16624;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f16625;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public int f16626;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public long f16627;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final AbstractC0996 f16628;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f16629;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public long f16630;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C4444 f16631;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static final C0956 f16611 = AbstractC0993.m3265(4300000L, 3200000L, 2400000L, 1700000L, 860000L);

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static final C0956 f16615 = AbstractC0993.m3265(1500000L, 980000L, 750000L, 520000L, 290000L);

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static final C0956 f16616 = AbstractC0993.m3265(2000000L, 1300000L, 1000000L, 860000L, 610000L);

    /* renamed from: יـ, reason: contains not printable characters */
    public static final C0956 f16614 = AbstractC0993.m3265(2500000L, 1700000L, 1200000L, 970000L, 680000L);

    /* renamed from: ˏי, reason: contains not printable characters */
    public static final C0956 f16613 = AbstractC0993.m3265(4700000L, 2800000L, 2100000L, 1700000L, 980000L);

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public static final C0956 f16612 = AbstractC0993.m3265(2700000L, 2000000L, 1600000L, 1300000L, 1000000L);

    public C4446(Context context, HashMap hashMap) {
        boolean z;
        C3721 c3721 = C3721.f14496;
        this.f16629 = context == null ? null : context.getApplicationContext();
        this.f16628 = AbstractC0996.m3270(hashMap);
        this.f16618 = new ˑﹳ(28);
        this.f16631 = new C4444();
        this.f16620 = c3721;
        this.f16623 = true;
        if (context == null) {
            this.f16626 = 0;
            this.f16630 = 1000000L;
            return;
        }
        C3729 m7836 = C3729.m7836(context);
        int m7838 = m7836.m7838();
        this.f16626 = m7838;
        this.f16630 = m8989(m7838);
        C4454 c4454 = new C4454(this);
        Executor m7867 = AbstractC3731.m7867();
        CopyOnWriteArrayList copyOnWriteArrayList = m7836.f14522;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            C3714 c3714 = (C3714) it.next();
            if (c3714.f14487.get() == null) {
                copyOnWriteArrayList.remove(c3714);
            }
        }
        C3714 c37142 = new C3714(m7836, c4454, m7867);
        synchronized (m7836.f14519) {
            m7836.f14522.add(c37142);
            z = m7836.f14521;
        }
        if (z) {
            c37142.f14486.execute(new RunnableC3568(2, c37142));
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m8988(int i, long j, long j2) {
        final int i2;
        final long j3;
        final long j4;
        if (i == 0 && j == 0 && j2 == this.f16621) {
            return;
        }
        this.f16621 = j2;
        Iterator it = ((CopyOnWriteArrayList) this.f16618.ᴵˊ).iterator();
        while (it.hasNext()) {
            final C4438 c4438 = (C4438) it.next();
            if (c4438.f16577) {
                i2 = i;
                j3 = j;
                j4 = j2;
            } else {
                i2 = i;
                j3 = j;
                j4 = j2;
                c4438.f16579.post(new Runnable() { // from class: ᵔⁱ.ⁱˊ
                    @Override // java.lang.Runnable
                    public final void run() {
                        C0779 c0779 = C4438.this.f16578;
                        C4799 c4799 = c0779.f3248;
                        C0789 m2859 = c0779.m2859(((AbstractC0993) c4799.f18053).isEmpty() ? null : (C4987) AbstractC1004.m3281((AbstractC0993) c4799.f18053));
                        c0779.m2848(m2859, 1006, new C0776(m2859, i2, j3, j4));
                    }
                });
            }
            i = i2;
            j = j3;
            j2 = j4;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long m8989(int i) {
        int[] iArr;
        long longValue;
        Integer valueOf = Integer.valueOf(i);
        AbstractC0996 abstractC0996 = this.f16628;
        Long l = (Long) abstractC0996.get(valueOf);
        if (l == null) {
            l = (Long) abstractC0996.get(0);
        } else if (l.longValue() == -9223372036854775807L) {
            String str = this.f16622;
            if (str == null) {
                str = "";
            }
            char c = 65535;
            switch (str.hashCode()) {
                case 2083:
                    if (str.equals("AD")) {
                        c = 0;
                        break;
                    }
                    break;
                case 2084:
                    if (str.equals("AE")) {
                        c = 1;
                        break;
                    }
                    break;
                case 2085:
                    if (str.equals("AF")) {
                        c = 2;
                        break;
                    }
                    break;
                case 2086:
                    if (str.equals("AG")) {
                        c = 3;
                        break;
                    }
                    break;
                case 2088:
                    if (str.equals("AI")) {
                        c = 4;
                        break;
                    }
                    break;
                case 2091:
                    if (str.equals("AL")) {
                        c = 5;
                        break;
                    }
                    break;
                case 2092:
                    if (str.equals("AM")) {
                        c = 6;
                        break;
                    }
                    break;
                case 2094:
                    if (str.equals("AO")) {
                        c = 7;
                        break;
                    }
                    break;
                case 2096:
                    if (str.equals("AQ")) {
                        c = '\b';
                        break;
                    }
                    break;
                case 2097:
                    if (str.equals("AR")) {
                        c = '\t';
                        break;
                    }
                    break;
                case 2098:
                    if (str.equals("AS")) {
                        c = '\n';
                        break;
                    }
                    break;
                case 2099:
                    if (str.equals("AT")) {
                        c = 11;
                        break;
                    }
                    break;
                case 2100:
                    if (str.equals("AU")) {
                        c = '\f';
                        break;
                    }
                    break;
                case 2102:
                    if (str.equals("AW")) {
                        c = '\r';
                        break;
                    }
                    break;
                case 2103:
                    if (str.equals("AX")) {
                        c = 14;
                        break;
                    }
                    break;
                case 2105:
                    if (str.equals("AZ")) {
                        c = 15;
                        break;
                    }
                    break;
                case 2111:
                    if (str.equals("BA")) {
                        c = 16;
                        break;
                    }
                    break;
                case 2112:
                    if (str.equals("BB")) {
                        c = 17;
                        break;
                    }
                    break;
                case 2114:
                    if (str.equals("BD")) {
                        c = 18;
                        break;
                    }
                    break;
                case 2115:
                    if (str.equals("BE")) {
                        c = 19;
                        break;
                    }
                    break;
                case 2116:
                    if (str.equals("BF")) {
                        c = 20;
                        break;
                    }
                    break;
                case 2117:
                    if (str.equals("BG")) {
                        c = 21;
                        break;
                    }
                    break;
                case 2118:
                    if (str.equals("BH")) {
                        c = 22;
                        break;
                    }
                    break;
                case 2119:
                    if (str.equals("BI")) {
                        c = 23;
                        break;
                    }
                    break;
                case 2120:
                    if (str.equals("BJ")) {
                        c = 24;
                        break;
                    }
                    break;
                case 2122:
                    if (str.equals("BL")) {
                        c = 25;
                        break;
                    }
                    break;
                case 2123:
                    if (str.equals("BM")) {
                        c = 26;
                        break;
                    }
                    break;
                case 2124:
                    if (str.equals("BN")) {
                        c = 27;
                        break;
                    }
                    break;
                case 2125:
                    if (str.equals("BO")) {
                        c = 28;
                        break;
                    }
                    break;
                case 2127:
                    if (str.equals("BQ")) {
                        c = 29;
                        break;
                    }
                    break;
                case 2128:
                    if (str.equals("BR")) {
                        c = 30;
                        break;
                    }
                    break;
                case 2129:
                    if (str.equals("BS")) {
                        c = 31;
                        break;
                    }
                    break;
                case 2130:
                    if (str.equals("BT")) {
                        c = ' ';
                        break;
                    }
                    break;
                case 2133:
                    if (str.equals("BW")) {
                        c = '!';
                        break;
                    }
                    break;
                case 2135:
                    if (str.equals("BY")) {
                        c = '\"';
                        break;
                    }
                    break;
                case 2136:
                    if (str.equals("BZ")) {
                        c = '#';
                        break;
                    }
                    break;
                case 2142:
                    if (str.equals("CA")) {
                        c = '$';
                        break;
                    }
                    break;
                case 2145:
                    if (str.equals("CD")) {
                        c = '%';
                        break;
                    }
                    break;
                case 2147:
                    if (str.equals("CF")) {
                        c = '&';
                        break;
                    }
                    break;
                case 2148:
                    if (str.equals("CG")) {
                        c = '\'';
                        break;
                    }
                    break;
                case 2149:
                    if (str.equals("CH")) {
                        c = '(';
                        break;
                    }
                    break;
                case 2150:
                    if (str.equals("CI")) {
                        c = ')';
                        break;
                    }
                    break;
                case 2152:
                    if (str.equals("CK")) {
                        c = '*';
                        break;
                    }
                    break;
                case 2153:
                    if (str.equals("CL")) {
                        c = '+';
                        break;
                    }
                    break;
                case 2154:
                    if (str.equals("CM")) {
                        c = ',';
                        break;
                    }
                    break;
                case 2155:
                    if (str.equals("CN")) {
                        c = '-';
                        break;
                    }
                    break;
                case 2156:
                    if (str.equals("CO")) {
                        c = '.';
                        break;
                    }
                    break;
                case 2159:
                    if (str.equals("CR")) {
                        c = '/';
                        break;
                    }
                    break;
                case 2162:
                    if (str.equals("CU")) {
                        c = '0';
                        break;
                    }
                    break;
                case 2163:
                    if (str.equals("CV")) {
                        c = '1';
                        break;
                    }
                    break;
                case 2164:
                    if (str.equals("CW")) {
                        c = '2';
                        break;
                    }
                    break;
                case 2165:
                    if (str.equals("CX")) {
                        c = '3';
                        break;
                    }
                    break;
                case 2166:
                    if (str.equals("CY")) {
                        c = '4';
                        break;
                    }
                    break;
                case 2167:
                    if (str.equals("CZ")) {
                        c = '5';
                        break;
                    }
                    break;
                case 2177:
                    if (str.equals("DE")) {
                        c = '6';
                        break;
                    }
                    break;
                case 2182:
                    if (str.equals("DJ")) {
                        c = '7';
                        break;
                    }
                    break;
                case 2183:
                    if (str.equals("DK")) {
                        c = '8';
                        break;
                    }
                    break;
                case 2185:
                    if (str.equals("DM")) {
                        c = '9';
                        break;
                    }
                    break;
                case 2187:
                    if (str.equals("DO")) {
                        c = ':';
                        break;
                    }
                    break;
                case 2198:
                    if (str.equals("DZ")) {
                        c = ';';
                        break;
                    }
                    break;
                case 2206:
                    if (str.equals("EC")) {
                        c = '<';
                        break;
                    }
                    break;
                case 2208:
                    if (str.equals("EE")) {
                        c = '=';
                        break;
                    }
                    break;
                case 2210:
                    if (str.equals("EG")) {
                        c = '>';
                        break;
                    }
                    break;
                case 2221:
                    if (str.equals("ER")) {
                        c = '?';
                        break;
                    }
                    break;
                case 2222:
                    if (str.equals("ES")) {
                        c = '@';
                        break;
                    }
                    break;
                case 2223:
                    if (str.equals("ET")) {
                        c = 'A';
                        break;
                    }
                    break;
                case 2243:
                    if (str.equals("FI")) {
                        c = 'B';
                        break;
                    }
                    break;
                case 2244:
                    if (str.equals("FJ")) {
                        c = 'C';
                        break;
                    }
                    break;
                case 2245:
                    if (str.equals("FK")) {
                        c = 'D';
                        break;
                    }
                    break;
                case 2247:
                    if (str.equals("FM")) {
                        c = 'E';
                        break;
                    }
                    break;
                case 2249:
                    if (str.equals("FO")) {
                        c = 'F';
                        break;
                    }
                    break;
                case 2252:
                    if (str.equals("FR")) {
                        c = 'G';
                        break;
                    }
                    break;
                case 2266:
                    if (str.equals("GA")) {
                        c = 'H';
                        break;
                    }
                    break;
                case 2267:
                    if (str.equals("GB")) {
                        c = 'I';
                        break;
                    }
                    break;
                case 2269:
                    if (str.equals("GD")) {
                        c = 'J';
                        break;
                    }
                    break;
                case 2270:
                    if (str.equals("GE")) {
                        c = 'K';
                        break;
                    }
                    break;
                case 2271:
                    if (str.equals("GF")) {
                        c = 'L';
                        break;
                    }
                    break;
                case 2272:
                    if (str.equals("GG")) {
                        c = 'M';
                        break;
                    }
                    break;
                case 2273:
                    if (str.equals("GH")) {
                        c = 'N';
                        break;
                    }
                    break;
                case 2274:
                    if (str.equals("GI")) {
                        c = 'O';
                        break;
                    }
                    break;
                case 2277:
                    if (str.equals("GL")) {
                        c = 'P';
                        break;
                    }
                    break;
                case 2278:
                    if (str.equals("GM")) {
                        c = 'Q';
                        break;
                    }
                    break;
                case 2279:
                    if (str.equals("GN")) {
                        c = 'R';
                        break;
                    }
                    break;
                case 2281:
                    if (str.equals("GP")) {
                        c = 'S';
                        break;
                    }
                    break;
                case 2282:
                    if (str.equals("GQ")) {
                        c = 'T';
                        break;
                    }
                    break;
                case 2283:
                    if (str.equals("GR")) {
                        c = 'U';
                        break;
                    }
                    break;
                case 2285:
                    if (str.equals("GT")) {
                        c = 'V';
                        break;
                    }
                    break;
                case 2286:
                    if (str.equals("GU")) {
                        c = 'W';
                        break;
                    }
                    break;
                case 2288:
                    if (str.equals("GW")) {
                        c = 'X';
                        break;
                    }
                    break;
                case 2290:
                    if (str.equals("GY")) {
                        c = 'Y';
                        break;
                    }
                    break;
                case 2307:
                    if (str.equals("HK")) {
                        c = 'Z';
                        break;
                    }
                    break;
                case 2314:
                    if (str.equals("HR")) {
                        c = '[';
                        break;
                    }
                    break;
                case 2316:
                    if (str.equals("HT")) {
                        c = '\\';
                        break;
                    }
                    break;
                case 2317:
                    if (str.equals("HU")) {
                        c = ']';
                        break;
                    }
                    break;
                case 2331:
                    if (str.equals("ID")) {
                        c = '^';
                        break;
                    }
                    break;
                case 2332:
                    if (str.equals("IE")) {
                        c = '_';
                        break;
                    }
                    break;
                case 2339:
                    if (str.equals("IL")) {
                        c = '`';
                        break;
                    }
                    break;
                case 2340:
                    if (str.equals("IM")) {
                        c = 'a';
                        break;
                    }
                    break;
                case 2341:
                    if (str.equals("IN")) {
                        c = 'b';
                        break;
                    }
                    break;
                case 2342:
                    if (str.equals("IO")) {
                        c = 'c';
                        break;
                    }
                    break;
                case 2344:
                    if (str.equals("IQ")) {
                        c = 'd';
                        break;
                    }
                    break;
                case 2345:
                    if (str.equals("IR")) {
                        c = 'e';
                        break;
                    }
                    break;
                case 2346:
                    if (str.equals("IS")) {
                        c = 'f';
                        break;
                    }
                    break;
                case 2347:
                    if (str.equals("IT")) {
                        c = 'g';
                        break;
                    }
                    break;
                case 2363:
                    if (str.equals("JE")) {
                        c = 'h';
                        break;
                    }
                    break;
                case 2371:
                    if (str.equals("JM")) {
                        c = 'i';
                        break;
                    }
                    break;
                case 2373:
                    if (str.equals("JO")) {
                        c = 'j';
                        break;
                    }
                    break;
                case 2374:
                    if (str.equals("JP")) {
                        c = 'k';
                        break;
                    }
                    break;
                case 2394:
                    if (str.equals("KE")) {
                        c = 'l';
                        break;
                    }
                    break;
                case 2396:
                    if (str.equals("KG")) {
                        c = 'm';
                        break;
                    }
                    break;
                case 2397:
                    if (str.equals("KH")) {
                        c = 'n';
                        break;
                    }
                    break;
                case 2398:
                    if (str.equals("KI")) {
                        c = 'o';
                        break;
                    }
                    break;
                case 2402:
                    if (str.equals("KM")) {
                        c = 'p';
                        break;
                    }
                    break;
                case 2403:
                    if (str.equals("KN")) {
                        c = 'q';
                        break;
                    }
                    break;
                case 2407:
                    if (str.equals("KR")) {
                        c = 'r';
                        break;
                    }
                    break;
                case 2412:
                    if (str.equals("KW")) {
                        c = 's';
                        break;
                    }
                    break;
                case 2414:
                    if (str.equals("KY")) {
                        c = 't';
                        break;
                    }
                    break;
                case 2415:
                    if (str.equals("KZ")) {
                        c = 'u';
                        break;
                    }
                    break;
                case 2421:
                    if (str.equals("LA")) {
                        c = 'v';
                        break;
                    }
                    break;
                case 2422:
                    if (str.equals("LB")) {
                        c = 'w';
                        break;
                    }
                    break;
                case 2423:
                    if (str.equals("LC")) {
                        c = 'x';
                        break;
                    }
                    break;
                case 2429:
                    if (str.equals("LI")) {
                        c = 'y';
                        break;
                    }
                    break;
                case 2431:
                    if (str.equals("LK")) {
                        c = 'z';
                        break;
                    }
                    break;
                case 2438:
                    if (str.equals("LR")) {
                        c = '{';
                        break;
                    }
                    break;
                case 2439:
                    if (str.equals("LS")) {
                        c = '|';
                        break;
                    }
                    break;
                case 2440:
                    if (str.equals("LT")) {
                        c = '}';
                        break;
                    }
                    break;
                case 2441:
                    if (str.equals("LU")) {
                        c = '~';
                        break;
                    }
                    break;
                case 2442:
                    if (str.equals("LV")) {
                        c = 127;
                        break;
                    }
                    break;
                case 2445:
                    if (str.equals("LY")) {
                        c = 128;
                        break;
                    }
                    break;
                case 2452:
                    if (str.equals("MA")) {
                        c = 129;
                        break;
                    }
                    break;
                case 2454:
                    if (str.equals("MC")) {
                        c = 130;
                        break;
                    }
                    break;
                case 2455:
                    if (str.equals("MD")) {
                        c = 131;
                        break;
                    }
                    break;
                case 2456:
                    if (str.equals("ME")) {
                        c = 132;
                        break;
                    }
                    break;
                case 2457:
                    if (str.equals("MF")) {
                        c = 133;
                        break;
                    }
                    break;
                case 2458:
                    if (str.equals("MG")) {
                        c = 134;
                        break;
                    }
                    break;
                case 2459:
                    if (str.equals("MH")) {
                        c = 135;
                        break;
                    }
                    break;
                case 2462:
                    if (str.equals("MK")) {
                        c = 136;
                        break;
                    }
                    break;
                case 2463:
                    if (str.equals("ML")) {
                        c = 137;
                        break;
                    }
                    break;
                case 2464:
                    if (str.equals("MM")) {
                        c = 138;
                        break;
                    }
                    break;
                case 2465:
                    if (str.equals("MN")) {
                        c = 139;
                        break;
                    }
                    break;
                case 2466:
                    if (str.equals("MO")) {
                        c = 140;
                        break;
                    }
                    break;
                case 2467:
                    if (str.equals("MP")) {
                        c = 141;
                        break;
                    }
                    break;
                case 2468:
                    if (str.equals("MQ")) {
                        c = 142;
                        break;
                    }
                    break;
                case 2469:
                    if (str.equals("MR")) {
                        c = 143;
                        break;
                    }
                    break;
                case 2470:
                    if (str.equals("MS")) {
                        c = 144;
                        break;
                    }
                    break;
                case 2471:
                    if (str.equals("MT")) {
                        c = 145;
                        break;
                    }
                    break;
                case 2472:
                    if (str.equals("MU")) {
                        c = 146;
                        break;
                    }
                    break;
                case 2473:
                    if (str.equals("MV")) {
                        c = 147;
                        break;
                    }
                    break;
                case 2474:
                    if (str.equals("MW")) {
                        c = 148;
                        break;
                    }
                    break;
                case 2475:
                    if (str.equals("MX")) {
                        c = 149;
                        break;
                    }
                    break;
                case 2476:
                    if (str.equals("MY")) {
                        c = 150;
                        break;
                    }
                    break;
                case 2477:
                    if (str.equals("MZ")) {
                        c = 151;
                        break;
                    }
                    break;
                case 2483:
                    if (str.equals("NA")) {
                        c = 152;
                        break;
                    }
                    break;
                case 2485:
                    if (str.equals("NC")) {
                        c = 153;
                        break;
                    }
                    break;
                case 2487:
                    if (str.equals("NE")) {
                        c = 154;
                        break;
                    }
                    break;
                case 2488:
                    if (str.equals("NF")) {
                        c = 155;
                        break;
                    }
                    break;
                case 2489:
                    if (str.equals("NG")) {
                        c = 156;
                        break;
                    }
                    break;
                case 2491:
                    if (str.equals("NI")) {
                        c = 157;
                        break;
                    }
                    break;
                case 2494:
                    if (str.equals("NL")) {
                        c = 158;
                        break;
                    }
                    break;
                case 2497:
                    if (str.equals("NO")) {
                        c = 159;
                        break;
                    }
                    break;
                case 2498:
                    if (str.equals("NP")) {
                        c = 160;
                        break;
                    }
                    break;
                case 2500:
                    if (str.equals("NR")) {
                        c = 161;
                        break;
                    }
                    break;
                case 2503:
                    if (str.equals("NU")) {
                        c = 162;
                        break;
                    }
                    break;
                case 2508:
                    if (str.equals("NZ")) {
                        c = 163;
                        break;
                    }
                    break;
                case 2526:
                    if (str.equals("OM")) {
                        c = 164;
                        break;
                    }
                    break;
                case 2545:
                    if (str.equals("PA")) {
                        c = 165;
                        break;
                    }
                    break;
                case 2549:
                    if (str.equals("PE")) {
                        c = 166;
                        break;
                    }
                    break;
                case 2550:
                    if (str.equals("PF")) {
                        c = 167;
                        break;
                    }
                    break;
                case 2551:
                    if (str.equals("PG")) {
                        c = 168;
                        break;
                    }
                    break;
                case 2552:
                    if (str.equals("PH")) {
                        c = 169;
                        break;
                    }
                    break;
                case 2555:
                    if (str.equals("PK")) {
                        c = 170;
                        break;
                    }
                    break;
                case 2556:
                    if (str.equals("PL")) {
                        c = 171;
                        break;
                    }
                    break;
                case 2557:
                    if (str.equals("PM")) {
                        c = 172;
                        break;
                    }
                    break;
                case 2562:
                    if (str.equals("PR")) {
                        c = 173;
                        break;
                    }
                    break;
                case 2563:
                    if (str.equals("PS")) {
                        c = 174;
                        break;
                    }
                    break;
                case 2564:
                    if (str.equals("PT")) {
                        c = 175;
                        break;
                    }
                    break;
                case 2567:
                    if (str.equals("PW")) {
                        c = 176;
                        break;
                    }
                    break;
                case 2569:
                    if (str.equals("PY")) {
                        c = 177;
                        break;
                    }
                    break;
                case 2576:
                    if (str.equals("QA")) {
                        c = 178;
                        break;
                    }
                    break;
                case 2611:
                    if (str.equals("RE")) {
                        c = 179;
                        break;
                    }
                    break;
                case 2621:
                    if (str.equals("RO")) {
                        c = 180;
                        break;
                    }
                    break;
                case 2625:
                    if (str.equals("RS")) {
                        c = 181;
                        break;
                    }
                    break;
                case 2627:
                    if (str.equals("RU")) {
                        c = 182;
                        break;
                    }
                    break;
                case 2629:
                    if (str.equals("RW")) {
                        c = 183;
                        break;
                    }
                    break;
                case 2638:
                    if (str.equals("SA")) {
                        c = 184;
                        break;
                    }
                    break;
                case 2639:
                    if (str.equals("SB")) {
                        c = 185;
                        break;
                    }
                    break;
                case 2640:
                    if (str.equals("SC")) {
                        c = 186;
                        break;
                    }
                    break;
                case 2641:
                    if (str.equals("SD")) {
                        c = 187;
                        break;
                    }
                    break;
                case 2642:
                    if (str.equals("SE")) {
                        c = 188;
                        break;
                    }
                    break;
                case 2644:
                    if (str.equals("SG")) {
                        c = 189;
                        break;
                    }
                    break;
                case 2645:
                    if (str.equals("SH")) {
                        c = 190;
                        break;
                    }
                    break;
                case 2646:
                    if (str.equals("SI")) {
                        c = 191;
                        break;
                    }
                    break;
                case 2647:
                    if (str.equals("SJ")) {
                        c = 192;
                        break;
                    }
                    break;
                case 2648:
                    if (str.equals("SK")) {
                        c = 193;
                        break;
                    }
                    break;
                case 2649:
                    if (str.equals("SL")) {
                        c = 194;
                        break;
                    }
                    break;
                case 2650:
                    if (str.equals("SM")) {
                        c = 195;
                        break;
                    }
                    break;
                case 2651:
                    if (str.equals("SN")) {
                        c = 196;
                        break;
                    }
                    break;
                case 2652:
                    if (str.equals("SO")) {
                        c = 197;
                        break;
                    }
                    break;
                case 2655:
                    if (str.equals("SR")) {
                        c = 198;
                        break;
                    }
                    break;
                case 2656:
                    if (str.equals("SS")) {
                        c = 199;
                        break;
                    }
                    break;
                case 2657:
                    if (str.equals("ST")) {
                        c = 200;
                        break;
                    }
                    break;
                case 2659:
                    if (str.equals("SV")) {
                        c = 201;
                        break;
                    }
                    break;
                case 2661:
                    if (str.equals("SX")) {
                        c = 202;
                        break;
                    }
                    break;
                case 2662:
                    if (str.equals("SY")) {
                        c = 203;
                        break;
                    }
                    break;
                case 2663:
                    if (str.equals("SZ")) {
                        c = 204;
                        break;
                    }
                    break;
                case 2671:
                    if (str.equals("TC")) {
                        c = 205;
                        break;
                    }
                    break;
                case 2672:
                    if (str.equals("TD")) {
                        c = 206;
                        break;
                    }
                    break;
                case 2675:
                    if (str.equals("TG")) {
                        c = 207;
                        break;
                    }
                    break;
                case 2676:
                    if (str.equals("TH")) {
                        c = 208;
                        break;
                    }
                    break;
                case 2678:
                    if (str.equals("TJ")) {
                        c = 209;
                        break;
                    }
                    break;
                case 2680:
                    if (str.equals("TL")) {
                        c = 210;
                        break;
                    }
                    break;
                case 2681:
                    if (str.equals("TM")) {
                        c = 211;
                        break;
                    }
                    break;
                case 2682:
                    if (str.equals("TN")) {
                        c = 212;
                        break;
                    }
                    break;
                case 2683:
                    if (str.equals("TO")) {
                        c = 213;
                        break;
                    }
                    break;
                case 2686:
                    if (str.equals("TR")) {
                        c = 214;
                        break;
                    }
                    break;
                case 2688:
                    if (str.equals("TT")) {
                        c = 215;
                        break;
                    }
                    break;
                case 2690:
                    if (str.equals("TV")) {
                        c = 216;
                        break;
                    }
                    break;
                case 2691:
                    if (str.equals("TW")) {
                        c = 217;
                        break;
                    }
                    break;
                case 2694:
                    if (str.equals("TZ")) {
                        c = 218;
                        break;
                    }
                    break;
                case 2700:
                    if (str.equals("UA")) {
                        c = 219;
                        break;
                    }
                    break;
                case 2706:
                    if (str.equals("UG")) {
                        c = 220;
                        break;
                    }
                    break;
                case 2718:
                    if (str.equals("US")) {
                        c = 221;
                        break;
                    }
                    break;
                case 2724:
                    if (str.equals("UY")) {
                        c = 222;
                        break;
                    }
                    break;
                case 2725:
                    if (str.equals("UZ")) {
                        c = 223;
                        break;
                    }
                    break;
                case 2731:
                    if (str.equals("VA")) {
                        c = 224;
                        break;
                    }
                    break;
                case 2733:
                    if (str.equals("VC")) {
                        c = 225;
                        break;
                    }
                    break;
                case 2735:
                    if (str.equals("VE")) {
                        c = 226;
                        break;
                    }
                    break;
                case 2737:
                    if (str.equals("VG")) {
                        c = 227;
                        break;
                    }
                    break;
                case 2739:
                    if (str.equals("VI")) {
                        c = 228;
                        break;
                    }
                    break;
                case 2744:
                    if (str.equals("VN")) {
                        c = 229;
                        break;
                    }
                    break;
                case 2751:
                    if (str.equals("VU")) {
                        c = 230;
                        break;
                    }
                    break;
                case 2767:
                    if (str.equals("WF")) {
                        c = 231;
                        break;
                    }
                    break;
                case 2780:
                    if (str.equals("WS")) {
                        c = 232;
                        break;
                    }
                    break;
                case 2803:
                    if (str.equals("XK")) {
                        c = 233;
                        break;
                    }
                    break;
                case 2828:
                    if (str.equals("YE")) {
                        c = 234;
                        break;
                    }
                    break;
                case 2843:
                    if (str.equals("YT")) {
                        c = 235;
                        break;
                    }
                    break;
                case 2855:
                    if (str.equals("ZA")) {
                        c = 236;
                        break;
                    }
                    break;
                case 2867:
                    if (str.equals("ZM")) {
                        c = 237;
                        break;
                    }
                    break;
                case 2877:
                    if (str.equals("ZW")) {
                        c = 238;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                case 4:
                case 17:
                case 29:
                case '2':
                case '9':
                case 'q':
                case 't':
                case 202:
                case 225:
                    iArr = new int[]{1, 2, 0, 0, 2, 2};
                    break;
                case 1:
                    iArr = new int[]{1, 4, 2, 3, 4, 1};
                    break;
                case 2:
                case 204:
                    iArr = new int[]{4, 4, 3, 4, 2, 2};
                    break;
                case 3:
                case ')':
                    iArr = new int[]{2, 4, 3, 4, 2, 2};
                    break;
                case 5:
                    iArr = new int[]{1, 1, 1, 2, 2, 2};
                    break;
                case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                case 165:
                    iArr = new int[]{2, 3, 2, 3, 2, 2};
                    break;
                case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                    iArr = new int[]{3, 4, 4, 3, 2, 2};
                    break;
                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                case '?':
                case 162:
                case 186:
                case 190:
                    iArr = new int[]{4, 2, 2, 2, 2, 2};
                    break;
                case '\t':
                    iArr = new int[]{2, 2, 2, 2, 1, 2};
                    break;
                case '\n':
                    iArr = new int[]{2, 2, 3, 3, 2, 2};
                    break;
                case 11:
                case '=':
                case ']':
                case 'f':
                case 127:
                case 145:
                case 188:
                    iArr = new int[]{0, 0, 0, 0, 0, 2};
                    break;
                case '\f':
                    iArr = new int[]{0, 3, 1, 1, 3, 0};
                    break;
                case '\r':
                    iArr = new int[]{2, 2, 3, 4, 2, 2};
                    break;
                case 14:
                case '3':
                case 'y':
                case 144:
                case 172:
                case 195:
                case 224:
                    iArr = new int[]{0, 2, 2, 2, 2, 2};
                    break;
                case 15:
                case '7':
                case 128:
                case 194:
                    iArr = new int[]{4, 2, 3, 3, 2, 2};
                    break;
                case 16:
                case 'j':
                case 214:
                    iArr = new int[]{1, 1, 1, 1, 2, 2};
                    break;
                case 18:
                    iArr = new int[]{2, 1, 3, 2, 4, 2};
                    break;
                case 19:
                    iArr = new int[]{0, 0, 1, 0, 1, 2};
                    break;
                case 20:
                case 187:
                case 203:
                case 206:
                    iArr = new int[]{4, 3, 4, 4, 2, 2};
                    break;
                case 21:
                case 175:
                case 191:
                    iArr = new int[]{0, 0, 0, 0, 1, 2};
                    break;
                case 22:
                    iArr = new int[]{1, 3, 1, 3, 4, 2};
                    break;
                case 23:
                case 'T':
                case '\\':
                case 154:
                case 226:
                case 234:
                    iArr = new int[]{4, 4, 4, 4, 2, 2};
                    break;
                case 24:
                    iArr = new int[]{4, 4, 2, 3, 2, 2};
                    break;
                case 25:
                case 141:
                case 177:
                    iArr = new int[]{1, 2, 2, 2, 2, 2};
                    break;
                case 26:
                    iArr = new int[]{0, 2, 0, 0, 2, 2};
                    break;
                case 27:
                    iArr = new int[]{3, 2, 0, 0, 2, 2};
                    break;
                case 28:
                    iArr = new int[]{1, 2, 4, 4, 2, 2};
                    break;
                case 30:
                    iArr = new int[]{1, 1, 1, 1, 2, 4};
                    break;
                case 31:
                    iArr = new int[]{3, 2, 1, 1, 2, 2};
                    break;
                case ' ':
                    iArr = new int[]{3, 1, 2, 2, 3, 2};
                    break;
                case '!':
                    iArr = new int[]{3, 2, 1, 0, 2, 2};
                    break;
                case '\"':
                    iArr = new int[]{1, 2, 3, 3, 2, 2};
                    break;
                case '#':
                case '*':
                    iArr = new int[]{2, 2, 2, 1, 2, 2};
                    break;
                case '$':
                case 219:
                    iArr = new int[]{0, 2, 1, 2, 3, 3};
                    break;
                case '%':
                case 137:
                    iArr = new int[]{3, 3, 2, 2, 2, 2};
                    break;
                case '&':
                    iArr = new int[]{4, 2, 4, 2, 2, 2};
                    break;
                case '\'':
                case '>':
                case 134:
                    iArr = new int[]{3, 4, 3, 3, 2, 2};
                    break;
                case '(':
                    iArr = new int[]{0, 1, 0, 0, 0, 2};
                    break;
                case '+':
                case 208:
                    iArr = new int[]{0, 1, 2, 2, 2, 2};
                    break;
                case ',':
                case 143:
                    iArr = new int[]{4, 3, 3, 4, 2, 2};
                    break;
                case '-':
                    iArr = new int[]{2, 0, 1, 1, 3, 1};
                    break;
                case '.':
                    iArr = new int[]{2, 3, 3, 2, 2, 2};
                    break;
                case '/':
                case 157:
                    iArr = new int[]{2, 4, 4, 4, 2, 2};
                    break;
                case '0':
                case 'o':
                case 161:
                case 210:
                    iArr = new int[]{4, 2, 4, 4, 2, 2};
                    break;
                case '1':
                    iArr = new int[]{2, 3, 0, 1, 2, 2};
                    break;
                case '4':
                    iArr = new int[]{1, 0, 1, 0, 0, 2};
                    break;
                case '5':
                    iArr = new int[]{0, 0, 2, 0, 1, 2};
                    break;
                case '6':
                    iArr = new int[]{0, 1, 4, 2, 2, 1};
                    break;
                case '8':
                    iArr = new int[]{0, 0, 2, 0, 0, 2};
                    break;
                case ':':
                case '{':
                    iArr = new int[]{3, 4, 4, 4, 2, 2};
                    break;
                case ';':
                case 209:
                    iArr = new int[]{3, 3, 4, 4, 2, 2};
                    break;
                case '<':
                    iArr = new int[]{1, 3, 2, 1, 2, 2};
                    break;
                case '@':
                    iArr = new int[]{0, 0, 0, 0, 1, 0};
                    break;
                case 'A':
                    iArr = new int[]{4, 3, 4, 4, 4, 2};
                    break;
                case 'B':
                    iArr = new int[]{0, 0, 0, 1, 0, 2};
                    break;
                case 'C':
                    iArr = new int[]{3, 2, 2, 3, 2, 2};
                    break;
                case 'D':
                case ModuleDescriptor.MODULE_VERSION /* 155 */:
                case 192:
                    iArr = new int[]{3, 2, 2, 2, 2, 2};
                    break;
                case 'E':
                    iArr = new int[]{4, 2, 4, 0, 2, 2};
                    break;
                case 'F':
                    iArr = new int[]{0, 2, 2, 0, 2, 2};
                    break;
                case 'G':
                    iArr = new int[]{1, 1, 1, 1, 0, 2};
                    break;
                case 'H':
                    iArr = new int[]{3, 4, 0, 0, 2, 2};
                    break;
                case 'I':
                    iArr = new int[]{1, 1, 3, 2, 2, 2};
                    break;
                case 'J':
                    iArr = new int[]{2, 2, 0, 0, 2, 2};
                    break;
                case 'K':
                    iArr = new int[]{1, 1, 0, 2, 2, 2};
                    break;
                case 'L':
                    iArr = new int[]{3, 2, 3, 3, 2, 2};
                    break;
                case 'M':
                    iArr = new int[]{0, 2, 1, 1, 2, 2};
                    break;
                case 'N':
                    iArr = new int[]{3, 3, 3, 2, 2, 2};
                    break;
                case 'O':
                case 'a':
                case 'h':
                    iArr = new int[]{0, 2, 0, 1, 2, 2};
                    break;
                case 'P':
                case 130:
                    iArr = new int[]{1, 2, 2, 0, 2, 2};
                    break;
                case 'Q':
                case 199:
                    iArr = new int[]{4, 3, 2, 4, 2, 2};
                    break;
                case 'R':
                    iArr = new int[]{3, 4, 4, 2, 2, 2};
                    break;
                case 'S':
                    iArr = new int[]{2, 1, 1, 3, 2, 2};
                    break;
                case 'U':
                    iArr = new int[]{1, 0, 0, 0, 1, 2};
                    break;
                case 'V':
                    iArr = new int[]{2, 1, 2, 1, 2, 2};
                    break;
                case 'W':
                    iArr = new int[]{2, 2, 4, 3, 3, 2};
                    break;
                case 'X':
                    iArr = new int[]{4, 4, 1, 2, 2, 2};
                    break;
                case 'Y':
                    iArr = new int[]{3, 1, 1, 3, 2, 2};
                    break;
                case 'Z':
                    iArr = new int[]{0, 1, 0, 1, 1, 0};
                    break;
                case '[':
                case 's':
                    iArr = new int[]{1, 0, 0, 0, 0, 2};
                    break;
                case '^':
                    iArr = new int[]{3, 1, 3, 3, 2, 4};
                    break;
                case '_':
                    iArr = new int[]{1, 1, 1, 1, 1, 2};
                    break;
                case '`':
                    iArr = new int[]{1, 2, 2, 3, 4, 2};
                    break;
                case 'b':
                    iArr = new int[]{1, 1, 3, 2, 2, 3};
                    break;
                case 'c':
                    iArr = new int[]{3, 2, 2, 0, 2, 2};
                    break;
                case 'd':
                    iArr = new int[]{3, 2, 3, 2, 2, 2};
                    break;
                case 'e':
                    iArr = new int[]{4, 2, 3, 3, 4, 3};
                    break;
                case 'g':
                    iArr = new int[]{0, 1, 1, 2, 1, 2};
                    break;
                case 'i':
                    iArr = new int[]{2, 4, 3, 1, 2, 2};
                    break;
                case 'k':
                    iArr = new int[]{0, 3, 2, 3, 4, 2};
                    break;
                case 'l':
                    iArr = new int[]{3, 2, 1, 1, 1, 2};
                    break;
                case 'm':
                    iArr = new int[]{2, 1, 1, 2, 2, 2};
                    break;
                case 'n':
                    iArr = new int[]{1, 0, 4, 2, 2, 2};
                    break;
                case 'p':
                case 230:
                    iArr = new int[]{4, 3, 3, 2, 2, 2};
                    break;
                case 'r':
                    iArr = new int[]{0, 2, 2, 4, 4, 4};
                    break;
                case 'u':
                    iArr = new int[]{2, 1, 2, 2, 3, 2};
                    break;
                case 'v':
                    iArr = new int[]{1, 2, 1, 3, 2, 2};
                    break;
                case 'w':
                    iArr = new int[]{3, 1, 1, 2, 2, 2};
                    break;
                case 'x':
                    iArr = new int[]{2, 2, 1, 1, 2, 2};
                    break;
                case 'z':
                case 138:
                    iArr = new int[]{3, 2, 3, 3, 4, 2};
                    break;
                case '|':
                case 168:
                    iArr = new int[]{4, 3, 3, 3, 2, 2};
                    break;
                case '}':
                    iArr = new int[]{0, 1, 0, 1, 0, 2};
                    break;
                case '~':
                    iArr = new int[]{4, 0, 3, 2, 1, 3};
                    break;
                case 129:
                    iArr = new int[]{3, 3, 1, 1, 2, 2};
                    break;
                case 131:
                    iArr = new int[]{1, 0, 0, 0, 2, 2};
                    break;
                case 132:
                    iArr = new int[]{2, 0, 0, 1, 3, 2};
                    break;
                case 133:
                    iArr = new int[]{1, 2, 2, 3, 2, 2};
                    break;
                case 135:
                case 211:
                case 216:
                case 231:
                    iArr = new int[]{4, 2, 2, 4, 2, 2};
                    break;
                case 136:
                    iArr = new int[]{1, 0, 0, 1, 3, 2};
                    break;
                case 139:
                    iArr = new int[]{2, 0, 2, 2, 2, 2};
                    break;
                case 140:
                    iArr = new int[]{0, 2, 4, 4, 3, 1};
                    break;
                case 142:
                    iArr = new int[]{2, 1, 2, 3, 2, 2};
                    break;
                case 146:
                    iArr = new int[]{3, 1, 0, 2, 2, 2};
                    break;
                case 147:
                    iArr = new int[]{3, 2, 1, 3, 4, 2};
                    break;
                case 148:
                    iArr = new int[]{3, 2, 2, 1, 2, 2};
                    break;
                case 149:
                    iArr = new int[]{2, 4, 4, 4, 3, 2};
                    break;
                case 150:
                    iArr = new int[]{1, 0, 4, 1, 1, 0};
                    break;
                case 151:
                case 232:
                    iArr = new int[]{3, 1, 2, 2, 2, 2};
                    break;
                case 152:
                    iArr = new int[]{3, 4, 3, 2, 2, 2};
                    break;
                case 153:
                case 235:
                    iArr = new int[]{2, 3, 3, 4, 2, 2};
                    break;
                case 156:
                    iArr = new int[]{3, 4, 2, 1, 2, 2};
                    break;
                case 158:
                    iArr = new int[]{2, 1, 4, 3, 0, 4};
                    break;
                case 159:
                    iArr = new int[]{0, 0, 3, 0, 0, 2};
                    break;
                case 160:
                    iArr = new int[]{2, 2, 4, 3, 2, 2};
                    break;
                case 163:
                    iArr = new int[]{0, 0, 1, 2, 4, 2};
                    break;
                case 164:
                    iArr = new int[]{2, 3, 1, 2, 4, 2};
                    break;
                case 166:
                    iArr = new int[]{1, 2, 4, 4, 3, 2};
                    break;
                case 167:
                    iArr = new int[]{2, 2, 3, 1, 2, 2};
                    break;
                case 169:
                    iArr = new int[]{2, 1, 2, 3, 2, 1};
                    break;
                case 170:
                    iArr = new int[]{3, 3, 3, 3, 2, 2};
                    break;
                case 171:
                    iArr = new int[]{1, 0, 2, 2, 4, 4};
                    break;
                case 173:
                    iArr = new int[]{2, 0, 2, 1, 2, 0};
                    break;
                case 174:
                    iArr = new int[]{3, 4, 1, 3, 2, 2};
                    break;
                case 176:
                    iArr = new int[]{2, 2, 4, 1, 2, 2};
                    break;
                case 178:
                    iArr = new int[]{1, 4, 4, 4, 4, 2};
                    break;
                case 179:
                    iArr = new int[]{0, 3, 2, 3, 1, 2};
                    break;
                case 180:
                    iArr = new int[]{0, 0, 1, 1, 3, 2};
                    break;
                case 181:
                    iArr = new int[]{1, 0, 0, 1, 2, 2};
                    break;
                case 182:
                    iArr = new int[]{1, 0, 0, 1, 3, 3};
                    break;
                case 183:
                    iArr = new int[]{3, 3, 2, 0, 2, 2};
                    break;
                case 184:
                    iArr = new int[]{3, 1, 1, 2, 2, 0};
                    break;
                case 185:
                case 238:
                    iArr = new int[]{4, 2, 4, 3, 2, 2};
                    break;
                case 189:
                    iArr = new int[]{2, 3, 3, 3, 1, 1};
                    break;
                case 193:
                    iArr = new int[]{0, 1, 1, 1, 2, 2};
                    break;
                case 196:
                    iArr = new int[]{4, 4, 3, 2, 2, 2};
                    break;
                case 197:
                    iArr = new int[]{2, 2, 3, 4, 4, 2};
                    break;
                case 198:
                    iArr = new int[]{2, 4, 4, 1, 2, 2};
                    break;
                case 200:
                    iArr = new int[]{2, 2, 1, 2, 2, 2};
                    break;
                case 201:
                    iArr = new int[]{2, 3, 2, 1, 2, 2};
                    break;
                case 205:
                    iArr = new int[]{3, 2, 1, 2, 2, 2};
                    break;
                case 207:
                    iArr = new int[]{3, 4, 1, 0, 2, 2};
                    break;
                case 212:
                    iArr = new int[]{3, 1, 1, 1, 2, 2};
                    break;
                case 213:
                    iArr = new int[]{3, 2, 4, 3, 2, 2};
                    break;
                case 215:
                    iArr = new int[]{2, 4, 1, 0, 2, 2};
                    break;
                case 217:
                    iArr = new int[]{0, 0, 0, 0, 0, 0};
                    break;
                case 218:
                    iArr = new int[]{3, 4, 2, 1, 3, 2};
                    break;
                case 220:
                    iArr = new int[]{3, 3, 2, 3, 4, 2};
                    break;
                case 221:
                    iArr = new int[]{2, 2, 4, 1, 3, 1};
                    break;
                case 222:
                    iArr = new int[]{2, 1, 1, 2, 1, 2};
                    break;
                case 223:
                    iArr = new int[]{1, 2, 3, 4, 3, 2};
                    break;
                case 227:
                    iArr = new int[]{2, 2, 1, 1, 2, 4};
                    break;
                case 228:
                    iArr = new int[]{0, 2, 1, 2, 2, 2};
                    break;
                case 229:
                    iArr = new int[]{0, 0, 1, 2, 2, 2};
                    break;
                case 233:
                    iArr = new int[]{1, 2, 1, 1, 2, 2};
                    break;
                case 236:
                    iArr = new int[]{2, 4, 2, 1, 1, 2};
                    break;
                case 237:
                    iArr = new int[]{4, 4, 4, 3, 2, 2};
                    break;
                default:
                    iArr = new int[]{2, 2, 2, 2, 2, 2};
                    break;
            }
            if (i != 2) {
                if (i == 3) {
                    longValue = ((Long) f16615.get(iArr[1])).longValue();
                } else if (i == 4) {
                    longValue = ((Long) f16616.get(iArr[2])).longValue();
                } else if (i == 5) {
                    longValue = ((Long) f16614.get(iArr[3])).longValue();
                } else if (i != 7) {
                    longValue = i != 9 ? i != 10 ? 1000000L : ((Long) f16613.get(iArr[4])).longValue() : ((Long) f16612.get(iArr[5])).longValue();
                }
                l = Long.valueOf(longValue);
            }
            longValue = ((Long) f16611.get(iArr[0])).longValue();
            l = Long.valueOf(longValue);
        }
        if (l == null) {
            l = 1000000L;
        }
        return l.longValue();
    }
}

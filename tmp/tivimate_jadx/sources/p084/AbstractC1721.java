package p084;

import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import j$.util.DesugarCollections;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p223.C3056;
import p305.AbstractC3731;
import p305.C3732;
import p388.C4619;
import p388.C4623;
import ʼ.ᵎﹶ;

/* renamed from: ʿˎ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1721 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final Map f7035;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final Map f7036;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Pattern f7038 = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)((?:.|\\f)*)?$");

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Pattern f7037 = Pattern.compile("(\\S+?):(\\S+)");

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("white", Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap.put("lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap.put("cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap.put("red", Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap.put("yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap.put("magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap.put("blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap.put("black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f7035 = DesugarCollections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("bg_white", Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap2.put("bg_lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap2.put("bg_cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap2.put("bg_red", Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap2.put("bg_yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap2.put("bg_magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap2.put("bg_blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap2.put("bg_black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f7036 = DesugarCollections.unmodifiableMap(hashMap2);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static int m4660(List list, String str, C1730 c1730) {
        ArrayList m4664 = m4664(list, str, c1730);
        for (int i = 0; i < m4664.size(); i++) {
            int i2 = ((C1726) m4664.get(i)).f7064.f7040;
            if (i2 != -1) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static C1724 m4661(String str, Matcher matcher, C3732 c3732, ArrayList arrayList) {
        C1727 c1727 = new C1727();
        try {
            String group = matcher.group(1);
            group.getClass();
            c1727.f7074 = AbstractC1723.m4668(group);
            String group2 = matcher.group(2);
            group2.getClass();
            c1727.f7073 = AbstractC1723.m4668(group2);
            String group3 = matcher.group(3);
            group3.getClass();
            m4662(group3, c1727);
            StringBuilder sb = new StringBuilder();
            c3732.getClass();
            String m7906 = c3732.m7906(StandardCharsets.UTF_8);
            while (!TextUtils.isEmpty(m7906)) {
                if (sb.length() > 0) {
                    sb.append("\n");
                }
                sb.append(m7906.trim());
                m7906 = c3732.m7906(StandardCharsets.UTF_8);
            }
            c1727.f7066 = m4666(str, sb.toString(), arrayList);
            return new C1724(c1727.m4672().m9183(), c1727.f7074, c1727.f7073);
        } catch (IllegalArgumentException unused) {
            AbstractC3731.m7850("WebvttCueParser", "Skipping cue with bad header: " + matcher.group());
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x0081, code lost:
    
        if (r6.equals("center") == false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00c5, code lost:
    
        if (r7.equals("start") == false) goto L53;
     */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m4662(java.lang.String r18, p084.C1727 r19) {
        /*
            Method dump skipped, instructions count: 480
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p084.AbstractC1721.m4662(java.lang.String, ʿˎ.ᵔᵢ):void");
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static void m4663(String str, C1727 c1727) {
        int indexOf = str.indexOf(44);
        char c = 65535;
        if (indexOf != -1) {
            String substring = str.substring(indexOf + 1);
            substring.getClass();
            int i = 2;
            switch (substring.hashCode()) {
                case -1364013995:
                    if (substring.equals("center")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1074341483:
                    if (substring.equals("middle")) {
                        c = 1;
                        break;
                    }
                    break;
                case 100571:
                    if (substring.equals("end")) {
                        c = 2;
                        break;
                    }
                    break;
                case 109757538:
                    if (substring.equals("start")) {
                        c = 3;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                case 1:
                    i = 1;
                    break;
                case 2:
                    break;
                case 3:
                    i = 0;
                    break;
                default:
                    AbstractC3731.m7850("WebvttCueParser", "Invalid anchor value: ".concat(substring));
                    i = Integer.MIN_VALUE;
                    break;
            }
            c1727.f7071 = i;
            str = str.substring(0, indexOf);
        }
        if (str.endsWith("%")) {
            c1727.f7069 = AbstractC1723.m4670(str);
            c1727.f7075 = 0;
        } else {
            c1727.f7069 = Integer.parseInt(str);
            c1727.f7075 = 1;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static ArrayList m4664(List list, String str, C1730 c1730) {
        int size;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            C1722 c1722 = (C1722) list.get(i);
            String str2 = c1730.f7084;
            Set set = c1730.f7082;
            String str3 = c1730.f7081;
            if (c1722.f7053.isEmpty() && c1722.f7052.isEmpty() && c1722.f7041.isEmpty() && c1722.f7043.isEmpty()) {
                size = TextUtils.isEmpty(str2);
            } else {
                int m4667 = C1722.m4667(C1722.m4667(C1722.m4667(0, 1073741824, c1722.f7053, str), 2, c1722.f7052, str2), 4, c1722.f7043, str3);
                size = (m4667 == -1 || !set.containsAll(c1722.f7041)) ? 0 : m4667 + (c1722.f7041.size() * 4);
            }
            if (size > 0) {
                arrayList.add(new C1726(size, c1722));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m4665(String str, C1730 c1730, List list, SpannableStringBuilder spannableStringBuilder, List list2) {
        char c;
        int i;
        int i2;
        int i3;
        int i4 = c1730.f7083;
        int length = spannableStringBuilder.length();
        String str2 = c1730.f7084;
        str2.getClass();
        int i5 = -1;
        switch (str2.hashCode()) {
            case 0:
                if (str2.equals("")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 98:
                if (str2.equals("b")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 99:
                if (str2.equals("c")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 105:
                if (str2.equals("i")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 117:
                if (str2.equals("u")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 118:
                if (str2.equals("v")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 3314158:
                if (str2.equals("lang")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 3511770:
                if (str2.equals("ruby")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                break;
            case 1:
                spannableStringBuilder.setSpan(new StyleSpan(1), i4, length, 33);
                break;
            case 2:
                for (String str3 : c1730.f7082) {
                    Map map = f7035;
                    if (map.containsKey(str3)) {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(((Integer) map.get(str3)).intValue()), i4, length, 33);
                    } else {
                        Map map2 = f7036;
                        if (map2.containsKey(str3)) {
                            spannableStringBuilder.setSpan(new BackgroundColorSpan(((Integer) map2.get(str3)).intValue()), i4, length, 33);
                        }
                    }
                }
                break;
            case 3:
                spannableStringBuilder.setSpan(new StyleSpan(2), i4, length, 33);
                break;
            case 4:
                spannableStringBuilder.setSpan(new UnderlineSpan(), i4, length, 33);
                break;
            case 5:
                spannableStringBuilder.setSpan(new C4619(c1730.f7081), i4, length, 33);
                break;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                int m4660 = m4660(list2, str, c1730);
                ArrayList arrayList = new ArrayList(list.size());
                arrayList.addAll(list);
                Collections.sort(arrayList, C1725.f7060);
                int i6 = c1730.f7083;
                int i7 = 0;
                int i8 = 0;
                while (i7 < arrayList.size()) {
                    if ("rt".equals(((C1725) arrayList.get(i7)).f7062.f7084)) {
                        C1725 c1725 = (C1725) arrayList.get(i7);
                        int m46602 = m4660(list2, str, c1725.f7062);
                        if (m46602 == i5) {
                            m46602 = m4660 != i5 ? m4660 : 1;
                        }
                        int i9 = c1725.f7062.f7083 - i8;
                        int i10 = c1725.f7061 - i8;
                        CharSequence subSequence = spannableStringBuilder.subSequence(i9, i10);
                        spannableStringBuilder.delete(i9, i10);
                        spannableStringBuilder.setSpan(new C4623(m46602, subSequence.toString()), i6, i9, 33);
                        i8 = subSequence.length() + i8;
                        i6 = i9;
                    }
                    i7++;
                    i5 = -1;
                }
                break;
            default:
                return;
        }
        ArrayList m4664 = m4664(list2, str, c1730);
        for (int i11 = 0; i11 < m4664.size(); i11++) {
            C1722 c1722 = ((C1726) m4664.get(i11)).f7064;
            int i12 = c1722.f7054;
            if (i12 == -1 && c1722.f7044 == -1) {
                i = -1;
            } else {
                i = (c1722.f7044 == 1 ? (char) 2 : (char) 0) | (i12 == 1 ? (char) 1 : (char) 0);
            }
            if (i != -1) {
                int i13 = c1722.f7054;
                if (i13 == -1 && c1722.f7044 == -1) {
                    i3 = -1;
                    i2 = 1;
                } else {
                    i2 = 1;
                    i3 = (i13 == 1 ? 1 : 0) | (c1722.f7044 == 1 ? 2 : 0);
                }
                ᵎﹶ.ᵔᵢ(spannableStringBuilder, new StyleSpan(i3), i4, length);
            } else {
                i2 = 1;
            }
            if (c1722.f7042 == i2) {
                spannableStringBuilder.setSpan(new StrikethroughSpan(), i4, length, 33);
            }
            if (c1722.f7047 == i2) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i4, length, 33);
            }
            if (c1722.f7048) {
                if (!c1722.f7048) {
                    throw new IllegalStateException("Font color not defined");
                }
                ᵎﹶ.ᵔᵢ(spannableStringBuilder, new ForegroundColorSpan(c1722.f7055), i4, length);
            }
            if (c1722.f7039) {
                if (!c1722.f7039) {
                    throw new IllegalStateException("Background color not defined.");
                }
                ᵎﹶ.ᵔᵢ(spannableStringBuilder, new BackgroundColorSpan(c1722.f7050), i4, length);
            }
            if (c1722.f7046 != null) {
                ᵎﹶ.ᵔᵢ(spannableStringBuilder, new TypefaceSpan(c1722.f7046), i4, length);
            }
            int i14 = c1722.f7049;
            if (i14 == 1) {
                ᵎﹶ.ᵔᵢ(spannableStringBuilder, new AbsoluteSizeSpan((int) c1722.f7045, true), i4, length);
            } else if (i14 == 2) {
                ᵎﹶ.ᵔᵢ(spannableStringBuilder, new RelativeSizeSpan(c1722.f7045), i4, length);
            } else if (i14 == 3) {
                ᵎﹶ.ᵔᵢ(spannableStringBuilder, new RelativeSizeSpan(c1722.f7045 / 100.0f), i4, length);
            }
            if (c1722.f7051) {
                spannableStringBuilder.setSpan(new Object(), i4, length, 33);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x01de, code lost:
    
        switch(r10) {
            case 0: goto L123;
            case 1: goto L122;
            case 2: goto L121;
            case 3: goto L120;
            default: goto L119;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x01e1, code lost:
    
        p305.AbstractC3731.m7850("WebvttCueParser", "ignoring unsupported entity: '&" + r7 + ";'");
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0209, code lost:
    
        if (r6 != r15) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x020b, code lost:
    
        r3.append((java.lang.CharSequence) " ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x020e, code lost:
    
        r7 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x01fa, code lost:
    
        r3.append(' ');
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x01fe, code lost:
    
        r3.append('&');
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0202, code lost:
    
        r3.append('<');
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0206, code lost:
    
        r3.append('>');
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:64:0x00a4. Please report as an issue. */
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.text.SpannedString m4666(java.lang.String r18, java.lang.String r19, java.util.List r20) {
        /*
            Method dump skipped, instructions count: 654
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p084.AbstractC1721.m4666(java.lang.String, java.lang.String, java.util.List):android.text.SpannedString");
    }
}

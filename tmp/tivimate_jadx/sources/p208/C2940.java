package p208;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
import p081.C1718;
import p082.AbstractC1719;
import p152.AbstractC2444;
import p170.C2617;
import p394.AbstractC4710;
import p435.AbstractC5143;
import ˈˊ.ˉˆ;

/* renamed from: ˎᵢ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2940 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final String f11159;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f11160;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f11161;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f11162;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final List f11163;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final String f11164;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f11165;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f11166;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final ArrayList f11167;

    public C2940(String str, String str2, String str3, String str4, int i, ArrayList arrayList, ArrayList arrayList2, String str5, String str6) {
        this.f11166 = str;
        this.f11165 = str2;
        this.f11160 = str3;
        this.f11161 = str4;
        this.f11162 = i;
        this.f11167 = arrayList;
        this.f11163 = arrayList2;
        this.f11164 = str5;
        this.f11159 = str6;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C2940) && AbstractC2444.m5562(((C2940) obj).f11159, this.f11159);
    }

    public final int hashCode() {
        return this.f11159.hashCode();
    }

    public final String toString() {
        return this.f11159;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ArrayList m6466() {
        int length = this.f11166.length() + 3;
        String str = this.f11159;
        int m10118 = AbstractC5143.m10118(str, '/', length, 4);
        int m9428 = AbstractC4710.m9428(m10118, str.length(), str, "?#");
        ArrayList arrayList = new ArrayList();
        while (m10118 < m9428) {
            int i = m10118 + 1;
            int m9430 = AbstractC4710.m9430(str, '/', i, m9428);
            arrayList.add(str.substring(i, m9430));
            m10118 = m9430;
        }
        return arrayList;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String m6467() {
        if (this.f11163 == null) {
            return null;
        }
        String str = this.f11159;
        int m10118 = AbstractC5143.m10118(str, '?', 0, 6) + 1;
        return str.substring(m10118, AbstractC4710.m9430(str, '#', m10118, str.length()));
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final String m6468() {
        if (this.f11165.length() == 0) {
            return "";
        }
        int length = this.f11166.length() + 3;
        String str = this.f11159;
        return str.substring(length, AbstractC4710.m9428(length, str.length(), str, ":@"));
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final String m6469() {
        C2617 c2617;
        try {
            c2617 = new C2617();
            c2617.m5874(this, "/...");
        } catch (IllegalArgumentException unused) {
            c2617 = null;
        }
        c2617.getClass();
        c2617.f9914 = AbstractC1719.m4659("", 0, 0, " \"':;<=>@[]^`{}|/\\?#", 123);
        c2617.f9915 = AbstractC1719.m4659("", 0, 0, " \"':;<=>@[]^`{}|/\\?#", 123);
        return c2617.m5875().f11159;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final URI m6470() {
        String substring;
        C2617 c2617 = new C2617();
        ArrayList arrayList = (ArrayList) c2617.f9916;
        String str = this.f11166;
        c2617.f9913 = str;
        c2617.f9914 = m6468();
        c2617.f9915 = m6472();
        c2617.f9920 = this.f11161;
        int i = str.equals("http") ? 80 : str.equals("https") ? 443 : -1;
        int i2 = this.f11162;
        c2617.f9918 = i2 != i ? i2 : -1;
        arrayList.clear();
        arrayList.addAll(m6466());
        String m6467 = m6467();
        c2617.f9917 = m6467 != null ? C2617.m5868(AbstractC1719.m4659(m6467, 0, 0, " \"'<>#", 83)) : null;
        if (this.f11164 == null) {
            substring = null;
        } else {
            String str2 = this.f11159;
            substring = str2.substring(AbstractC5143.m10118(str2, '#', 0, 6) + 1);
        }
        c2617.f9912 = substring;
        String str3 = (String) c2617.f9920;
        c2617.f9920 = str3 != null ? Pattern.compile("[\"<>^`{|}]").matcher(str3).replaceAll("") : null;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            arrayList.set(i3, AbstractC1719.m4659((String) arrayList.get(i3), 0, 0, "[]", 99));
        }
        ArrayList arrayList2 = (ArrayList) c2617.f9917;
        if (arrayList2 != null) {
            int size2 = arrayList2.size();
            for (int i4 = 0; i4 < size2; i4++) {
                String str4 = (String) arrayList2.get(i4);
                arrayList2.set(i4, str4 != null ? AbstractC1719.m4659(str4, 0, 0, "\\^`{|}", 67) : null);
            }
        }
        String str5 = (String) c2617.f9912;
        c2617.f9912 = str5 != null ? AbstractC1719.m4659(str5, 0, 0, " \"#<>\\^`{|}", 35) : null;
        String c26172 = c2617.toString();
        try {
            return new URI(c26172);
        } catch (URISyntaxException e) {
            try {
                return URI.create(Pattern.compile("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]").matcher(c26172).replaceAll(""));
            } catch (Exception unused) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String m6471() {
        int length = this.f11166.length() + 3;
        String str = this.f11159;
        int m10118 = AbstractC5143.m10118(str, '/', length, 4);
        return str.substring(m10118, AbstractC4710.m9428(m10118, str.length(), str, "?#"));
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String m6472() {
        if (this.f11160.length() == 0) {
            return "";
        }
        int length = this.f11166.length() + 3;
        String str = this.f11159;
        return str.substring(AbstractC5143.m10118(str, ':', length, 4) + 1, AbstractC5143.m10118(str, '@', 0, 6));
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final String m6473(String str) {
        List list = this.f11163;
        if (list == null) {
            return null;
        }
        C1718 c1718 = ˉˆ.ᴵᵔ(ˉˆ.ˉٴ(0, list.size()), 2);
        int i = c1718.f7020;
        int i2 = c1718.f7021;
        int i3 = c1718.f7019;
        if ((i3 <= 0 || i > i2) && (i3 >= 0 || i2 > i)) {
            return null;
        }
        while (!str.equals(list.get(i))) {
            if (i == i2) {
                return null;
            }
            i += i3;
        }
        return (String) list.get(i + 1);
    }
}

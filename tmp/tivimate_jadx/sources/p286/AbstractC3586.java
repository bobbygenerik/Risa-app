package p286;

import android.os.Build;
import android.support.v4.media.session.ⁱˊ;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import p035.AbstractC1219;
import p035.AbstractC1220;
import p035.AbstractC1241;
import p121.AbstractC2026;
import p126.InterfaceC2136;
import p126.InterfaceC2139;
import p152.AbstractC2444;
import p153.C2469;
import p255.C3359;
import p255.C3368;
import p316.AbstractC3902;
import p329.InterfaceC4106;
import p391.C4633;
import p391.C4634;
import p391.C4640;
import p417.InterfaceC4930;
import p417.InterfaceC4932;
import p430.AbstractC5099;
import p430.AbstractC5114;
import p430.C5109;
import p430.C5113;
import p435.AbstractC5143;
import p435.AbstractC5148;
import p435.AbstractC5152;
import ʻٴ.ˑﹳ;
import ˈˋ.ʾˊ;
import ﹳˋ.ٴﹶ;

/* renamed from: ٴˑ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3586 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final String[] f14013 = {"tokenize=", "compress=", "content=", "languageid=", "matchinfo=", "notindexed=", "order=", "prefix=", "uncompress="};

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final int m7530(InterfaceC4932 interfaceC4932) {
        InterfaceC4930 mo3415 = interfaceC4932.mo3415("SELECT changes()");
        try {
            mo3415.mo3392();
            int i = (int) mo3415.getLong(0);
            ٴﹶ.ᵔᵢ(mo3415, (Throwable) null);
            return i;
        } finally {
        }
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static final C3577 m7531(InterfaceC4932 interfaceC4932, String str, boolean z) {
        InterfaceC4930 mo3415 = interfaceC4932.mo3415("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int m7543 = m7543(mo3415, "seqno");
            int m75432 = m7543(mo3415, "cid");
            int m75433 = m7543(mo3415, "name");
            int m75434 = m7543(mo3415, "desc");
            if (m7543 != -1 && m75432 != -1 && m75433 != -1 && m75434 != -1) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                while (mo3415.mo3392()) {
                    if (((int) mo3415.getLong(m75432)) >= 0) {
                        int i = (int) mo3415.getLong(m7543);
                        String mo3394 = mo3415.mo3394(m75433);
                        String str2 = mo3415.getLong(m75434) > 0 ? "DESC" : "ASC";
                        linkedHashMap.put(Integer.valueOf(i), mo3394);
                        linkedHashMap2.put(Integer.valueOf(i), str2);
                    }
                }
                List m10016 = AbstractC5099.m10016(linkedHashMap.entrySet(), new ˑﹳ(11));
                ArrayList arrayList = new ArrayList(AbstractC5114.m10060(m10016, 10));
                Iterator it = m10016.iterator();
                while (it.hasNext()) {
                    arrayList.add((String) ((Map.Entry) it.next()).getValue());
                }
                List m10020 = AbstractC5099.m10020(arrayList);
                List m100162 = AbstractC5099.m10016(linkedHashMap2.entrySet(), new ˑﹳ(12));
                ArrayList arrayList2 = new ArrayList(AbstractC5114.m10060(m100162, 10));
                Iterator it2 = m100162.iterator();
                while (it2.hasNext()) {
                    arrayList2.add((String) ((Map.Entry) it2.next()).getValue());
                }
                C3577 c3577 = new C3577(str, z, m10020, AbstractC5099.m10020(arrayList2));
                ٴﹶ.ᵔᵢ(mo3415, (Throwable) null);
                return c3577;
            }
            ٴﹶ.ᵔᵢ(mo3415, (Throwable) null);
            return null;
        } finally {
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final boolean m7532(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        if (str.length() != 0) {
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                if (i < str.length()) {
                    char charAt = str.charAt(i);
                    int i4 = i3 + 1;
                    if (i3 == 0 && charAt != '(') {
                        break;
                    }
                    if (charAt == '(') {
                        i2++;
                    } else if (charAt == ')' && i2 - 1 == 0 && i3 != str.length() - 1) {
                        break;
                    }
                    i++;
                    i3 = i4;
                } else if (i2 == 0) {
                    return AbstractC2444.m5562(AbstractC5143.m10114(str.substring(1, str.length() - 1)).toString(), str2);
                }
            }
        }
        return false;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final Set m7533(String str) {
        if (str.length() == 0) {
            return C5113.f19217;
        }
        String substring = str.substring(AbstractC5143.m10118(str, '(', 0, 6) + 1, AbstractC5143.m10119(str, ')', 0, 6));
        ArrayList arrayList = new ArrayList();
        C5109 c5109 = new C5109();
        int i = -1;
        int i2 = 0;
        int i3 = 0;
        while (i2 < substring.length()) {
            char charAt = substring.charAt(i2);
            int i4 = i3 + 1;
            if (charAt != '\"' && charAt != '\'') {
                if (charAt != ',') {
                    if (charAt != '[') {
                        if (charAt != ']') {
                            if (charAt != '`') {
                            }
                        } else if (!c5109.isEmpty()) {
                            Character ch = (Character) (c5109.isEmpty() ? null : c5109.f19214[c5109.f19213]);
                            if (ch != null && ch.charValue() == '[') {
                                AbstractC5099.m10019(c5109);
                            }
                        }
                    } else if (c5109.isEmpty()) {
                        c5109.addFirst(Character.valueOf(charAt));
                    }
                } else if (c5109.isEmpty()) {
                    String substring2 = substring.substring(i + 1, i3);
                    int length = substring2.length() - 1;
                    int i5 = 0;
                    boolean z = false;
                    while (i5 <= length) {
                        boolean z2 = AbstractC2444.m5563(substring2.charAt(!z ? i5 : length), 32) <= 0;
                        if (z) {
                            if (!z2) {
                                break;
                            }
                            length--;
                        } else if (z2) {
                            i5++;
                        } else {
                            z = true;
                        }
                    }
                    arrayList.add(substring2.subSequence(i5, length + 1).toString());
                    i = i3;
                }
                i2++;
                i3 = i4;
            }
            if (c5109.isEmpty()) {
                c5109.addFirst(Character.valueOf(charAt));
            } else {
                Character ch2 = (Character) (c5109.isEmpty() ? null : c5109.f19214[c5109.f19213]);
                if (ch2 != null && ch2.charValue() == charAt) {
                    AbstractC5099.m10019(c5109);
                }
            }
            i2++;
            i3 = i4;
        }
        arrayList.add(AbstractC5143.m10114(substring.substring(i + 1)).toString());
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayList.get(i6);
            i6++;
            String str2 = (String) obj;
            int i7 = 0;
            while (true) {
                if (i7 >= 9) {
                    break;
                }
                if (AbstractC5152.m10150(str2, f14013[i7], false)) {
                    arrayList2.add(obj);
                    break;
                }
                i7++;
            }
        }
        return AbstractC5099.m10031(arrayList2);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final void m7534(InterfaceC4932 interfaceC4932) {
        C4634 m5056 = AbstractC2026.m5056();
        InterfaceC4930 mo3415 = interfaceC4932.mo3415("SELECT name FROM sqlite_master WHERE type = 'trigger'");
        while (mo3415.mo3392()) {
            try {
                m5056.add(mo3415.mo3394(0));
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    ٴﹶ.ᵔᵢ(mo3415, th);
                    throw th2;
                }
            }
        }
        ٴﹶ.ᵔᵢ(mo3415, (Throwable) null);
        ListIterator listIterator = AbstractC2026.m5061(m5056).listIterator(0);
        while (true) {
            C4640 c4640 = (C4640) listIterator;
            if (!c4640.hasNext()) {
                return;
            }
            String str = (String) c4640.next();
            if (AbstractC5152.m10150(str, "room_fts_content_sync_", false)) {
                ⁱˊ.ˑﹳ(interfaceC4932, "DROP TRIGGER IF EXISTS ".concat(str));
            }
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static C3581 m7535(InterfaceC4932 interfaceC4932, String str) {
        C4633 c4633 = new C4633();
        InterfaceC4930 mo3415 = interfaceC4932.mo3415("PRAGMA table_info(`" + str + "`)");
        try {
            if (mo3415.mo3392()) {
                int m7543 = m7543(mo3415, "name");
                do {
                    c4633.add(mo3415.mo3394(m7543));
                } while (mo3415.mo3392());
            }
            ٴﹶ.ᵔᵢ(mo3415, (Throwable) null);
            C4633 c46332 = ʾˊ.ˈ(c4633);
            mo3415 = interfaceC4932.mo3415("SELECT * FROM sqlite_master WHERE `name` = '" + str + '\'');
            try {
                String mo3394 = mo3415.mo3392() ? mo3415.mo3394(m7543(mo3415, "sql")) : "";
                ٴﹶ.ᵔᵢ(mo3415, (Throwable) null);
                return new C3581(str, c46332, m7533(mo3394));
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } finally {
            }
        }
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static final List m7536(InterfaceC4930 interfaceC4930) {
        int m7543 = m7543(interfaceC4930, "id");
        int m75432 = m7543(interfaceC4930, "seq");
        int m75433 = m7543(interfaceC4930, "from");
        int m75434 = m7543(interfaceC4930, "to");
        C4634 m5056 = AbstractC2026.m5056();
        while (interfaceC4930.mo3392()) {
            m5056.add(new C3580((int) interfaceC4930.getLong(m7543), (int) interfaceC4930.getLong(m75432), interfaceC4930.mo3394(m75433), interfaceC4930.mo3394(m75434)));
        }
        return AbstractC5099.m10024(AbstractC2026.m5061(m5056));
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final String m7537(Collection collection) {
        if (collection.isEmpty()) {
            return " }";
        }
        return AbstractC5148.m10141(AbstractC5099.m10034(collection, ",\n", "\n", "\n", null, 56)) + "},";
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static final Object m7538(AbstractC1219 abstractC1219, boolean z, boolean z2, InterfaceC4106 interfaceC4106) {
        abstractC1219.m3767();
        if (!abstractC1219.m3760() || abstractC1219.m3762() || abstractC1219.f4717.get() == null) {
            return ˉᵎ.ⁱˊ.ᵎˊ(new C3584(abstractC1219, z2, z, interfaceC4106, (InterfaceC2136) null));
        }
        throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final InterfaceC2139 m7539(AbstractC1219 abstractC1219, boolean z, AbstractC3902 abstractC3902) {
        if (!abstractC1219.m3760()) {
            C2469 c2469 = abstractC1219.f4726;
            return (c2469 != null ? c2469 : null).f9439;
        }
        if (abstractC3902.mo3551().mo3419(AbstractC1241.f4820) != null) {
            throw new ClassCastException();
        }
        if (!z) {
            C2469 c24692 = abstractC1219.f4726;
            return (c24692 != null ? c24692 : null).f9439;
        }
        InterfaceC2139 interfaceC2139 = abstractC1219.f4725;
        if (interfaceC2139 == null) {
            return null;
        }
        return interfaceC2139;
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x01dd, code lost:
    
        r0 = ˈˋ.ʾˊ.ˈ(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01e1, code lost:
    
        ﹳˋ.ٴﹶ.ᵔᵢ(r2, (java.lang.Throwable) null);
        r10 = r0;
     */
    /* JADX WARN: Finally extract failed */
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p286.C3579 m7540(p417.InterfaceC4932 r31, java.lang.String r32) {
        /*
            Method dump skipped, instructions count: 519
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p286.AbstractC3586.m7540(ﹳᴵ.ﹳٴ, java.lang.String):ٴˑ.ˆʾ");
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final long m7541(InterfaceC4932 interfaceC4932) {
        if (m7530(interfaceC4932) == 0) {
            return -1L;
        }
        InterfaceC4930 mo3415 = interfaceC4932.mo3415("SELECT last_insert_rowid()");
        try {
            mo3415.mo3392();
            long j = mo3415.getLong(0);
            ٴﹶ.ᵔᵢ(mo3415, (Throwable) null);
            return j;
        } finally {
        }
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static final void m7542(C3359 c3359, InterfaceC4106 interfaceC4106) {
        C3368 c3368 = new C3368(999);
        int i = c3359.f13167;
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            c3368.put(c3359.m7225(i2), c3359.m7220(i2));
            i2++;
            i3++;
            if (i3 == 999) {
                interfaceC4106.mo3844(c3368);
                c3368.clear();
                i3 = 0;
            }
        }
        if (i3 > 0) {
            interfaceC4106.mo3844(c3368);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final int m7543(InterfaceC4930 interfaceC4930, String str) {
        int columnCount = interfaceC4930.getColumnCount();
        int i = 0;
        while (true) {
            if (i >= columnCount) {
                i = -1;
                break;
            }
            if (str.equals(interfaceC4930.getColumnName(i))) {
                break;
            }
            i++;
        }
        if (i >= 0) {
            return i;
        }
        String m3781 = AbstractC1220.m3781('`', "`", str);
        int columnCount2 = interfaceC4930.getColumnCount();
        int i2 = 0;
        while (true) {
            if (i2 >= columnCount2) {
                i2 = -1;
                break;
            }
            if (m3781.equals(interfaceC4930.getColumnName(i2))) {
                break;
            }
            i2++;
        }
        if (i2 >= 0) {
            return i2;
        }
        if (Build.VERSION.SDK_INT <= 25 && str.length() != 0) {
            int columnCount3 = interfaceC4930.getColumnCount();
            String concat = ".".concat(str);
            String m37812 = AbstractC1220.m3781('`', ".", str);
            for (int i3 = 0; i3 < columnCount3; i3++) {
                String columnName = interfaceC4930.getColumnName(i3);
                if (columnName.length() >= str.length() + 2 && (AbstractC5152.m10147(columnName, concat, false) || (columnName.charAt(0) == '`' && AbstractC5152.m10147(columnName, m37812, false)))) {
                    return i3;
                }
            }
        }
        return -1;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final void m7544(int i, StringBuilder sb) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("?");
            if (i2 < i - 1) {
                sb.append(",");
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0027  */
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m7545(p035.AbstractC1219 r16, boolean r17, boolean r18, p329.InterfaceC4106 r19, p316.AbstractC3902 r20) {
        /*
            r0 = r20
            boolean r1 = r0 instanceof p286.C3578
            if (r1 == 0) goto L16
            r1 = r0
            ٴˑ.ʽ r1 = (p286.C3578) r1
            int r2 = r1.f13975
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L16
            int r2 = r2 - r3
            r1.f13975 = r2
        L14:
            r7 = r1
            goto L1c
        L16:
            ٴˑ.ʽ r1 = new ٴˑ.ʽ
            r1.<init>(r0)
            goto L14
        L1c:
            java.lang.Object r0 = r7.f13971
            int r1 = r7.f13975
            r2 = 3
            r3 = 2
            r8 = 1
            ᵢˎ.ﹳٴ r9 = p373.EnumC4532.f16960
            if (r1 == 0) goto L4d
            if (r1 == r8) goto L49
            if (r1 == r3) goto L39
            if (r1 != r2) goto L31
            p121.AbstractC2026.m5044(r0)
            return r0
        L31:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L39:
            boolean r1 = r7.f13973
            boolean r3 = r7.f13972
            ᴵⁱ.ﾞʻ r4 = r7.f13974
            ʼﾞ.ˊʻ r5 = r7.f13970
            p121.AbstractC2026.m5044(r0)
            r14 = r1
            r13 = r3
            r15 = r4
            r12 = r5
            goto L9c
        L49:
            p121.AbstractC2026.m5044(r0)
            return r0
        L4d:
            p121.AbstractC2026.m5044(r0)
            boolean r0 = r16.m3760()
            if (r0 == 0) goto L7e
            boolean r0 = r16.m3764()
            if (r0 == 0) goto L7e
            boolean r0 = r16.m3762()
            if (r0 == 0) goto L7e
            ٴˑ.ﹳٴ r0 = new ٴˑ.ﹳٴ
            r4 = 0
            r6 = 1
            r3 = r16
            r2 = r17
            r1 = r18
            r5 = r19
            r0.<init>(r1, r2, r3, r4, r5, r6)
            r1 = r2
            r2 = r0
            r0 = r3
            r7.f13975 = r8
            java.lang.Object r0 = r0.m3768(r1, r2, r7)
            if (r0 != r9) goto L7d
            goto Lb1
        L7d:
            return r0
        L7e:
            r0 = r16
            r1 = r17
            r4 = r18
            r7.f13970 = r0
            r5 = r19
            r7.f13974 = r5
            r7.f13972 = r1
            r7.f13973 = r4
            r7.f13975 = r3
            ˈי.ᵔᵢ r3 = m7539(r0, r4, r7)
            if (r3 != r9) goto L97
            goto Lb1
        L97:
            r12 = r0
            r13 = r1
            r0 = r3
            r14 = r4
            r15 = r5
        L9c:
            ˈי.ᵔᵢ r0 = (p126.InterfaceC2139) r0
            ٴˑ.ⁱˊ r10 = new ٴˑ.ⁱˊ
            r11 = 0
            r10.<init>(r11, r12, r13, r14, r15)
            r1 = 0
            r7.f13970 = r1
            r7.f13974 = r1
            r7.f13975 = r2
            java.lang.Object r0 = p324.AbstractC3999.m8164(r0, r10, r7)
            if (r0 != r9) goto Lb2
        Lb1:
            return r9
        Lb2:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p286.AbstractC3586.m7545(ʼﾞ.ˊʻ, boolean, boolean, ᴵⁱ.ﾞʻ, ᴵʾ.ʽ):java.lang.Object");
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final int m7546(InterfaceC4930 interfaceC4930, String str) {
        int m7543 = m7543(interfaceC4930, str);
        if (m7543 >= 0) {
            return m7543;
        }
        int columnCount = interfaceC4930.getColumnCount();
        ArrayList arrayList = new ArrayList(columnCount);
        for (int i = 0; i < columnCount; i++) {
            arrayList.add(interfaceC4930.getColumnName(i));
        }
        throw new IllegalArgumentException("Column '" + str + "' does not exist. Available columns: [" + AbstractC5099.m10034(arrayList, null, null, null, null, 63) + ']');
    }
}

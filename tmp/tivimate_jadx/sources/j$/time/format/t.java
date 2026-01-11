package j$.time.format;

import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.SoftReference;
import java.text.DateFormatSymbols;
import java.util.AbstractMap;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public final class t extends s {
    public static final ConcurrentHashMap i = new ConcurrentHashMap();
    public final TextStyle e;
    public final boolean f;
    public final Map g;
    public final Map h;

    public t(TextStyle textStyle, boolean z) {
        super(j$.time.temporal.p.e, "ZoneText(" + textStyle + ")");
        this.g = new HashMap();
        this.h = new HashMap();
        this.e = (TextStyle) Objects.requireNonNull(textStyle, "textStyle");
        this.f = z;
    }

    @Override // j$.time.format.s
    public final m a(v vVar) {
        m mVar;
        if (this.e == TextStyle.NARROW) {
            return super.a(vVar);
        }
        Locale locale = vVar.a.b;
        boolean z = vVar.b;
        Set set = j$.time.zone.i.d;
        int size = set.size();
        Map map = z ? this.g : this.h;
        Map.Entry entry = (Map.Entry) map.get(locale);
        if (entry != null && ((Integer) entry.getKey()).intValue() == size && (mVar = (m) ((SoftReference) entry.getValue()).get()) != null) {
            return mVar;
        }
        m mVar2 = vVar.b ? new m("", null, null) : new m("", null, null);
        for (String[] strArr : DateFormatSymbols.getInstance(locale).getZoneStrings()) {
            String str = strArr[0];
            if (set.contains(str)) {
                mVar2.a(str, str);
                HashMap hashMap = (HashMap) G.d;
                String str2 = (String) hashMap.get(str);
                if (str2 == null) {
                    HashMap hashMap2 = (HashMap) G.g;
                    if (hashMap2.containsKey(str)) {
                        str = (String) hashMap2.get(str);
                        str2 = (String) hashMap.get(str);
                    }
                }
                if (str2 != null) {
                    Map map2 = (Map) ((HashMap) G.f).get(str2);
                    str = (map2 == null || !map2.containsKey(locale.getCountry())) ? (String) ((HashMap) G.e).get(str2) : (String) map2.get(locale.getCountry());
                }
                HashMap hashMap3 = (HashMap) G.g;
                if (hashMap3.containsKey(str)) {
                    str = (String) hashMap3.get(str);
                }
                for (int i2 = this.e == TextStyle.FULL ? 1 : 2; i2 < strArr.length; i2 += 2) {
                    mVar2.a(strArr[i2], str);
                }
            }
        }
        map.put(locale, new AbstractMap.SimpleImmutableEntry(Integer.valueOf(size), new SoftReference(mVar2)));
        return mVar2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0100  */
    @Override // j$.time.format.s, j$.time.format.InterfaceC5432e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean k(j$.time.format.y r14, java.lang.StringBuilder r15) {
        /*
            Method dump skipped, instructions count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.t.k(j$.time.format.y, java.lang.StringBuilder):boolean");
    }
}

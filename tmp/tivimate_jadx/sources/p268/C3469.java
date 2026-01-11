package p268;

import android.content.Context;
import android.os.Build;
import ar.tvplayer.core.domain.ⁱˊ;
import j$.time.ZoneOffset;
import j$.time.format.DateTimeFormatter;
import j$.util.DateRetargetClass;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import p035.AbstractC1220;
import p126.C2134;
import p126.InterfaceC2136;
import p216.C3011;
import p315.C3896;
import p315.C3899;
import p324.AbstractC3999;
import p329.InterfaceC4106;
import ʼⁱ.ʽⁱ;
import ˑᵢ.ʻˋ;

/* renamed from: ـˎ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3469 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3011 f13631;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C3896 f13630 = new C3896("fire-global");

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C3896 f13628 = new C3896("fire-count");

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C3896 f13629 = new C3896("last-used-date");

    public C3469(Context context, String str) {
        this.f13631 = new C3011(context, AbstractC1220.m3771("FirebaseHeartBeat", str));
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final synchronized ArrayList m7385() {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            String m7386 = m7386(System.currentTimeMillis());
            C3011 c3011 = this.f13631;
            c3011.getClass();
            for (Map.Entry entry : ((Map) AbstractC3999.m8171(C2134.f8324, new ⁱˊ(c3011, (InterfaceC2136) null, 17))).entrySet()) {
                if (entry.getValue() instanceof Set) {
                    HashSet hashSet = new HashSet((Set) entry.getValue());
                    hashSet.remove(m7386);
                    if (!hashSet.isEmpty()) {
                        arrayList.add(new C3471(((C3896) entry.getKey()).f15159, new ArrayList(hashSet)));
                    }
                }
            }
            m7389(System.currentTimeMillis());
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final synchronized String m7386(long j) {
        if (Build.VERSION.SDK_INT >= 26) {
            return DateRetargetClass.toInstant(new Date(j)).atOffset(ZoneOffset.UTC).toLocalDateTime().format(DateTimeFormatter.ISO_LOCAL_DATE);
        }
        return new SimpleDateFormat("yyyy-MM-dd", Locale.UK).format(new Date(j));
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final synchronized C3896 m7387(C3899 c3899, String str) {
        for (Map.Entry entry : c3899.m8080().entrySet()) {
            if (entry.getValue() instanceof Set) {
                Iterator it = ((Set) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (str.equals((String) it.next())) {
                        return new C3896(((C3896) entry.getKey()).f15159);
                    }
                }
            }
        }
        return null;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final synchronized void m7388(final String str, long j) {
        final String m7386 = m7386(j);
        final C3896 c3896 = new C3896(str);
        C3011 c3011 = this.f13631;
        InterfaceC4106 interfaceC4106 = new InterfaceC4106() { // from class: ـˎ.ᵎﹶ
            @Override // p329.InterfaceC4106
            /* renamed from: ⁱˊ */
            public final Object mo3844(Object obj) {
                C3469 c3469 = C3469.this;
                String str2 = m7386;
                String str3 = str;
                C3896 c38962 = c3896;
                C3899 c3899 = (C3899) obj;
                c3469.getClass();
                C3896 c38963 = C3469.f13629;
                if (((String) android.support.v4.media.session.ⁱˊ.ʼˎ(c3899, c38963, "")).equals(str2)) {
                    C3896 m7387 = c3469.m7387(c3899, str2);
                    if (m7387 == null || m7387.f15159.equals(str3)) {
                        return null;
                    }
                    synchronized (c3469) {
                        c3469.m7392(c3899, str2);
                        HashSet hashSet = new HashSet((Collection) android.support.v4.media.session.ⁱˊ.ʼˎ(c3899, c38962, new HashSet()));
                        hashSet.add(str2);
                        c3899.m8078(c38962, hashSet);
                    }
                    return null;
                }
                C3896 c38964 = C3469.f13628;
                long longValue = ((Long) android.support.v4.media.session.ⁱˊ.ʼˎ(c3899, c38964, 0L)).longValue();
                if (longValue + 1 == 30) {
                    longValue = c3469.m7391(c3899);
                }
                HashSet hashSet2 = new HashSet((Collection) android.support.v4.media.session.ⁱˊ.ʼˎ(c3899, c38962, new HashSet()));
                hashSet2.add(str2);
                c3899.m8078(c38962, hashSet2);
                c3899.m8078(c38964, Long.valueOf(longValue + 1));
                c3899.m8078(c38963, str2);
                return null;
            }
        };
        c3011.getClass();
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final synchronized void m7389(long j) {
        C3011 c3011 = this.f13631;
        ʻˋ r1 = new ʻˋ(3, j);
        c3011.getClass();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final synchronized void m7390() {
        C3011 c3011 = this.f13631;
        ʽⁱ r1 = new ʽⁱ(25, this);
        c3011.getClass();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final synchronized long m7391(C3899 c3899) {
        long j;
        try {
            long longValue = ((Long) android.support.v4.media.session.ⁱˊ.ʼˎ(c3899, f13628, 0L)).longValue();
            String str = "";
            Set hashSet = new HashSet();
            String str2 = null;
            for (Map.Entry entry : c3899.m8080().entrySet()) {
                if (entry.getValue() instanceof Set) {
                    Set<String> set = (Set) entry.getValue();
                    for (String str3 : set) {
                        if (str2 != null && str2.compareTo(str3) <= 0) {
                        }
                        str = ((C3896) entry.getKey()).f15159;
                        hashSet = set;
                        str2 = str3;
                    }
                }
            }
            HashSet hashSet2 = new HashSet(hashSet);
            hashSet2.remove(str2);
            c3899.m8078(new C3896(str), hashSet2);
            j = longValue - 1;
            c3899.m8078(f13628, Long.valueOf(j));
        } catch (Throwable th) {
            throw th;
        }
        return j;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final synchronized void m7392(C3899 c3899, String str) {
        C3896 m7387 = m7387(c3899, str);
        if (m7387 == null) {
            return;
        }
        HashSet hashSet = new HashSet((Collection) android.support.v4.media.session.ⁱˊ.ʼˎ(c3899, m7387, new HashSet()));
        hashSet.remove(str);
        if (hashSet.isEmpty()) {
            c3899.m8079();
            c3899.f15163.remove(m7387);
        } else {
            c3899.m8078(m7387, hashSet);
        }
    }
}

package p447;

import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import java.io.IOException;
import java.util.Map;
import p035.AbstractC1220;
import p073.C1643;
import p296.AbstractC3659;
import p347.AbstractC4275;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ˊˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC5263 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final String f19869;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f19870 = 1;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final Object f19871;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final Object f19872;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final Object f19873;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f19874;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final Object f19875;

    public /* synthetic */ RunnableC5263(String str, InterfaceC5319 interfaceC5319, int i, IOException iOException, byte[] bArr, Map map) {
        AbstractC3659.m7687(interfaceC5319);
        this.f19871 = interfaceC5319;
        this.f19874 = i;
        this.f19875 = iOException;
        this.f19872 = bArr;
        this.f19869 = str;
        this.f19873 = map;
    }

    public RunnableC5263(C5344 c5344, int i, String str, Object obj, Object obj2, Object obj3) {
        this.f19874 = i;
        this.f19869 = str;
        this.f19871 = obj;
        this.f19875 = obj2;
        this.f19872 = obj3;
        this.f19873 = c5344;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f19870) {
            case 0:
                C5344 c5344 = (C5344) this.f19873;
                C5313 c5313 = ((C5322) ((ᵎﹶ) c5344).ʾˋ).f20205;
                C5322.m10560(c5313);
                if (!c5313.f19908) {
                    c5344.m10727();
                    return;
                }
                if (c5344.f20339 == 0) {
                    C5327 c5327 = ((C5322) ((ᵎﹶ) c5344).ʾˋ).f20189;
                    if (c5327.f20225 == null) {
                        synchronized (c5327) {
                            try {
                                if (c5327.f20225 == null) {
                                    C5322 c5322 = (C5322) ((ᵎﹶ) c5327).ʾˋ;
                                    ApplicationInfo applicationInfo = c5322.f20184.getApplicationInfo();
                                    String m8652 = AbstractC4275.m8652();
                                    if (applicationInfo != null) {
                                        String str = applicationInfo.processName;
                                        c5327.f20225 = Boolean.valueOf(str != null && str.equals(m8652));
                                    }
                                    if (c5327.f20225 == null) {
                                        c5327.f20225 = Boolean.TRUE;
                                        C5344 c53442 = c5322.f20193;
                                        C5322.m10556(c53442);
                                        c53442.f20343.m10217("My process not in the list of running processes");
                                    }
                                }
                            } finally {
                            }
                        }
                    }
                    if (c5327.f20225.booleanValue()) {
                        c5344.f20339 = 'C';
                    } else {
                        c5344.f20339 = 'c';
                    }
                }
                if (c5344.f20341 < 0) {
                    ((C5322) ((ᵎﹶ) c5344).ʾˋ).f20189.m10579();
                    c5344.f20341 = 133005L;
                }
                int i = this.f19874;
                char c = c5344.f20339;
                long j = c5344.f20341;
                String str2 = this.f19869;
                Object obj = this.f19871;
                Object obj2 = this.f19875;
                Object obj3 = this.f19872;
                char charAt = "01VDIWEA?".charAt(i);
                String m10724 = C5344.m10724(true, str2, obj, obj2, obj3);
                StringBuilder sb = new StringBuilder(AbstractC1220.m3796(String.valueOf(charAt).length() + 1, String.valueOf(c).length(), String.valueOf(j).length(), 1) + m10724.length());
                sb.append("2");
                sb.append(charAt);
                sb.append(c);
                sb.append(j);
                sb.append(":");
                sb.append(m10724);
                String sb2 = sb.toString();
                if (sb2.length() > 1024) {
                    sb2 = str2.substring(0, 1024);
                }
                C1643 c1643 = c5313.f20038;
                if (c1643 != null) {
                    String str3 = (String) c1643.f6686;
                    C5313 c53132 = (C5313) c1643.f6684;
                    c53132.ⁱᴵ();
                    if (((C5313) c1643.f6684).m10545().getLong((String) c1643.f6681, 0L) == 0) {
                        c1643.m4503();
                    }
                    if (sb2 == null) {
                        sb2 = "";
                    }
                    SharedPreferences m10545 = c53132.m10545();
                    String str4 = (String) c1643.f6683;
                    long j2 = m10545.getLong(str4, 0L);
                    if (j2 <= 0) {
                        SharedPreferences.Editor edit = c53132.m10545().edit();
                        edit.putString(str3, sb2);
                        edit.putLong(str4, 1L);
                        edit.apply();
                        return;
                    }
                    C5339 c5339 = ((C5322) ((ᵎﹶ) c53132).ʾˋ).f20208;
                    C5322.m10560(c5339);
                    long nextLong = c5339.m10682().nextLong() & Long.MAX_VALUE;
                    long j3 = j2 + 1;
                    long j4 = Long.MAX_VALUE / j3;
                    SharedPreferences.Editor edit2 = c53132.m10545().edit();
                    if (nextLong < j4) {
                        edit2.putString(str3, sb2);
                    }
                    edit2.putLong(str4, j3);
                    edit2.apply();
                    return;
                }
                return;
            default:
                ((InterfaceC5319) this.f19871).mo9153(this.f19869, this.f19874, (Throwable) this.f19875, (byte[]) this.f19872, (Map) this.f19873);
                return;
        }
    }
}

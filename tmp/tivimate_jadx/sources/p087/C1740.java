package p087;

import android.os.SystemClock;
import java.io.Serializable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import p425.C5031;

/* renamed from: ʿٴ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C1740 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public Serializable f7093;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public long f7094;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public long f7095;

    public C1740() {
        this.f7095 = -9223372036854775807L;
        this.f7094 = -9223372036854775807L;
    }

    public C1740(long j) {
        this.f7093 = new LinkedHashMap(100, 0.75f, true);
        this.f7095 = j;
    }

    /* renamed from: ʽ */
    public void mo4507(Object obj, Object obj2) {
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public synchronized Object m4689(Object obj, Object obj2) {
        int mo4509 = mo4509(obj2);
        long j = mo4509;
        if (j >= this.f7095) {
            mo4507(obj, obj2);
            return null;
        }
        if (obj2 != null) {
            this.f7094 += j;
        }
        C1738 c1738 = (C1738) ((LinkedHashMap) this.f7093).put(obj, obj2 == null ? null : new C1738(mo4509, obj2));
        if (c1738 != null) {
            this.f7094 -= c1738.f7090;
            if (!c1738.f7091.equals(obj2)) {
                mo4507(obj, c1738.f7091);
            }
        }
        m4692(this.f7095);
        return c1738 != null ? c1738.f7091 : null;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public void m4690(Exception exc) {
        boolean z;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (((Exception) this.f7093) == null) {
            this.f7093 = exc;
        }
        if (this.f7095 == -9223372036854775807L) {
            synchronized (C5031.f18834) {
                z = C5031.f18833 > 0;
            }
            if (!z) {
                this.f7095 = 200 + elapsedRealtime;
            }
        }
        long j = this.f7095;
        if (j == -9223372036854775807L || elapsedRealtime < j) {
            this.f7094 = elapsedRealtime + 50;
            return;
        }
        Exception exc2 = (Exception) this.f7093;
        if (exc2 != exc) {
            exc2.addSuppressed(exc);
        }
        Exception exc3 = (Exception) this.f7093;
        this.f7093 = null;
        this.f7095 = -9223372036854775807L;
        this.f7094 = -9223372036854775807L;
        throw exc3;
    }

    /* renamed from: ⁱˊ */
    public int mo4509(Object obj) {
        return 1;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public synchronized Object m4691(Object obj) {
        C1738 c1738;
        c1738 = (C1738) ((LinkedHashMap) this.f7093).get(obj);
        return c1738 != null ? c1738.f7091 : null;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public synchronized void m4692(long j) {
        while (this.f7094 > j) {
            Iterator it = ((LinkedHashMap) this.f7093).entrySet().iterator();
            Map.Entry entry = (Map.Entry) it.next();
            C1738 c1738 = (C1738) entry.getValue();
            this.f7094 -= c1738.f7090;
            Object key = entry.getKey();
            it.remove();
            mo4507(key, c1738.f7091);
        }
    }
}

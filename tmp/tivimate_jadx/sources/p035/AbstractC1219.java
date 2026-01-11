package p035;

import android.content.Intent;
import android.database.Cursor;
import android.os.Looper;
import android.support.v4.media.session.ⁱˊ;
import com.bumptech.glide.C0229;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;
import p013.C0910;
import p023.InterfaceC1069;
import p034.InterfaceC1192;
import p034.InterfaceC1195;
import p126.InterfaceC2136;
import p126.InterfaceC2139;
import p152.InterfaceC2449;
import p153.C2469;
import p286.AbstractC3586;
import p301.InterfaceC3702;
import p316.AbstractC3902;
import p329.InterfaceC4087;
import p329.InterfaceC4104;
import p417.InterfaceC4930;
import p417.InterfaceC4932;
import p430.AbstractC5099;
import p430.AbstractC5103;
import p430.AbstractC5114;
import p430.C5097;
import p430.C5113;
import p435.AbstractC5152;
import ʼⁱ.ʽⁱ;
import ˑי.ʽ;
import ﹳˋ.ٴﹶ;

/* renamed from: ʼﾞ.ˊʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1219 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final ThreadLocal f4717;

    /* renamed from: ʽ, reason: contains not printable characters */
    public Executor f4718;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final LinkedHashMap f4719;

    /* renamed from: ˈ, reason: contains not printable characters */
    public ExecutorC1212 f4720;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public C1233 f4721;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public boolean f4722;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final ʽ f4723;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public boolean f4724;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public InterfaceC2139 f4725;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C2469 f4726;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public C1230 f4727;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ˑי.ʽ] */
    public AbstractC1219() {
        ᴵᵔ r1 = new ᴵᵔ(0, this, AbstractC1219.class, "onClosed", "onClosed()V", 0, 0, 0);
        ?? obj = new Object();
        ((ʽ) obj).ʾˋ = r1;
        ((ʽ) obj).ᴵˊ = new AtomicInteger(0);
        ((ʽ) obj).ʽʽ = new AtomicBoolean(false);
        this.f4723 = obj;
        this.f4717 = new ThreadLocal();
        this.f4719 = new LinkedHashMap();
        this.f4722 = true;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static Cursor m3757(AbstractC1219 abstractC1219, C1228 c1228) {
        abstractC1219.m3767();
        if (!abstractC1219.m3760() || abstractC1219.m3762() || abstractC1219.f4717.get() == null) {
            return abstractC1219.m3763().mo3702().mo3709(c1228);
        }
        throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
    }

    /* renamed from: ʼˎ */
    public LinkedHashMap mo1030() {
        int m10040 = AbstractC5103.m10040(AbstractC5114.m10060(C5113.f19217, 10));
        if (m10040 < 16) {
            m10040 = 16;
        }
        return new LinkedHashMap(m10040);
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final Object m3758(InterfaceC4104 interfaceC4104) {
        if (!m3760()) {
            return AbstractC3586.m7538(this, false, true, new ʽⁱ(2, interfaceC4104));
        }
        m3766();
        try {
            Object mo716 = interfaceC4104.mo716();
            m3765();
            return mo716;
        } finally {
            m3769();
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m3759() {
        ʽ r0 = this.f4723;
        synchronized (r0) {
            if (((AtomicBoolean) r0.ʽʽ).compareAndSet(false, true)) {
                do {
                } while (((AtomicInteger) r0.ᴵˊ).get() != 0);
                ((ᴵᵔ) r0.ʾˋ).ʽ();
            }
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final boolean m3760() {
        C1233 c1233 = this.f4721;
        if (c1233 == null) {
            c1233 = null;
        }
        return c1233.m3812() != null;
    }

    /* renamed from: ˈ */
    public List mo1031(LinkedHashMap linkedHashMap) {
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(AbstractC5103.m10040(linkedHashMap.size()));
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            linkedHashMap2.put(((InterfaceC2449) ((InterfaceC3702) entry.getKey())).mo5571(), entry.getValue());
        }
        return C5097.f19202;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m3761(InterfaceC4932 interfaceC4932) {
        C1230 c1230 = this.f4727;
        if (c1230 == null) {
            c1230 = null;
        }
        C1232 c1232 = c1230.f4763;
        c1232.getClass();
        InterfaceC4930 mo3415 = interfaceC4932.mo3415("PRAGMA query_only");
        try {
            mo3415.mo3392();
            boolean mo3390 = mo3415.mo3390();
            ٴﹶ.ᵔᵢ(mo3415, (Throwable) null);
            boolean z = true;
            if (!mo3390) {
                ⁱˊ.ˑﹳ(interfaceC4932, "PRAGMA temp_store = MEMORY");
                ⁱˊ.ˑﹳ(interfaceC4932, "PRAGMA recursive_triggers = 1");
                ⁱˊ.ˑﹳ(interfaceC4932, "DROP TABLE IF EXISTS room_table_modification_log");
                if (c1232.f4779) {
                    ⁱˊ.ˑﹳ(interfaceC4932, "CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
                } else {
                    ⁱˊ.ˑﹳ(interfaceC4932, AbstractC5152.m10146("CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)", "TEMP", "", false));
                }
                C0229 c0229 = c1232.f4783;
                ReentrantLock reentrantLock = (ReentrantLock) c0229.f1646;
                reentrantLock.lock();
                try {
                    c0229.f1644 = true;
                } finally {
                    reentrantLock.unlock();
                }
            }
            synchronized (c1230.f4767) {
                C1243 c1243 = c1230.f4764;
                if (c1243 != null) {
                    Intent intent = c1230.f4762;
                    if (intent == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    if (c1243.f4827.compareAndSet(true, false)) {
                        c1243.f4824.bindService(intent, c1243.f4828, 1);
                        C1230 c12302 = c1243.f4831;
                        C1201 c1201 = c1243.f4823;
                        if (c1201 == null) {
                            z = false;
                        }
                        if (!z) {
                            throw new IllegalStateException("isRemote was false of observer argument");
                        }
                        c12302.m3802(c1201);
                    }
                }
            }
        } finally {
        }
    }

    /* renamed from: ˑﹳ */
    public abstract C1230 mo1032();

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final boolean m3762() {
        return m3764() && m3763().mo3702().mo3718();
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final InterfaceC1192 m3763() {
        C1233 c1233 = this.f4721;
        if (c1233 == null) {
            c1233 = null;
        }
        InterfaceC1192 m3812 = c1233.m3812();
        if (m3812 != null) {
            return m3812;
        }
        throw new IllegalStateException("Cannot return a SupportSQLiteOpenHelper since no SupportSQLiteOpenHelper.Factory was configured with Room.");
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final boolean m3764() {
        C1233 c1233 = this.f4721;
        if (c1233 == null) {
            c1233 = null;
        }
        InterfaceC1195 interfaceC1195 = (InterfaceC1195) c1233.f4791;
        if (interfaceC1195 != null) {
            return interfaceC1195.isOpen();
        }
        return false;
    }

    /* renamed from: ᵔᵢ */
    public Set mo1033() {
        return AbstractC5099.m10031(new ArrayList(AbstractC5114.m10060(C5113.f19217, 10)));
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void m3765() {
        m3763().mo3702().mo3713();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m3766() {
        m3767();
        m3767();
        InterfaceC1195 mo3702 = m3763().mo3702();
        if (!mo3702.mo3718()) {
            C1230 c1230 = this.f4727;
            InterfaceC2136 interfaceC2136 = null;
            if (c1230 == null) {
                c1230 = null;
            }
            c1230.getClass();
            ˉᵎ.ⁱˊ.ᵎˊ(new C1209(c1230, interfaceC2136, 2));
        }
        if (mo3702.mo3716()) {
            mo3702.mo3714();
        } else {
            mo3702.mo3711();
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m3767() {
        if (this.f4724) {
            return;
        }
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final Object m3768(boolean z, InterfaceC4087 interfaceC4087, AbstractC3902 abstractC3902) {
        C1233 c1233 = this.f4721;
        if (c1233 == null) {
            c1233 = null;
        }
        return ((InterfaceC1069) c1233.f4790).mo3412(z, interfaceC4087, abstractC3902);
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m3769() {
        m3763().mo3702().mo3708();
        if (m3762()) {
            return;
        }
        C1230 c1230 = this.f4727;
        if (c1230 == null) {
            c1230 = null;
        }
        c1230.f4763.m3807(c1230.f4772, c1230.f4768);
    }

    /* renamed from: ﾞᴵ */
    public AbstractC1237 mo1034() {
        throw new C0910();
    }
}

package p409;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.measurement.HandlerC0337;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import p098.C1897;
import p229.C3125;
import p255.C3370;
import p296.C3673;
import p296.C3690;
import p319.C3930;
import p319.C3936;
import p347.AbstractC4278;
import p369.AbstractC4503;
import p370.AbstractC4510;
import ˑˊ.ﹳٴ;

/* renamed from: ﹳˊ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4844 implements Handler.Callback {

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public static C4844 f18169;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public C3690 f18172;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public long f18173;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final HandlerC0337 f18174;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C1897 f18175;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final AtomicInteger f18176;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C3930 f18177;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final ConcurrentHashMap f18178;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final C3125 f18179;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f18180;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final Context f18181;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final C3370 f18182;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final AtomicInteger f18183;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final C3370 f18184;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public volatile boolean f18185;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public static final Status f18168 = new Status(4, "Sign-out occurred while this API call was in progress.", null, null);

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public static final Status f18171 = new Status(4, "The user must be signed in to make this API call.", null, null);

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public static final Object f18170 = new Object();

    /* JADX WARN: Type inference failed for: r2v5, types: [android.os.Handler, com.google.android.gms.internal.measurement.ˉٴ] */
    public C4844(Context context, Looper looper) {
        C3930 c3930 = C3930.f15206;
        this.f18173 = 10000L;
        this.f18180 = false;
        this.f18176 = new AtomicInteger(1);
        this.f18183 = new AtomicInteger(0);
        this.f18178 = new ConcurrentHashMap(5, 0.75f, 1);
        this.f18182 = new C3370(0);
        this.f18184 = new C3370(0);
        this.f18185 = true;
        this.f18181 = context;
        ?? handler = new Handler(looper, this);
        Looper.getMainLooper();
        this.f18174 = handler;
        this.f18177 = c3930;
        this.f18179 = new C3125(10);
        PackageManager packageManager = context.getPackageManager();
        if (AbstractC4278.f15862 == null) {
            AbstractC4278.f15862 = Boolean.valueOf(AbstractC4278.m8657() && packageManager.hasSystemFeature("android.hardware.type.automotive"));
        }
        if (AbstractC4278.f15862.booleanValue()) {
            this.f18185 = false;
        }
        handler.sendMessage(handler.obtainMessage(6));
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static C4844 m9652(Context context) {
        C4844 c4844;
        synchronized (f18170) {
            try {
                if (f18169 == null) {
                    Looper looper = C3673.m7696().getLooper();
                    Context applicationContext = context.getApplicationContext();
                    Object obj = C3930.f15205;
                    f18169 = new C4844(applicationContext, looper);
                }
                c4844 = f18169;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c4844;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static Status m9653(C4855 c4855, C3936 c3936) {
        return new Status(17, "API: " + ((String) c4855.f18198.f11941) + " is not available on this device. Connection failed with: " + String.valueOf(c3936), c3936.f15223, c3936);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ba, code lost:
    
        if (r2 != 0) goto L53;
     */
    /* JADX WARN: Removed duplicated region for block: B:168:0x02ea  */
    /* JADX WARN: Type inference failed for: r2v33, types: [ˆˆ.ʽ, ᵢʾ.ʽ] */
    /* JADX WARN: Type inference failed for: r5v2, types: [ˆˆ.ʽ, ᵢʾ.ʽ] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleMessage(android.os.Message r13) {
        /*
            Method dump skipped, instructions count: 1046
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p409.C4844.handleMessage(android.os.Message):boolean");
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C4840 m9654(AbstractC4503 abstractC4503) {
        C4855 c4855 = abstractC4503.f16860;
        ConcurrentHashMap concurrentHashMap = this.f18178;
        C4840 c4840 = (C4840) concurrentHashMap.get(c4855);
        if (c4840 == null) {
            c4840 = new C4840(this, abstractC4503);
            concurrentHashMap.put(c4855, c4840);
        }
        if (c4840.f18153.m9082()) {
            this.f18184.add(c4855);
        }
        c4840.m9639();
        return c4840;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0035, code lost:
    
        if (r1 != 0) goto L28;
     */
    /* JADX WARN: Type inference failed for: r3v0, types: [ˆˆ.ʽ, ᵢʾ.ʽ] */
    /* renamed from: ˈ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9655() {
        /*
            r6 = this;
            ٴﾞ.ﾞʻ r0 = r6.f18172
            if (r0 == 0) goto L55
            int r1 = r0.f14430
            if (r1 > 0) goto L3a
            boolean r1 = r6.f18180
            if (r1 == 0) goto Ld
            goto L52
        Ld:
            java.lang.Class<ٴﾞ.ˆʾ> r1 = ٴﾞ.ˆʾ.class
            monitor-enter(r1)
            ٴﾞ.ˆʾ r2 = ٴﾞ.ˆʾ.ᴵˊ     // Catch: java.lang.Throwable -> L1d
            if (r2 != 0) goto L1f
            ٴﾞ.ˆʾ r2 = new ٴﾞ.ˆʾ     // Catch: java.lang.Throwable -> L1d
            r3 = 0
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L1d
            ٴﾞ.ˆʾ.ᴵˊ = r2     // Catch: java.lang.Throwable -> L1d
            goto L1f
        L1d:
            r0 = move-exception
            goto L38
        L1f:
            ٴﾞ.ˆʾ r2 = ٴﾞ.ˆʾ.ᴵˊ     // Catch: java.lang.Throwable -> L1d
            monitor-exit(r1)
            r2.getClass()
            ˑʼ.ᵎˊ r1 = r6.f18179
            java.lang.Object r1 = r1.f11943
            android.util.SparseIntArray r1 = (android.util.SparseIntArray) r1
            r2 = 203400000(0xc1fa340, float:1.2298041E-31)
            r3 = -1
            int r1 = r1.get(r2, r3)
            if (r1 == r3) goto L3a
            if (r1 != 0) goto L52
            goto L3a
        L38:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L1d
            throw r0
        L3a:
            ˆˆ.ʽ r1 = r6.f18175
            if (r1 != 0) goto L4d
            android.content.Context r1 = r6.f18181
            ٴﾞ.ˉʿ r2 = p296.C3670.f14356
            ˆˆ.ʽ r3 = new ˆˆ.ʽ
            ˑʼ.ᵎˊ r4 = p098.C1897.f7599
            ᵢʾ.ⁱˊ r5 = p369.C4506.f16866
            r3.<init>(r1, r4, r2, r5)
            r6.f18175 = r3
        L4d:
            ˆˆ.ʽ r1 = r6.f18175
            r1.m4838(r0)
        L52:
            r0 = 0
            r6.f18172 = r0
        L55:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p409.C4844.m9655():void");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m9656(C3936 c3936, int i) {
        C3930 c3930 = this.f18177;
        c3930.getClass();
        Context context = this.f18181;
        if (!ﹳٴ.ﾞᴵ(context)) {
            int i2 = c3936.f15226;
            PendingIntent pendingIntent = c3936.f15223;
            if (!((i2 == 0 || pendingIntent == null) ? false : true)) {
                pendingIntent = null;
                Intent m8113 = c3930.m8113(i2, context, null);
                if (m8113 != null) {
                    pendingIntent = PendingIntent.getActivity(context, 0, m8113, 201326592);
                }
            }
            if (pendingIntent != null) {
                int i3 = GoogleApiActivity.f1716;
                Intent intent = new Intent(context, (Class<?>) GoogleApiActivity.class);
                intent.putExtra("pending_intent", pendingIntent);
                intent.putExtra("failing_client_id", i);
                intent.putExtra("notify_manager", true);
                c3930.m8099(context, i2, PendingIntent.getActivity(context, 0, intent, AbstractC4510.f16868 | 134217728));
                return true;
            }
        }
        return false;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m9657(C3936 c3936, int i) {
        if (m9656(c3936, i)) {
            return;
        }
        HandlerC0337 handlerC0337 = this.f18174;
        handlerC0337.sendMessage(handlerC0337.obtainMessage(5, i, 0, c3936));
    }
}

package p428;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import com.parse.ʼᐧ;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.RandomAccess;
import p017.AbstractC0955;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0978;
import p055.C1463;
import p055.C1471;
import p055.C1474;
import p055.C1493;
import p055.C1495;
import p188.C2860;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p392.C4683;
import p420.C4936;

/* renamed from: ﹶʽ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5078 extends AbstractC5070 {

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static final AbstractC0955 f19130 = new C0978(new ʼᐧ(17));

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public C5065 f19131;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public C1471 f19132;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Object f19133;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Context f19134;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public Boolean f19135;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public C5063 f19136;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public Thread f19137;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C2860 f19138;

    public C5078(Context context, C2860 c2860) {
        C5063 c5063 = C5063.f19054;
        this.f19133 = new Object();
        this.f19134 = context != null ? context.getApplicationContext() : null;
        this.f19138 = c2860;
        if (c5063 != null) {
            this.f19136 = c5063;
        } else {
            c5063.getClass();
            C5058 c5058 = new C5058(c5063);
            c5058.m4284(c5063);
            this.f19136 = new C5063(c5058);
        }
        this.f19132 = C1471.f5756;
        if (this.f19136.f19064 && context == null) {
            AbstractC3731.m7850("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static Pair m9979(int i, C5056 c5056, int[][][] iArr, InterfaceC5066 interfaceC5066, Comparator comparator) {
        int i2;
        RandomAccess randomAccess;
        C5056 c50562 = c5056;
        ArrayList arrayList = new ArrayList();
        int i3 = c50562.f19025;
        int i4 = 0;
        while (i4 < i3) {
            if (i == c50562.f19024[i4]) {
                C4936 c4936 = c50562.f19021[i4];
                for (int i5 = 0; i5 < c4936.f18387; i5++) {
                    C1474 m9741 = c4936.m9741(i5);
                    C0956 mo3946 = interfaceC5066.mo3946(i4, m9741, iArr[i4][i5]);
                    int i6 = m9741.f5770;
                    boolean[] zArr = new boolean[i6];
                    int i7 = 0;
                    while (i7 < i6) {
                        AbstractC5059 abstractC5059 = (AbstractC5059) mo3946.get(i7);
                        int mo9967 = abstractC5059.mo9967();
                        if (zArr[i7] || mo9967 == 0) {
                            i2 = i3;
                        } else {
                            if (mo9967 == 1) {
                                randomAccess = AbstractC0993.m3260(abstractC5059);
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(abstractC5059);
                                int i8 = i7 + 1;
                                while (i8 < i6) {
                                    AbstractC5059 abstractC50592 = (AbstractC5059) mo3946.get(i8);
                                    int i9 = i3;
                                    if (abstractC50592.mo9967() == 2 && abstractC5059.mo9966(abstractC50592)) {
                                        arrayList2.add(abstractC50592);
                                        zArr[i8] = true;
                                    }
                                    i8++;
                                    i3 = i9;
                                }
                                randomAccess = arrayList2;
                            }
                            i2 = i3;
                            arrayList.add(randomAccess);
                        }
                        i7++;
                        i3 = i2;
                    }
                }
            }
            i4++;
            c50562 = c5056;
            i3 = i3;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList, comparator);
        int[] iArr2 = new int[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            iArr2[i10] = ((AbstractC5059) list.get(i10)).f19042;
        }
        AbstractC5059 abstractC50593 = (AbstractC5059) list.get(0);
        return Pair.create(new C5069(0, abstractC50593.f19045, iArr2), Integer.valueOf(abstractC50593.f19043));
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m9980(C4936 c4936, C5063 c5063, HashMap hashMap) {
        for (int i = 0; i < c4936.f18387; i++) {
            C1493 c1493 = (C1493) c5063.f5711.get(c4936.m9741(i));
            if (c1493 != null) {
                C1474 c1474 = c1493.f5897;
                C1493 c14932 = (C1493) hashMap.get(Integer.valueOf(c1474.f5766));
                if (c14932 == null || (c14932.f5896.isEmpty() && !c1493.f5896.isEmpty())) {
                    hashMap.put(Integer.valueOf(c1474.f5766), c1493);
                }
            }
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static int m9981(C1495 c1495, String str, boolean z) {
        if (!TextUtils.isEmpty(str) && str.equals(c1495.f5910)) {
            return 4;
        }
        String m9982 = m9982(str);
        String m99822 = m9982(c1495.f5910);
        if (m99822 == null || m9982 == null) {
            return (z && m99822 == null) ? 1 : 0;
        }
        if (m99822.startsWith(m9982) || m9982.startsWith(m99822)) {
            return 3;
        }
        String str2 = AbstractC3712.f14481;
        return m99822.split("-", 2)[0].equals(m9982.split("-", 2)[0]) ? 2 : 0;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static String m9982(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, "und")) {
            return null;
        }
        return str;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m9983(C5063 c5063) {
        boolean equals;
        synchronized (this.f19133) {
            equals = this.f19136.equals(c5063);
            this.f19136 = c5063;
        }
        if (equals) {
            return;
        }
        if (c5063.f19064 && this.f19134 == null) {
            AbstractC3731.m7850("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
        C4683 c4683 = this.f19079;
        if (c4683 != null) {
            c4683.f17615.m7752(10);
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C5063 m9984() {
        C5063 c5063;
        synchronized (this.f19133) {
            c5063 = this.f19136;
        }
        return c5063;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m9985() {
        synchronized (this.f19133) {
            this.f19136.getClass();
        }
    }

    @Override // p428.AbstractC5070
    /* renamed from: ⁱˊ */
    public final void mo9972(C1463 c1463) {
        if (c1463 instanceof C5063) {
            m9983((C5063) c1463);
        }
        C5058 c5058 = new C5058(m9984());
        c5058.m4284(c1463);
        m9983(new C5063(c5058));
    }

    @Override // p428.AbstractC5070
    /* renamed from: ﹳٴ */
    public final void mo9973() {
        C5065 c5065;
        synchronized (this.f19133) {
            try {
                Thread thread = this.f19137;
                if (thread != null) {
                    AbstractC3731.m7848("DefaultTrackSelector is accessed on the wrong thread.", thread == Thread.currentThread());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (Build.VERSION.SDK_INT >= 32 && (c5065 = this.f19131) != null) {
            c5065.m9969();
            this.f19131 = null;
        }
        this.f19079 = null;
        this.f19078 = null;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m9986() {
        boolean z;
        C4683 c4683;
        C5065 c5065;
        synchronized (this.f19133) {
            try {
                z = this.f19136.f19064 && Build.VERSION.SDK_INT >= 32 && (c5065 = this.f19131) != null && c5065.f19071;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z || (c4683 = this.f19079) == null) {
            return;
        }
        c4683.f17615.m7752(10);
    }
}

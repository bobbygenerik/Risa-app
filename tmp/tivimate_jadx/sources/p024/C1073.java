package p024;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.BinderC0452;
import com.google.android.gms.internal.measurement.C0248;
import com.google.android.gms.internal.measurement.C0254;
import com.google.android.gms.internal.measurement.C0297;
import com.google.android.gms.internal.measurement.C0306;
import com.google.android.gms.internal.measurement.C0336;
import com.google.android.gms.internal.measurement.C0373;
import com.google.android.gms.internal.measurement.C0434;
import com.google.android.gms.internal.measurement.C0451;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import p447.InterfaceC5273;

/* renamed from: ʼˏ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1073 implements InterfaceC5273 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ C0248 f4223;

    public C1073(C0248 c0248) {
        this.f4223 = c0248;
    }

    @Override // p447.InterfaceC5273
    /* renamed from: ʼˎ */
    public final void mo2981(Bundle bundle) {
        C0248 c0248 = this.f4223;
        c0248.m1198(new C0336(c0248, bundle, 0));
    }

    @Override // p447.InterfaceC5273
    /* renamed from: ʽ */
    public final void mo2982(String str, String str2, Bundle bundle) {
        C0248 c0248 = this.f4223;
        c0248.m1198(new C0297(c0248, str, str2, bundle, 1));
    }

    @Override // p447.InterfaceC5273
    /* renamed from: ˆʾ */
    public final int mo2983(String str) {
        BinderC0452 binderC0452 = new BinderC0452();
        C0248 c0248 = this.f4223;
        c0248.m1198(new C0451(c0248, str, binderC0452, 1));
        Integer num = (Integer) BinderC0452.m1883(binderC0452.m1884(10000L), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    @Override // p447.InterfaceC5273
    /* renamed from: ˈ */
    public final long mo2984() {
        BinderC0452 binderC0452 = new BinderC0452();
        C0248 c0248 = this.f4223;
        c0248.m1198(new C0373(c0248, binderC0452, 2));
        Long l = (Long) BinderC0452.m1883(binderC0452.m1884(500L), Long.class);
        if (l != null) {
            return l.longValue();
        }
        long nextLong = new Random(System.nanoTime() ^ System.currentTimeMillis()).nextLong();
        int i = c0248.f1734 + 1;
        c0248.f1734 = i;
        return nextLong + i;
    }

    @Override // p447.InterfaceC5273
    /* renamed from: ˉʿ */
    public final String mo2985() {
        BinderC0452 binderC0452 = new BinderC0452();
        C0248 c0248 = this.f4223;
        c0248.m1198(new C0373(c0248, binderC0452, 0));
        return (String) BinderC0452.m1883(binderC0452.m1884(500L), String.class);
    }

    @Override // p447.InterfaceC5273
    /* renamed from: ˉˆ */
    public final void mo2986(String str) {
        C0248 c0248 = this.f4223;
        c0248.m1198(new C0434(c0248, str, 0));
    }

    @Override // p447.InterfaceC5273
    /* renamed from: ˑﹳ */
    public final void mo2987(String str, String str2, Bundle bundle) {
        C0248 c0248 = this.f4223;
        c0248.m1198(new C0297(c0248, str, str2, bundle, 0));
    }

    @Override // p447.InterfaceC5273
    /* renamed from: ٴﹶ */
    public final String mo2988() {
        BinderC0452 binderC0452 = new BinderC0452();
        C0248 c0248 = this.f4223;
        c0248.m1198(new C0373(c0248, binderC0452, 1));
        return (String) BinderC0452.m1883(binderC0452.m1884(50L), String.class);
    }

    @Override // p447.InterfaceC5273
    /* renamed from: ᵎﹶ */
    public final String mo2989() {
        BinderC0452 binderC0452 = new BinderC0452();
        C0248 c0248 = this.f4223;
        c0248.m1198(new C0373(c0248, binderC0452, 4));
        return (String) BinderC0452.m1883(binderC0452.m1884(500L), String.class);
    }

    @Override // p447.InterfaceC5273
    /* renamed from: ᵔʾ */
    public final Map mo2990(String str, String str2, boolean z) {
        BinderC0452 binderC0452 = new BinderC0452();
        C0248 c0248 = this.f4223;
        c0248.m1198(new C0254(c0248, str, str2, z, binderC0452));
        Bundle m1884 = binderC0452.m1884(5000L);
        if (m1884 == null || m1884.size() == 0) {
            return Collections.EMPTY_MAP;
        }
        HashMap hashMap = new HashMap(m1884.size());
        for (String str3 : m1884.keySet()) {
            Object obj = m1884.get(str3);
            if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                hashMap.put(str3, obj);
            }
        }
        return hashMap;
    }

    @Override // p447.InterfaceC5273
    /* renamed from: ᵔᵢ */
    public final List mo2991(String str, String str2) {
        BinderC0452 binderC0452 = new BinderC0452();
        C0248 c0248 = this.f4223;
        c0248.m1198(new C0306(c0248, str, str2, binderC0452));
        List list = (List) BinderC0452.m1883(binderC0452.m1884(5000L), List.class);
        return list == null ? Collections.EMPTY_LIST : list;
    }

    @Override // p447.InterfaceC5273
    /* renamed from: ﾞʻ */
    public final void mo2992(String str) {
        C0248 c0248 = this.f4223;
        c0248.m1198(new C0434(c0248, str, 1));
    }

    @Override // p447.InterfaceC5273
    /* renamed from: ﾞᴵ */
    public final String mo2993() {
        BinderC0452 binderC0452 = new BinderC0452();
        C0248 c0248 = this.f4223;
        c0248.m1198(new C0373(c0248, binderC0452, 3));
        return (String) BinderC0452.m1883(binderC0452.m1884(500L), String.class);
    }
}

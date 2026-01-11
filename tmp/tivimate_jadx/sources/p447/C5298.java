package p447;

import android.os.Bundle;
import java.util.Iterator;
import p255.C3359;
import p255.C3366;
import p255.C3368;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5298 extends AbstractC5237 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C3359 f19978;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public long f19979;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C3359 f19980;

    /* JADX WARN: Type inference failed for: r2v1, types: [יـ.ﹳᐧ, יـ.ˑﹳ] */
    /* JADX WARN: Type inference failed for: r2v2, types: [יـ.ﹳᐧ, יـ.ˑﹳ] */
    public C5298(C5322 c5322) {
        super(c5322);
        this.f19978 = new C3368(0);
        this.f19980 = new C3368(0);
    }

    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public final void m10497(long j, C5351 c5351) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        if (c5351 == null) {
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20350.m10217("Not logging ad exposure. No active activity");
        } else if (j < 1000) {
            C5344 c53442 = c5322.f20193;
            C5322.m10556(c53442);
            c53442.f20350.m10216(Long.valueOf(j), "Not logging ad exposure. Less than 1000 ms. exposure");
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong("_xt", j);
            C5339.m10656(c5351, bundle, true);
            C5253 c5253 = c5322.f20187;
            C5322.m10559(c5253);
            c5253.m10369("am", "_xa", bundle);
        }
    }

    /* renamed from: ʽˑ, reason: contains not printable characters */
    public final void m10498(String str, long j) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        if (str == null || str.length() == 0) {
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20343.m10217("Ad unit id must be a non-empty string");
        } else {
            C5215 c5215 = c5322.f20200;
            C5322.m10556(c5215);
            c5215.m10200(new RunnableC5345(this, str, j, 1));
        }
    }

    /* renamed from: ˋˊ, reason: contains not printable characters */
    public final void m10499(long j) {
        C5356 c5356 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20209;
        C5322.m10559(c5356);
        C5351 m10745 = c5356.m10745(false);
        C3359 c3359 = this.f19980;
        Iterator it = ((C3366) c3359.keySet()).iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            m10500(str, j - ((Long) c3359.get(str)).longValue(), m10745);
        }
        if (!c3359.isEmpty()) {
            m10497(j - this.f19979, m10745);
        }
        m10502(j);
    }

    /* renamed from: יˉ, reason: contains not printable characters */
    public final void m10500(String str, long j, C5351 c5351) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        if (c5351 == null) {
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20350.m10217("Not logging ad unit exposure. No active activity");
        } else {
            if (j < 1000) {
                C5344 c53442 = c5322.f20193;
                C5322.m10556(c53442);
                c53442.f20350.m10216(Long.valueOf(j), "Not logging ad unit exposure. Less than 1000 ms. exposure");
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str);
            bundle.putLong("_xt", j);
            C5339.m10656(c5351, bundle, true);
            C5253 c5253 = c5322.f20187;
            C5322.m10559(c5253);
            c5253.m10369("am", "_xu", bundle);
        }
    }

    /* renamed from: ﹶˎ, reason: contains not printable characters */
    public final void m10501(String str, long j) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        if (str == null || str.length() == 0) {
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20343.m10217("Ad unit id must be a non-empty string");
        } else {
            C5215 c5215 = c5322.f20200;
            C5322.m10556(c5215);
            c5215.m10200(new RunnableC5345(this, str, j, 0));
        }
    }

    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public final void m10502(long j) {
        C3359 c3359 = this.f19980;
        Iterator it = ((C3366) c3359.keySet()).iterator();
        while (it.hasNext()) {
            c3359.put((String) it.next(), Long.valueOf(j));
        }
        if (c3359.isEmpty()) {
            return;
        }
        this.f19979 = j;
    }
}

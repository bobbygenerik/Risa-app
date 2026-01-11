package p262;

import android.text.TextUtils;
import com.google.android.gms.internal.measurement.ᵎ;
import com.google.android.gms.internal.play_billing.י;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import p035.ExecutorC1212;
import p322.AbstractC3964;
import p322.C3959;
import p322.C3965;
import יˋ.ˈ;

/* renamed from: ـʾ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3438 extends י {

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public static final String f13486 = C3965.m8128("WorkContinuationImpl");

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final ArrayList f13487 = new ArrayList();

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final String f13488;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final ArrayList f13489;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final List f13490;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final int f13491;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public boolean f13492;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final C3437 f13493;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public C3959 f13494;

    public C3438(C3437 c3437, String str, int i, List list, int i2) {
        this.f13493 = c3437;
        this.f13488 = str;
        this.f13491 = i;
        this.f13490 = list;
        this.f13489 = new ArrayList(list.size());
        for (int i3 = 0; i3 < list.size(); i3++) {
            if (i == 1 && ((AbstractC3964) list.get(i3)).f15283.f12325 != Long.MAX_VALUE) {
                throw new IllegalArgumentException("Next Schedule Time Override must be used with ExistingPeriodicWorkPolicyUPDATE (preferably) or KEEP");
            }
            String uuid = ((AbstractC3964) list.get(i3)).f15284.toString();
            this.f13489.add(uuid);
            this.f13487.add(uuid);
        }
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public static HashSet m7352(C3438 c3438) {
        HashSet hashSet = new HashSet();
        c3438.getClass();
        return hashSet;
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final C3959 m7353() {
        String str;
        if (this.f13492) {
            C3965.m8127().m8131(f13486, "Already enqueued work ids (" + TextUtils.join(", ", this.f13489) + ")");
        } else {
            C3437 c3437 = this.f13493;
            C3959 c3959 = c3437.f13479.f15340;
            int i = this.f13491;
            if (i == 1) {
                str = "REPLACE";
            } else if (i == 2) {
                str = "KEEP";
            } else if (i == 3) {
                str = "APPEND";
            } else {
                if (i != 4) {
                    throw null;
                }
                str = "APPEND_OR_REPLACE";
            }
            this.f13494 = ᵎ.ᵔʾ(c3959, "EnqueueRunnable_".concat(str), (ExecutorC1212) c3437.f13485.ʾˋ, new ˈ(9, this));
        }
        return this.f13494;
    }
}

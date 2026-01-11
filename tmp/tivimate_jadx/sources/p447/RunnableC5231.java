package p447;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.support.v4.media.session.AbstractC0001;
import com.google.android.gms.internal.measurement.C0499;
import java.util.ArrayList;
import p296.AbstractC3659;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ʽᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC5231 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ BinderC5223 f19667;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f19668;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C5217 f19669;

    public /* synthetic */ RunnableC5231(BinderC5223 binderC5223, C5217 c5217, int i) {
        this.f19668 = i;
        this.f19669 = c5217;
        this.f19667 = binderC5223;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f19668) {
            case 0:
                BinderC5223 binderC5223 = this.f19667;
                binderC5223.f19646.m10649();
                binderC5223.f19646.m10610(this.f19669);
                return;
            case 1:
                BinderC5223 binderC52232 = this.f19667;
                binderC52232.f19646.m10649();
                C5337 c5337 = binderC52232.f19646;
                c5337.mo10495().m10203();
                c5337.m10600();
                C5217 c5217 = this.f19669;
                AbstractC3659.m7687(c5217);
                String str = c5217.f19597;
                AbstractC3659.m7680(str);
                int i = 0;
                if (c5337.m10639().m10577(null, AbstractC5321.f20163)) {
                    c5337.mo10493().getClass();
                    long currentTimeMillis = System.currentTimeMillis();
                    int m10576 = c5337.m10639().m10576(null, AbstractC5321.f20176);
                    c5337.m10639();
                    long longValue = currentTimeMillis - ((Long) AbstractC5321.f20123.m10388(null)).longValue();
                    while (i < m10576 && c5337.m10634(null, longValue)) {
                        i++;
                    }
                } else {
                    c5337.m10639();
                    long intValue = ((Integer) AbstractC5321.f20177.m10388(null)).intValue();
                    while (i < intValue && c5337.m10634(str, 0L)) {
                        i++;
                    }
                }
                if (c5337.m10639().m10577(null, AbstractC5321.f20141)) {
                    c5337.mo10495().m10203();
                    c5337.m10621();
                }
                C5312 c5312 = c5337.f20294;
                int m19 = AbstractC0001.m19(c5217.f19616);
                c5312.ⁱᴵ();
                if (m19 != 2 || C5312.m10542(str)) {
                    return;
                }
                C5304 c5304 = c5312.f19910.f20276;
                C5337.m10599(c5304);
                C0499 m10517 = c5304.m10517(str);
                if (m10517 == null || !m10517.m1963() || m10517.m1970().m1838().isEmpty()) {
                    return;
                }
                c5337.mo10494().f20350.m10216(str, "[sgtm] Going background, trigger client side upload. appId");
                c5337.mo10493().getClass();
                c5337.m10645(str, System.currentTimeMillis());
                return;
            case 2:
                BinderC5223 binderC52233 = this.f19667;
                binderC52233.f19646.m10649();
                C5337 c53372 = binderC52233.f19646;
                c53372.mo10495().m10203();
                c53372.m10600();
                C5217 c52172 = this.f19669;
                AbstractC3659.m7680(c52172.f19597);
                c53372.m10637(c52172);
                return;
            case 3:
                BinderC5223 binderC52234 = this.f19667;
                binderC52234.f19646.m10649();
                C5337 c53373 = binderC52234.f19646;
                if (c53373.f20277 != null) {
                    ArrayList arrayList = new ArrayList();
                    c53373.f20278 = arrayList;
                    arrayList.addAll(c53373.f20277);
                }
                C5257 c5257 = c53373.f20275;
                C5337.m10599(c5257);
                C5322 c5322 = (C5322) ((ᵎﹶ) c5257).ʾˋ;
                C5217 c52173 = this.f19669;
                String str2 = c52173.f19597;
                AbstractC3659.m7687(str2);
                AbstractC3659.m7680(str2);
                c5257.ⁱᴵ();
                c5257.m10466();
                try {
                    SQLiteDatabase m10428 = c5257.m10428();
                    String[] strArr = {str2};
                    int delete = m10428.delete("apps", "app_id=?", strArr) + m10428.delete("events", "app_id=?", strArr) + m10428.delete("events_snapshot", "app_id=?", strArr) + m10428.delete("user_attributes", "app_id=?", strArr) + m10428.delete("conditional_properties", "app_id=?", strArr) + m10428.delete("raw_events", "app_id=?", strArr) + m10428.delete("raw_events_metadata", "app_id=?", strArr) + m10428.delete("queue", "app_id=?", strArr) + m10428.delete("audience_filter_values", "app_id=?", strArr) + m10428.delete("main_event_params", "app_id=?", strArr) + m10428.delete("default_event_params", "app_id=?", strArr) + m10428.delete("trigger_uris", "app_id=?", strArr) + m10428.delete("upload_queue", "app_id=?", strArr);
                    if (c5322.f20189.m10577(null, AbstractC5321.f20107)) {
                        delete += m10428.delete("no_data_mode_events", "app_id=?", strArr);
                    }
                    if (delete > 0) {
                        C5344 c5344 = c5322.f20193;
                        C5322.m10556(c5344);
                        c5344.f20350.m10214(str2, Integer.valueOf(delete), "Reset analytics data. app, records");
                    }
                } catch (SQLiteException e) {
                    C5344 c53442 = c5322.f20193;
                    C5322.m10556(c53442);
                    c53442.f20343.m10214(C5344.m10722(str2), e, "Error resetting analytics data. appId, error");
                }
                if (c52173.f19605) {
                    c53373.m10610(c52173);
                    return;
                }
                return;
            case 4:
                BinderC5223 binderC52235 = this.f19667;
                binderC52235.f19646.m10649();
                C5337 c53374 = binderC52235.f19646;
                c53374.mo10495().m10203();
                c53374.m10600();
                C5217 c52174 = this.f19669;
                AbstractC3659.m7680(c52174.f19597);
                c53374.m10627(c52174);
                c53374.m10635(c52174);
                return;
            case 5:
                C5337 c53375 = this.f19667.f19646;
                c53375.m10649();
                c53375.m10635(this.f19669);
                return;
            default:
                C5337 c53376 = this.f19667.f19646;
                c53376.m10649();
                c53376.m10627(this.f19669);
                return;
        }
    }
}

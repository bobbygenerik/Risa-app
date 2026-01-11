package p262;

import android.os.Build;
import androidx.work.impl.WorkDatabase;
import ar.tvplayer.core.domain.ـˆ;
import com.bumptech.glide.ʽ;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p113.C1974;
import p240.C3210;
import p240.C3216;
import p240.C3231;
import p286.AbstractC3586;
import p322.C3959;
import p322.C3965;
import p322.C3966;
import p322.C3977;
import p322.C3980;
import p322.EnumC3961;
import p329.InterfaceC4106;
import p417.InterfaceC4930;
import p417.InterfaceC4932;
import ᴵˋ.ˊʻ;

/* renamed from: ـʾ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3430 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final String f13452 = C3965.m8128("Schedulers");

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m7321(C3980 c3980, WorkDatabase workDatabase, List list) {
        List list2;
        if (list == null || list.size() == 0) {
            return;
        }
        C3216 mo1026 = workDatabase.mo1026();
        workDatabase.m3766();
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                list2 = (List) AbstractC3586.m7538(mo1026.f12275, true, false, new ـˆ(27));
                m7322(mo1026, c3980.f15339, list2);
            } else {
                list2 = null;
            }
            final int i = c3980.f15342;
            List list3 = (List) AbstractC3586.m7538(mo1026.f12275, true, false, new InterfaceC4106() { // from class: ˑᵎ.יـ
                @Override // p329.InterfaceC4106
                /* renamed from: ⁱˊ */
                public final Object mo3844(Object obj) {
                    int i2;
                    int i3;
                    Integer valueOf;
                    int i4 = i;
                    InterfaceC4930 mo3415 = ((InterfaceC4932) obj).mo3415("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))");
                    try {
                        mo3415.mo3397(1, i4);
                        int m7546 = AbstractC3586.m7546(mo3415, "id");
                        int m75462 = AbstractC3586.m7546(mo3415, "state");
                        int m75463 = AbstractC3586.m7546(mo3415, "worker_class_name");
                        int m75464 = AbstractC3586.m7546(mo3415, "input_merger_class_name");
                        int m75465 = AbstractC3586.m7546(mo3415, "input");
                        int m75466 = AbstractC3586.m7546(mo3415, "output");
                        int m75467 = AbstractC3586.m7546(mo3415, "initial_delay");
                        int m75468 = AbstractC3586.m7546(mo3415, "interval_duration");
                        int m75469 = AbstractC3586.m7546(mo3415, "flex_duration");
                        int m754610 = AbstractC3586.m7546(mo3415, "run_attempt_count");
                        int m754611 = AbstractC3586.m7546(mo3415, "backoff_policy");
                        int m754612 = AbstractC3586.m7546(mo3415, "backoff_delay_duration");
                        int m754613 = AbstractC3586.m7546(mo3415, "last_enqueue_time");
                        int m754614 = AbstractC3586.m7546(mo3415, "minimum_retention_duration");
                        int m754615 = AbstractC3586.m7546(mo3415, "schedule_requested_at");
                        int m754616 = AbstractC3586.m7546(mo3415, "run_in_foreground");
                        int m754617 = AbstractC3586.m7546(mo3415, "out_of_quota_policy");
                        int m754618 = AbstractC3586.m7546(mo3415, "period_count");
                        int m754619 = AbstractC3586.m7546(mo3415, "generation");
                        int m754620 = AbstractC3586.m7546(mo3415, "next_schedule_time_override");
                        int m754621 = AbstractC3586.m7546(mo3415, "next_schedule_time_override_generation");
                        int m754622 = AbstractC3586.m7546(mo3415, "stop_reason");
                        int m754623 = AbstractC3586.m7546(mo3415, "trace_tag");
                        int m754624 = AbstractC3586.m7546(mo3415, "backoff_on_system_interruptions");
                        int m754625 = AbstractC3586.m7546(mo3415, "required_network_type");
                        int m754626 = AbstractC3586.m7546(mo3415, "required_network_request");
                        int m754627 = AbstractC3586.m7546(mo3415, "requires_charging");
                        int m754628 = AbstractC3586.m7546(mo3415, "requires_device_idle");
                        int m754629 = AbstractC3586.m7546(mo3415, "requires_battery_not_low");
                        int m754630 = AbstractC3586.m7546(mo3415, "requires_storage_not_low");
                        int m754631 = AbstractC3586.m7546(mo3415, "trigger_content_update_delay");
                        int m754632 = AbstractC3586.m7546(mo3415, "trigger_max_content_delay");
                        int m754633 = AbstractC3586.m7546(mo3415, "content_uri_triggers");
                        ArrayList arrayList = new ArrayList();
                        while (mo3415.mo3392()) {
                            String mo3394 = mo3415.mo3394(m7546);
                            int i5 = m754614;
                            ArrayList arrayList2 = arrayList;
                            EnumC3961 enumC3961 = ˊʻ.ʾˋ((int) mo3415.getLong(m75462));
                            String mo33942 = mo3415.mo3394(m75463);
                            String mo33943 = mo3415.mo3394(m75464);
                            byte[] blob = mo3415.getBlob(m75465);
                            C3977 c3977 = C3977.f15328;
                            C3977 c39772 = ʽ.ﾞᴵ(blob);
                            C3977 c39773 = ʽ.ﾞᴵ(mo3415.getBlob(m75466));
                            long j = mo3415.getLong(m75467);
                            long j2 = mo3415.getLong(m75468);
                            long j3 = mo3415.getLong(m75469);
                            int i6 = (int) mo3415.getLong(m754610);
                            int i7 = ˊʻ.ʾᵎ((int) mo3415.getLong(m754611));
                            long j4 = mo3415.getLong(m754612);
                            long j5 = mo3415.getLong(m754613);
                            long j6 = mo3415.getLong(i5);
                            int i8 = m754615;
                            long j7 = mo3415.getLong(i8);
                            int i9 = m7546;
                            int i10 = m754616;
                            int i11 = m75462;
                            boolean z = ((int) mo3415.getLong(i10)) != 0;
                            int i12 = m754617;
                            int i13 = m75463;
                            int i14 = ˊʻ.ᵢˏ((int) mo3415.getLong(i12));
                            int i15 = m754618;
                            int i16 = (int) mo3415.getLong(i15);
                            int i17 = m754619;
                            int i18 = (int) mo3415.getLong(i17);
                            long j8 = mo3415.getLong(m754620);
                            int i19 = m754621;
                            int i20 = (int) mo3415.getLong(i19);
                            int i21 = m754622;
                            int i22 = (int) mo3415.getLong(i21);
                            int i23 = m754623;
                            Boolean bool = null;
                            String mo33944 = mo3415.isNull(i23) ? null : mo3415.mo3394(i23);
                            int i24 = m754624;
                            if (mo3415.isNull(i24)) {
                                i2 = i20;
                                i3 = i21;
                                valueOf = null;
                            } else {
                                i2 = i20;
                                i3 = i21;
                                valueOf = Integer.valueOf((int) mo3415.getLong(i24));
                            }
                            if (valueOf != null) {
                                bool = Boolean.valueOf(valueOf.intValue() != 0);
                            }
                            m754624 = i24;
                            int i25 = m754625;
                            Boolean bool2 = bool;
                            int i26 = ˊʻ.ʼʼ((int) mo3415.getLong(i25));
                            int i27 = m754626;
                            C1974 c1974 = ˊʻ.ᵔٴ(mo3415.getBlob(i27));
                            m754625 = i25;
                            int i28 = m754627;
                            boolean z2 = ((int) mo3415.getLong(i28)) != 0;
                            m754627 = i28;
                            int i29 = m754628;
                            boolean z3 = ((int) mo3415.getLong(i29)) != 0;
                            m754628 = i29;
                            int i30 = m754629;
                            boolean z4 = ((int) mo3415.getLong(i30)) != 0;
                            m754629 = i30;
                            int i31 = m754630;
                            int i32 = m754631;
                            int i33 = m754632;
                            m754631 = i32;
                            int i34 = m754633;
                            C3231 c3231 = new C3231(mo3394, enumC3961, mo33942, mo33943, c39772, c39773, j, j2, j3, new C3966(c1974, i26, z2, z3, z4, ((int) mo3415.getLong(i31)) != 0, mo3415.getLong(i32), mo3415.getLong(i33), ˊʻ.ʽ(mo3415.getBlob(i34))), i6, i7, j4, j5, j6, j7, z, i14, i16, i18, j8, i2, i22, mo33944, bool2);
                            m754633 = i34;
                            m754632 = i33;
                            arrayList = arrayList2;
                            arrayList.add(c3231);
                            m754630 = i31;
                            m7546 = i9;
                            m754614 = i5;
                            m754615 = i8;
                            m75463 = i13;
                            m754617 = i12;
                            m754619 = i17;
                            m754621 = i19;
                            m754622 = i3;
                            m754623 = i23;
                            m754626 = i27;
                            m75462 = i11;
                            m754616 = i10;
                            m754618 = i15;
                        }
                        mo3415.close();
                        return arrayList;
                    } catch (Throwable th) {
                        mo3415.close();
                        throw th;
                    }
                }
            });
            m7322(mo1026, c3980.f15339, list3);
            if (list2 != null) {
                list3.addAll(list2);
            }
            List list4 = (List) AbstractC3586.m7538(mo1026.f12275, true, false, new C3210(0));
            workDatabase.m3765();
            workDatabase.m3769();
            if (list3.size() > 0) {
                C3231[] c3231Arr = (C3231[]) list3.toArray(new C3231[list3.size()]);
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    InterfaceC3425 interfaceC3425 = (InterfaceC3425) it.next();
                    if (interfaceC3425.mo7317()) {
                        interfaceC3425.mo7319(c3231Arr);
                    }
                }
            }
            if (list4.size() > 0) {
                C3231[] c3231Arr2 = (C3231[]) list4.toArray(new C3231[list4.size()]);
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    InterfaceC3425 interfaceC34252 = (InterfaceC3425) it2.next();
                    if (!interfaceC34252.mo7317()) {
                        interfaceC34252.mo7319(c3231Arr2);
                    }
                }
            }
        } catch (Throwable th) {
            workDatabase.m3769();
            throw th;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m7322(C3216 c3216, C3959 c3959, List list) {
        if (list.size() > 0) {
            c3959.getClass();
            long currentTimeMillis = System.currentTimeMillis();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                c3216.m7056(((C3231) it.next()).f12341, currentTimeMillis);
            }
        }
    }
}

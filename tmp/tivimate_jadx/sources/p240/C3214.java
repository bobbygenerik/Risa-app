package p240;

import ar.tvplayer.core.data.db.entities.RecordingForPush;
import com.bumptech.glide.ʽ;
import java.util.ArrayList;
import p013.C0907;
import p223.C3056;
import p286.AbstractC3586;
import p322.C3966;
import p322.C3977;
import p322.EnumC3961;
import p329.InterfaceC4106;
import p417.InterfaceC4930;
import p417.InterfaceC4932;
import ˉʾ.ˑʼ;
import ˉʾ.ˑٴ;
import ˉʾ.ᐧˎ;
import ᴵˋ.ˊʻ;

/* renamed from: ˑᵎ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C3214 implements InterfaceC4106 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f12269;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ String f12270;

    public /* synthetic */ C3214(int i, String str) {
        this.f12269 = i;
        this.f12270 = str;
    }

    /* JADX WARN: Type inference failed for: r5v7, types: [java.lang.Object, ˑᵎ.ʼᐧ] */
    @Override // p329.InterfaceC4106
    /* renamed from: ⁱˊ */
    public final Object mo3844(Object obj) {
        InterfaceC4930 mo3415;
        boolean z;
        boolean z2;
        boolean z3;
        C3231 c3231;
        Boolean bool;
        EnumC3961 enumC3961;
        Boolean bool2;
        Boolean bool3;
        int i = this.f12269;
        int i2 = 11;
        int i3 = 10;
        int i4 = 9;
        C0907 c0907 = C0907.f3832;
        int i5 = 1;
        String str = this.f12270;
        switch (i) {
            case 0:
                mo3415 = ((InterfaceC4932) obj).mo3415("SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?");
                try {
                    mo3415.mo3391(1, str);
                    if (mo3415.mo3392()) {
                        z = false;
                        if (((int) mo3415.getLong(0)) != 0) {
                            z2 = true;
                            mo3415.close();
                            return Boolean.valueOf(z2);
                        }
                    } else {
                        z = false;
                    }
                    z2 = z;
                    mo3415.close();
                    return Boolean.valueOf(z2);
                } finally {
                }
            case 1:
                mo3415 = ((InterfaceC4932) obj).mo3415("SELECT work_spec_id FROM dependency WHERE prerequisite_id=?");
                try {
                    mo3415.mo3391(1, str);
                    ArrayList arrayList = new ArrayList();
                    while (mo3415.mo3392()) {
                        arrayList.add(mo3415.mo3394(0));
                    }
                    return arrayList;
                } finally {
                }
            case 2:
                mo3415 = ((InterfaceC4932) obj).mo3415("SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)");
                try {
                    mo3415.mo3391(1, str);
                    if (mo3415.mo3392()) {
                        if (((int) mo3415.getLong(0)) != 0) {
                            z3 = true;
                            mo3415.close();
                            return Boolean.valueOf(z3);
                        }
                    }
                    z3 = false;
                    mo3415.close();
                    return Boolean.valueOf(z3);
                } finally {
                }
            case 3:
                mo3415 = ((InterfaceC4932) obj).mo3415("SELECT long_value FROM Preference where `key`=?");
                try {
                    mo3415.mo3391(1, str);
                    return (!mo3415.mo3392() || mo3415.isNull(0)) ? null : Long.valueOf(mo3415.getLong(0));
                } finally {
                }
            case 4:
                mo3415 = ((InterfaceC4932) obj).mo3415("DELETE FROM SystemIdInfo where work_spec_id=?");
                try {
                    mo3415.mo3391(1, str);
                    mo3415.mo3392();
                    return c0907;
                } finally {
                }
            case 5:
                mo3415 = ((InterfaceC4932) obj).mo3415("SELECT name FROM workname WHERE work_spec_id=?");
                try {
                    mo3415.mo3391(1, str);
                    ArrayList arrayList2 = new ArrayList();
                    while (mo3415.mo3392()) {
                        arrayList2.add(mo3415.mo3394(0));
                    }
                    return arrayList2;
                } finally {
                }
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                mo3415 = ((InterfaceC4932) obj).mo3415("DELETE from WorkProgress where work_spec_id=?");
                try {
                    mo3415.mo3391(1, str);
                    mo3415.mo3392();
                    return c0907;
                } finally {
                }
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                mo3415 = ((InterfaceC4932) obj).mo3415("SELECT * FROM workspec WHERE id=?");
                try {
                    mo3415.mo3391(1, str);
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
                    if (mo3415.mo3392()) {
                        String mo3394 = mo3415.mo3394(m7546);
                        EnumC3961 enumC39612 = ˊʻ.ʾˋ((int) mo3415.getLong(m75462));
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
                        long j6 = mo3415.getLong(m754614);
                        long j7 = mo3415.getLong(m754615);
                        boolean z4 = ((int) mo3415.getLong(m754616)) != 0;
                        int i8 = ˊʻ.ᵢˏ((int) mo3415.getLong(m754617));
                        int i9 = (int) mo3415.getLong(m754618);
                        int i10 = (int) mo3415.getLong(m754619);
                        long j8 = mo3415.getLong(m754620);
                        int i11 = (int) mo3415.getLong(m754621);
                        int i12 = (int) mo3415.getLong(m754622);
                        String mo33944 = mo3415.isNull(m754623) ? null : mo3415.mo3394(m754623);
                        Integer valueOf = mo3415.isNull(m754624) ? null : Integer.valueOf((int) mo3415.getLong(m754624));
                        if (valueOf != null) {
                            bool = Boolean.valueOf(valueOf.intValue() != 0);
                        } else {
                            bool = null;
                        }
                        c3231 = new C3231(mo3394, enumC39612, mo33942, mo33943, c39772, c39773, j, j2, j3, new C3966(ˊʻ.ᵔٴ(mo3415.getBlob(m754626)), ˊʻ.ʼʼ((int) mo3415.getLong(m754625)), ((int) mo3415.getLong(m754627)) != 0, ((int) mo3415.getLong(m754628)) != 0, ((int) mo3415.getLong(m754629)) != 0, ((int) mo3415.getLong(m754630)) != 0, mo3415.getLong(m754631), mo3415.getLong(m754632), ˊʻ.ʽ(mo3415.getBlob(m754633))), i6, i7, j4, j5, j6, j7, z4, i8, i9, i10, j8, i11, i12, mo33944, bool);
                    } else {
                        c3231 = null;
                    }
                    return c3231;
                } finally {
                }
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                mo3415 = ((InterfaceC4932) obj).mo3415("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)");
                try {
                    mo3415.mo3391(1, str);
                    ArrayList arrayList3 = new ArrayList();
                    while (mo3415.mo3392()) {
                        String mo33945 = mo3415.mo3394(0);
                        EnumC3961 enumC39613 = ˊʻ.ʾˋ((int) mo3415.getLong(1));
                        ?? obj2 = new Object();
                        obj2.f12268 = mo33945;
                        obj2.f12267 = enumC39613;
                        arrayList3.add(obj2);
                    }
                    return arrayList3;
                } finally {
                }
            case 9:
                mo3415 = ((InterfaceC4932) obj).mo3415("SELECT state FROM workspec WHERE id=?");
                try {
                    mo3415.mo3391(1, str);
                    if (mo3415.mo3392()) {
                        Integer valueOf2 = mo3415.isNull(0) ? null : Integer.valueOf((int) mo3415.getLong(0));
                        if (valueOf2 != null) {
                            enumC3961 = ˊʻ.ʾˋ(valueOf2.intValue());
                            return enumC3961;
                        }
                    }
                    enumC3961 = null;
                    return enumC3961;
                } finally {
                }
            case 10:
                mo3415 = ((InterfaceC4932) obj).mo3415("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)");
                try {
                    mo3415.mo3391(1, str);
                    ArrayList arrayList4 = new ArrayList();
                    while (mo3415.mo3392()) {
                        arrayList4.add(mo3415.mo3394(0));
                    }
                    return arrayList4;
                } finally {
                }
            case 11:
                InterfaceC4932 interfaceC4932 = (InterfaceC4932) obj;
                mo3415 = interfaceC4932.mo3415("UPDATE workspec SET stop_reason = CASE WHEN state=1 THEN 1 ELSE -256 END, state=5 WHERE id=?");
                try {
                    mo3415.mo3391(1, str);
                    mo3415.mo3392();
                    int m7530 = AbstractC3586.m7530(interfaceC4932);
                    mo3415.close();
                    return Integer.valueOf(m7530);
                } finally {
                }
            case 12:
                InterfaceC4932 interfaceC49322 = (InterfaceC4932) obj;
                mo3415 = interfaceC49322.mo3415("UPDATE workspec SET run_attempt_count=0 WHERE id=?");
                try {
                    mo3415.mo3391(1, str);
                    mo3415.mo3392();
                    int m75302 = AbstractC3586.m7530(interfaceC49322);
                    mo3415.close();
                    return Integer.valueOf(m75302);
                } finally {
                }
            case 13:
                mo3415 = ((InterfaceC4932) obj).mo3415("UPDATE workspec SET period_count=period_count+1 WHERE id=?");
                try {
                    mo3415.mo3391(1, str);
                    mo3415.mo3392();
                    return c0907;
                } finally {
                }
            case 14:
                mo3415 = ((InterfaceC4932) obj).mo3415("SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)");
                try {
                    mo3415.mo3391(1, str);
                    ArrayList arrayList5 = new ArrayList();
                    while (mo3415.mo3392()) {
                        byte[] blob2 = mo3415.getBlob(0);
                        C3977 c39774 = C3977.f15328;
                        arrayList5.add(ʽ.ﾞᴵ(blob2));
                    }
                    return arrayList5;
                } finally {
                }
            case 15:
                InterfaceC4932 interfaceC49323 = (InterfaceC4932) obj;
                mo3415 = interfaceC49323.mo3415("UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?");
                try {
                    mo3415.mo3391(1, str);
                    mo3415.mo3392();
                    int m75303 = AbstractC3586.m7530(interfaceC49323);
                    mo3415.close();
                    return Integer.valueOf(m75303);
                } finally {
                }
            case 16:
                mo3415 = ((InterfaceC4932) obj).mo3415("DELETE FROM workspec WHERE id=?");
                try {
                    mo3415.mo3391(1, str);
                    mo3415.mo3392();
                    return c0907;
                } finally {
                }
            case 17:
                mo3415 = ((InterfaceC4932) obj).mo3415("SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?");
                try {
                    mo3415.mo3391(1, str);
                    ArrayList arrayList6 = new ArrayList();
                    while (mo3415.mo3392()) {
                        arrayList6.add(mo3415.mo3394(0));
                    }
                    return arrayList6;
                } finally {
                }
            case 18:
                mo3415 = ((InterfaceC4932) obj).mo3415("\n        SELECT m.id, m.playlist_id, p.name playlist_name, p.position playlist_position, m.category_id, m.xc_id, m.stalker_id,\n        m.name, length(m.image) image_length, NULL stalker_poster_url, m.rating, m.added_time, m.position_in_playlist, m.is_favorite\n        FROM movies m\n        INNER JOIN playlists p ON m.playlist_id == p.id\n        INNER JOIN movies_fts ON m.id == movies_fts.docid\n        LEFT OUTER JOIN movie_categories c ON m.category_id == c.id\n        WHERE p.is_enabled == 1\n            AND m.deleted_time IS NULL\n            AND c.deleted_time IS NULL\n            AND c.stalker_id IS NULL\n            AND IFNULL(c.is_visible, 1) == 1\n            AND movies_fts MATCH ?\n        LIMIT 10000\n        ");
                try {
                    mo3415.mo3391(1, str);
                    ArrayList arrayList7 = new ArrayList();
                    while (mo3415.mo3392()) {
                        long j9 = mo3415.getLong(0);
                        long j10 = mo3415.getLong(1);
                        String mo33946 = mo3415.mo3394(2);
                        Integer valueOf3 = mo3415.isNull(3) ? null : Integer.valueOf((int) mo3415.getLong(3));
                        Long valueOf4 = mo3415.isNull(4) ? null : Long.valueOf(mo3415.getLong(4));
                        Integer valueOf5 = mo3415.isNull(5) ? null : Integer.valueOf((int) mo3415.getLong(5));
                        Long valueOf6 = mo3415.isNull(6) ? null : Long.valueOf(mo3415.getLong(6));
                        String mo33947 = mo3415.mo3394(7);
                        Integer valueOf7 = mo3415.isNull(8) ? null : Integer.valueOf((int) mo3415.getLong(8));
                        String mo33948 = mo3415.isNull(i4) ? null : mo3415.mo3394(i4);
                        Float valueOf8 = mo3415.isNull(10) ? null : Float.valueOf((float) mo3415.getDouble(10));
                        Long valueOf9 = mo3415.isNull(11) ? null : Long.valueOf(mo3415.getLong(11));
                        Integer valueOf10 = mo3415.isNull(12) ? null : Integer.valueOf((int) mo3415.getLong(12));
                        Integer valueOf11 = mo3415.isNull(13) ? null : Integer.valueOf((int) mo3415.getLong(13));
                        if (valueOf11 != null) {
                            bool2 = Boolean.valueOf(valueOf11.intValue() != 0);
                        } else {
                            bool2 = null;
                        }
                        arrayList7.add(new ˑٴ(j9, j10, mo33946, valueOf3, valueOf4, valueOf5, valueOf6, mo33947, valueOf7, mo33948, valueOf8, valueOf9, valueOf10, bool2));
                        i4 = 9;
                    }
                    return arrayList7;
                } finally {
                }
            case 19:
                mo3415 = ((InterfaceC4932) obj).mo3415("\n        SELECT id, file_path\n        FROM recordings\n        WHERE status == 3 AND file_path LIKE ? || '%' \n        ");
                try {
                    mo3415.mo3391(1, str);
                    ArrayList arrayList8 = new ArrayList();
                    while (mo3415.mo3392()) {
                        arrayList8.add(new ˑʼ(mo3415.mo3394(1), mo3415.getLong(0)));
                    }
                    return arrayList8;
                } finally {
                }
            case 20:
                mo3415 = ((InterfaceC4932) obj).mo3415("\n        SELECT r.start_seconds, r.stop_seconds, r.file_path, c.playlist_id, c.xc_id channel_xc_id, c.url channel_url,\n        r.original_channel_name, r.program_start_seconds, r.program_stop_seconds, r.program_title, r.program_desc,\n        r.custom_recording_name, r.repeat_rules\n        FROM recordings r\n        LEFT OUTER JOIN channels c ON r.channel_id == c.id\n        WHERE c.deleted_time IS NULL\n            AND r.status == 3\n            AND r.file_path LIKE ? || '%' \n        ");
                try {
                    mo3415.mo3391(1, str);
                    ArrayList arrayList9 = new ArrayList();
                    while (mo3415.mo3392()) {
                        arrayList9.add(new RecordingForPush(mo3415.getLong(0), mo3415.getLong(1), mo3415.mo3394(2), mo3415.isNull(3) ? null : Long.valueOf(mo3415.getLong(3)), mo3415.isNull(4) ? null : Integer.valueOf((int) mo3415.getLong(4)), mo3415.isNull(5) ? null : mo3415.mo3394(5), mo3415.mo3394(6), mo3415.isNull(7) ? null : Long.valueOf(mo3415.getLong(7)), mo3415.isNull(8) ? null : Long.valueOf(mo3415.getLong(8)), mo3415.isNull(9) ? null : mo3415.mo3394(9), mo3415.isNull(10) ? null : mo3415.mo3394(10), mo3415.isNull(11) ? null : mo3415.mo3394(11), mo3415.isNull(12) ? null : mo3415.mo3394(12)));
                    }
                    return arrayList9;
                } finally {
                }
            case 21:
                mo3415 = ((InterfaceC4932) obj).mo3415("\n        SELECT s.id, s.playlist_id, p.name playlist_name, p.position playlist_position, s.category_id, s.xc_id, s.stalker_id,\n        c.stalker_type, s.name, length(s.image) image_length, NULL stalker_poster_url, s.rating, s.last_modified_time,\n        s.position_in_playlist, s.is_favorite\n        FROM series s\n        INNER JOIN playlists p ON s.playlist_id == p.id\n        INNER JOIN series_fts ON s.id == series_fts.docid\n        LEFT OUTER JOIN series_categories c ON s.category_id == c.id\n        WHERE p.is_enabled == 1\n            AND s.deleted_time IS NULL\n            AND c.deleted_time IS NULL\n            AND c.stalker_id IS NULL\n            AND IFNULL(c.is_visible, 1) == 1\n            AND series_fts MATCH ?\n        LIMIT 10000\n        ");
                try {
                    mo3415.mo3391(1, str);
                    ArrayList arrayList10 = new ArrayList();
                    while (mo3415.mo3392()) {
                        long j11 = mo3415.getLong(0);
                        long j12 = mo3415.getLong(i5);
                        String mo33949 = mo3415.mo3394(2);
                        Integer valueOf12 = mo3415.isNull(3) ? null : Integer.valueOf((int) mo3415.getLong(3));
                        Long valueOf13 = mo3415.isNull(4) ? null : Long.valueOf(mo3415.getLong(4));
                        Integer valueOf14 = mo3415.isNull(5) ? null : Integer.valueOf((int) mo3415.getLong(5));
                        Long valueOf15 = mo3415.isNull(6) ? null : Long.valueOf(mo3415.getLong(6));
                        String mo339410 = mo3415.isNull(7) ? null : mo3415.mo3394(7);
                        String mo339411 = mo3415.mo3394(8);
                        Integer valueOf16 = mo3415.isNull(9) ? null : Integer.valueOf((int) mo3415.getLong(9));
                        String mo339412 = mo3415.isNull(i3) ? null : mo3415.mo3394(i3);
                        Float valueOf17 = mo3415.isNull(i2) ? null : Float.valueOf((float) mo3415.getDouble(i2));
                        Long valueOf18 = mo3415.isNull(12) ? null : Long.valueOf(mo3415.getLong(12));
                        Integer valueOf19 = mo3415.isNull(13) ? null : Integer.valueOf((int) mo3415.getLong(13));
                        Integer valueOf20 = mo3415.isNull(14) ? null : Integer.valueOf((int) mo3415.getLong(14));
                        if (valueOf20 != null) {
                            bool3 = Boolean.valueOf(valueOf20.intValue() != 0);
                        } else {
                            bool3 = null;
                        }
                        arrayList10.add(new ᐧˎ(j11, j12, mo33949, valueOf12, valueOf13, valueOf14, valueOf15, mo339410, mo339411, valueOf16, mo339412, valueOf17, valueOf18, valueOf19, bool3));
                        i5 = 1;
                        i2 = 11;
                        i3 = 10;
                    }
                    return arrayList10;
                } finally {
                }
            default:
                mo3415 = ((InterfaceC4932) obj).mo3415("SELECT id FROM tvg_sources WHERE url == ?");
                try {
                    mo3415.mo3391(1, str);
                    return (!mo3415.mo3392() || mo3415.isNull(0)) ? null : Long.valueOf(mo3415.getLong(0));
                } finally {
                }
        }
    }
}

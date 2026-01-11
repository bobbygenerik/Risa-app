package p240;

import java.util.ArrayList;
import p013.C0907;
import p113.C1974;
import p223.C3056;
import p286.AbstractC3586;
import p322.C3966;
import p322.C3977;
import p322.EnumC3961;
import p329.InterfaceC4106;
import p417.InterfaceC4930;
import p417.InterfaceC4932;
import ˉʾ.ʼʼ;
import ˉʾ.ʿᵢ;
import ˉʾ.ˆﾞ;
import ˉʾ.ˈٴ;
import ˉʾ.ˏᵢ;
import ˉʾ.ˑٴ;
import ˉʾ.ˑﹳ;
import ˉʾ.ᐧᴵ;
import ˉʾ.ᵎᵔ;
import ˉʾ.ᵎⁱ;
import ˉʾ.ᵔי;
import ˉʾ.ﾞʻ;
import ᴵˋ.ˊʻ;
import ᵔᵔ.ʽ;
import ﹳˋ.ʼˎ;

/* renamed from: ˑᵎ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C3210 implements InterfaceC4106 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f12261;

    public /* synthetic */ C3210(int i) {
        this.f12261 = i;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    private final Object m7043(Object obj) {
        String str;
        Integer valueOf;
        InterfaceC4930 mo3415 = ((InterfaceC4932) obj).mo3415("\n        SELECT m.id, m.channel_id, c.name channel_name, c.custom_name custom_channel_name,\n        length(c.logo) channel_logo_from_playlist_length, length(t.icon_url) channel_logo_from_tvg_length,\n        p.logos_priority channel_logos_priority, b.tvg_channel_id, m.program_start_seconds, m.program_stop_seconds,\n        m.program_title, p.catchup_type playlist_catchup_type, p.catchup_hours playlist_catchup_hours,\n        p.user_catchup_type playlist_user_catchup_type, p.user_catchup_hours playlist_user_catchup_hours, c.catchup_hours\n        FROM my_programs m\n        LEFT OUTER JOIN channels c ON m.channel_id == c.id\n        LEFT OUTER JOIN playlists p ON c.playlist_id == p.id\n        LEFT OUTER JOIN channel_tvg_bindings b ON c.id == b.channel_id\n        LEFT OUTER JOIN tvg_channels t ON b.tvg_channel_id == t.id\n        WHERE p.is_enabled == 1 AND c.deleted_time IS NULL\n        ORDER BY m.program_start_seconds\n        ");
        try {
            ArrayList arrayList = new ArrayList();
            while (mo3415.mo3392()) {
                long j = mo3415.getLong(0);
                long j2 = mo3415.getLong(1);
                String mo3394 = mo3415.isNull(2) ? null : mo3415.mo3394(2);
                String mo33942 = mo3415.isNull(3) ? null : mo3415.mo3394(3);
                Integer valueOf2 = mo3415.isNull(4) ? null : Integer.valueOf((int) mo3415.getLong(4));
                Integer valueOf3 = mo3415.isNull(5) ? null : Integer.valueOf((int) mo3415.getLong(5));
                ᵎⁱ r12 = ʼˎ.ˈʿ(mo3415.isNull(6) ? null : Integer.valueOf((int) mo3415.getLong(6)));
                Long valueOf4 = mo3415.isNull(7) ? null : Long.valueOf(mo3415.getLong(7));
                long j3 = mo3415.getLong(8);
                long j4 = mo3415.getLong(9);
                String mo33943 = mo3415.mo3394(10);
                if (mo3415.isNull(11)) {
                    str = mo33942;
                    valueOf = null;
                } else {
                    str = mo33942;
                    valueOf = Integer.valueOf((int) mo3415.getLong(11));
                }
                arrayList.add(new ʿᵢ(j, j2, mo3394, str, valueOf2, valueOf3, r12, valueOf4, j3, j4, mo33943, ʼˎ.ٴʼ(valueOf), mo3415.isNull(12) ? null : Integer.valueOf((int) mo3415.getLong(12)), ʼˎ.ٴʼ(mo3415.isNull(13) ? null : Integer.valueOf((int) mo3415.getLong(13))), mo3415.isNull(14) ? null : Integer.valueOf((int) mo3415.getLong(14)), mo3415.isNull(15) ? null : Integer.valueOf((int) mo3415.getLong(15))));
            }
            return arrayList;
        } finally {
            mo3415.close();
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    private final Object m7044(Object obj) {
        int i;
        int i2;
        Integer valueOf;
        int i3;
        int i4;
        Integer valueOf2;
        int i5;
        Integer valueOf3;
        Integer valueOf4;
        Integer valueOf5;
        int i6;
        Integer valueOf6;
        int i7;
        int i8;
        int i9;
        Integer valueOf7;
        int i10;
        Integer valueOf8;
        int i11;
        Integer valueOf9;
        int i12;
        Integer valueOf10;
        int i13;
        int i14;
        Integer valueOf11;
        int i15;
        Integer valueOf12;
        int i16;
        Integer valueOf13;
        int i17;
        Integer valueOf14;
        InterfaceC4930 mo3415 = ((InterfaceC4932) obj).mo3415("\n        SELECT * FROM playlists p WHERE p.is_enabled == 1 AND p.is_vod == 0\n            AND EXISTS (SELECT c.id FROM channels c WHERE c.deleted_time IS NULL AND c.playlist_id == p.id)\n        ");
        try {
            int m7546 = AbstractC3586.m7546(mo3415, "id");
            int m75462 = AbstractC3586.m7546(mo3415, "name");
            int m75463 = AbstractC3586.m7546(mo3415, "url");
            int m75464 = AbstractC3586.m7546(mo3415, "is_vod");
            int m75465 = AbstractC3586.m7546(mo3415, "is_enabled");
            int m75466 = AbstractC3586.m7546(mo3415, "auto_update");
            int m75467 = AbstractC3586.m7546(mo3415, "update_interval_hours");
            int m75468 = AbstractC3586.m7546(mo3415, "last_update_time");
            int m75469 = AbstractC3586.m7546(mo3415, "include_tv_channels");
            int m754610 = AbstractC3586.m7546(mo3415, "include_vod");
            int m754611 = AbstractC3586.m7546(mo3415, "is_expanded");
            int m754612 = AbstractC3586.m7546(mo3415, "is_expanded_in_movies");
            int m754613 = AbstractC3586.m7546(mo3415, "is_expanded_in_series");
            int m754614 = AbstractC3586.m7546(mo3415, "tvg_urls");
            int m754615 = AbstractC3586.m7546(mo3415, "tvg_shift");
            int m754616 = AbstractC3586.m7546(mo3415, "server_timezone");
            int m754617 = AbstractC3586.m7546(mo3415, "expiration_date");
            int m754618 = AbstractC3586.m7546(mo3415, "max_connections");
            int m754619 = AbstractC3586.m7546(mo3415, "channel_count");
            int m754620 = AbstractC3586.m7546(mo3415, "movie_count");
            int m754621 = AbstractC3586.m7546(mo3415, "series_count");
            int m754622 = AbstractC3586.m7546(mo3415, "catchup_type");
            int m754623 = AbstractC3586.m7546(mo3415, "catchup_hours");
            int m754624 = AbstractC3586.m7546(mo3415, "catchup_source");
            int m754625 = AbstractC3586.m7546(mo3415, "user_catchup_type");
            int m754626 = AbstractC3586.m7546(mo3415, "user_catchup_hours");
            int m754627 = AbstractC3586.m7546(mo3415, "user_catchup_time_offset");
            int m754628 = AbstractC3586.m7546(mo3415, "is_visible_in_all_channels");
            int m754629 = AbstractC3586.m7546(mo3415, "is_visible_in_all_favorites");
            int m754630 = AbstractC3586.m7546(mo3415, "logos_priority");
            int m754631 = AbstractC3586.m7546(mo3415, "prev_groups_sorting");
            int m754632 = AbstractC3586.m7546(mo3415, "groups_sorting");
            int m754633 = AbstractC3586.m7546(mo3415, "prev_movie_groups_sorting");
            int m754634 = AbstractC3586.m7546(mo3415, "movie_groups_sorting");
            int m754635 = AbstractC3586.m7546(mo3415, "prev_series_groups_sorting");
            int m754636 = AbstractC3586.m7546(mo3415, "series_groups_sorting");
            int m754637 = AbstractC3586.m7546(mo3415, "position");
            int m754638 = AbstractC3586.m7546(mo3415, "stalker_token");
            int m754639 = AbstractC3586.m7546(mo3415, "user_agent");
            int m754640 = AbstractC3586.m7546(mo3415, "are_new_groups_visible");
            int m754641 = AbstractC3586.m7546(mo3415, "are_new_movie_groups_visible");
            int m754642 = AbstractC3586.m7546(mo3415, "are_new_series_groups_visible");
            ArrayList arrayList = new ArrayList();
            while (mo3415.mo3392()) {
                long j = mo3415.getLong(m7546);
                String mo3394 = mo3415.mo3394(m75462);
                String mo33942 = mo3415.mo3394(m75463);
                int i18 = m75462;
                int i19 = m75463;
                boolean z = ((int) mo3415.getLong(m75464)) != 0;
                int i20 = m75464;
                boolean z2 = ((int) mo3415.getLong(m75465)) != 0;
                boolean z3 = ((int) mo3415.getLong(m75466)) != 0;
                int i21 = (int) mo3415.getLong(m75467);
                long j2 = mo3415.getLong(m75468);
                boolean z4 = ((int) mo3415.getLong(m75469)) != 0;
                boolean z5 = ((int) mo3415.getLong(m754610)) != 0;
                boolean z6 = ((int) mo3415.getLong(m754611)) != 0;
                boolean z7 = ((int) mo3415.getLong(m754612)) != 0;
                boolean z8 = ((int) mo3415.getLong(m754613)) != 0;
                String mo33943 = mo3415.mo3394(m754614);
                int i22 = m754615;
                int i23 = m75465;
                int i24 = (int) mo3415.getLong(i22);
                int i25 = m754616;
                String mo33944 = mo3415.isNull(i25) ? null : mo3415.mo3394(i25);
                int i26 = m754617;
                Long valueOf15 = mo3415.isNull(i26) ? null : Long.valueOf(mo3415.getLong(i26));
                int i27 = m7546;
                int i28 = m754618;
                if (mo3415.isNull(i28)) {
                    i = i26;
                    i2 = i22;
                    valueOf = null;
                } else {
                    i = i26;
                    i2 = i22;
                    valueOf = Integer.valueOf((int) mo3415.getLong(i28));
                }
                int i29 = m754619;
                int i30 = (int) mo3415.getLong(i29);
                int i31 = m754620;
                int i32 = (int) mo3415.getLong(i31);
                int i33 = m754621;
                int i34 = (int) mo3415.getLong(i33);
                int i35 = m754622;
                if (mo3415.isNull(i35)) {
                    i3 = i32;
                    i4 = i33;
                    valueOf2 = null;
                } else {
                    i3 = i32;
                    i4 = i33;
                    valueOf2 = Integer.valueOf((int) mo3415.getLong(i35));
                }
                ʽ r68 = ʼˎ.ٴʼ(valueOf2);
                int i36 = m754623;
                if (mo3415.isNull(i36)) {
                    i5 = i34;
                    valueOf3 = null;
                } else {
                    i5 = i34;
                    valueOf3 = Integer.valueOf((int) mo3415.getLong(i36));
                }
                int i37 = m754624;
                String mo33945 = mo3415.isNull(i37) ? null : mo3415.mo3394(i37);
                int i38 = m754625;
                if (mo3415.isNull(i38)) {
                    m754623 = i36;
                    m754624 = i37;
                    valueOf4 = null;
                } else {
                    m754623 = i36;
                    m754624 = i37;
                    valueOf4 = Integer.valueOf((int) mo3415.getLong(i38));
                }
                ʽ r71 = ʼˎ.ٴʼ(valueOf4);
                int i39 = m754626;
                if (mo3415.isNull(i39)) {
                    m754625 = i38;
                    valueOf5 = null;
                } else {
                    m754625 = i38;
                    valueOf5 = Integer.valueOf((int) mo3415.getLong(i39));
                }
                int i40 = m754627;
                if (mo3415.isNull(i40)) {
                    i6 = i35;
                    valueOf6 = null;
                    m754627 = i40;
                    i8 = m754628;
                    i7 = i39;
                } else {
                    i6 = i35;
                    valueOf6 = Integer.valueOf((int) mo3415.getLong(i40));
                    i7 = i39;
                    m754627 = i40;
                    i8 = m754628;
                }
                boolean z9 = ((int) mo3415.getLong(i8)) != 0;
                m754628 = i8;
                int i41 = m754629;
                boolean z10 = ((int) mo3415.getLong(i41)) != 0;
                int i42 = m754630;
                if (mo3415.isNull(i42)) {
                    i9 = i7;
                    valueOf7 = null;
                } else {
                    i9 = i7;
                    valueOf7 = Integer.valueOf((int) mo3415.getLong(i42));
                }
                ᵎⁱ r76 = ʼˎ.ˈʿ(valueOf7);
                if (r76 == null) {
                    throw new IllegalStateException("Expected NON-NULL 'ar.tvplayer.core.`data`.db.entities.LogosPriority', but it was NULL.");
                }
                int i43 = m754631;
                if (mo3415.isNull(i43)) {
                    i10 = i41;
                    m754630 = i42;
                    valueOf8 = null;
                } else {
                    i10 = i41;
                    m754630 = i42;
                    valueOf8 = Integer.valueOf((int) mo3415.getLong(i43));
                }
                ˈٴ r77 = ʼˎ.ᵔٴ(valueOf8);
                if (r77 == null) {
                    throw new IllegalStateException("Expected NON-NULL 'ar.tvplayer.core.`data`.db.entities.GroupsSorting', but it was NULL.");
                }
                int i44 = m754632;
                if (mo3415.isNull(i44)) {
                    m754631 = i43;
                    i11 = i10;
                    valueOf9 = null;
                } else {
                    m754631 = i43;
                    i11 = i10;
                    valueOf9 = Integer.valueOf((int) mo3415.getLong(i44));
                }
                ˈٴ r78 = ʼˎ.ᵔٴ(valueOf9);
                if (r78 == null) {
                    throw new IllegalStateException("Expected NON-NULL 'ar.tvplayer.core.`data`.db.entities.GroupsSorting', but it was NULL.");
                }
                int i45 = m754633;
                if (mo3415.isNull(i45)) {
                    i12 = m75466;
                    valueOf10 = null;
                } else {
                    i12 = m75466;
                    valueOf10 = Integer.valueOf((int) mo3415.getLong(i45));
                }
                ˈٴ r79 = ʼˎ.ᵔٴ(valueOf10);
                if (r79 == null) {
                    throw new IllegalStateException("Expected NON-NULL 'ar.tvplayer.core.`data`.db.entities.GroupsSorting', but it was NULL.");
                }
                int i46 = m754634;
                if (mo3415.isNull(i46)) {
                    i13 = i44;
                    i14 = i45;
                    valueOf11 = null;
                } else {
                    i13 = i44;
                    i14 = i45;
                    valueOf11 = Integer.valueOf((int) mo3415.getLong(i46));
                }
                ˈٴ r80 = ʼˎ.ᵔٴ(valueOf11);
                if (r80 == null) {
                    throw new IllegalStateException("Expected NON-NULL 'ar.tvplayer.core.`data`.db.entities.GroupsSorting', but it was NULL.");
                }
                int i47 = m754635;
                if (mo3415.isNull(i47)) {
                    i15 = i46;
                    valueOf12 = null;
                } else {
                    i15 = i46;
                    valueOf12 = Integer.valueOf((int) mo3415.getLong(i47));
                }
                ˈٴ r81 = ʼˎ.ᵔٴ(valueOf12);
                if (r81 == null) {
                    throw new IllegalStateException("Expected NON-NULL 'ar.tvplayer.core.`data`.db.entities.GroupsSorting', but it was NULL.");
                }
                int i48 = m754636;
                if (mo3415.isNull(i48)) {
                    i16 = i13;
                    valueOf13 = null;
                } else {
                    i16 = i13;
                    valueOf13 = Integer.valueOf((int) mo3415.getLong(i48));
                }
                ˈٴ r82 = ʼˎ.ᵔٴ(valueOf13);
                if (r82 == null) {
                    throw new IllegalStateException("Expected NON-NULL 'ar.tvplayer.core.`data`.db.entities.GroupsSorting', but it was NULL.");
                }
                int i49 = m754637;
                if (mo3415.isNull(i49)) {
                    i17 = i47;
                    valueOf14 = null;
                } else {
                    i17 = i47;
                    valueOf14 = Integer.valueOf((int) mo3415.getLong(i49));
                }
                int i50 = m754638;
                String mo33946 = mo3415.isNull(i50) ? null : mo3415.mo3394(i50);
                int i51 = m754639;
                m754638 = i50;
                m754639 = i51;
                int i52 = m754640;
                String mo33947 = mo3415.isNull(i51) ? null : mo3415.mo3394(i51);
                int i53 = m754641;
                int i54 = m754642;
                arrayList.add(new ᐧᴵ(j, mo3394, mo33942, z, z2, z3, i21, j2, z4, z5, z6, z7, z8, mo33943, i24, mo33944, valueOf15, valueOf, i30, i3, i5, r68, valueOf3, mo33945, r71, valueOf5, valueOf6, z9, z10, r76, r77, r78, r79, r80, r81, r82, valueOf14, mo33946, mo33947, ((int) mo3415.getLong(i52)) != 0, ((int) mo3415.getLong(i53)) != 0, ((int) mo3415.getLong(i54)) != 0));
                int i55 = i15;
                m754635 = i17;
                m75466 = i12;
                m754633 = i14;
                m754634 = i55;
                m75465 = i23;
                m754642 = i54;
                m754615 = i2;
                m754619 = i29;
                m754616 = i25;
                m754621 = i4;
                m754622 = i6;
                m754626 = i9;
                m754629 = i11;
                m754632 = i16;
                m754618 = i28;
                m754636 = i48;
                m754637 = i49;
                m75463 = i19;
                m75464 = i20;
                m754620 = i31;
                m754640 = i52;
                m754641 = i53;
                m7546 = i27;
                m75462 = i18;
                m754617 = i;
            }
            mo3415.close();
            return arrayList;
        } catch (Throwable th) {
            mo3415.close();
            throw th;
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    private final Object m7045(Object obj) {
        int i;
        int i2;
        Integer valueOf;
        int i3;
        int i4;
        Integer valueOf2;
        int i5;
        Integer valueOf3;
        Integer valueOf4;
        Integer valueOf5;
        int i6;
        Integer valueOf6;
        int i7;
        int i8;
        int i9;
        Integer valueOf7;
        int i10;
        Integer valueOf8;
        int i11;
        Integer valueOf9;
        int i12;
        Integer valueOf10;
        int i13;
        int i14;
        Integer valueOf11;
        int i15;
        Integer valueOf12;
        int i16;
        Integer valueOf13;
        int i17;
        Integer valueOf14;
        InterfaceC4930 mo3415 = ((InterfaceC4932) obj).mo3415("SELECT * FROM playlists");
        try {
            int m7546 = AbstractC3586.m7546(mo3415, "id");
            int m75462 = AbstractC3586.m7546(mo3415, "name");
            int m75463 = AbstractC3586.m7546(mo3415, "url");
            int m75464 = AbstractC3586.m7546(mo3415, "is_vod");
            int m75465 = AbstractC3586.m7546(mo3415, "is_enabled");
            int m75466 = AbstractC3586.m7546(mo3415, "auto_update");
            int m75467 = AbstractC3586.m7546(mo3415, "update_interval_hours");
            int m75468 = AbstractC3586.m7546(mo3415, "last_update_time");
            int m75469 = AbstractC3586.m7546(mo3415, "include_tv_channels");
            int m754610 = AbstractC3586.m7546(mo3415, "include_vod");
            int m754611 = AbstractC3586.m7546(mo3415, "is_expanded");
            int m754612 = AbstractC3586.m7546(mo3415, "is_expanded_in_movies");
            int m754613 = AbstractC3586.m7546(mo3415, "is_expanded_in_series");
            int m754614 = AbstractC3586.m7546(mo3415, "tvg_urls");
            int m754615 = AbstractC3586.m7546(mo3415, "tvg_shift");
            int m754616 = AbstractC3586.m7546(mo3415, "server_timezone");
            int m754617 = AbstractC3586.m7546(mo3415, "expiration_date");
            int m754618 = AbstractC3586.m7546(mo3415, "max_connections");
            int m754619 = AbstractC3586.m7546(mo3415, "channel_count");
            int m754620 = AbstractC3586.m7546(mo3415, "movie_count");
            int m754621 = AbstractC3586.m7546(mo3415, "series_count");
            int m754622 = AbstractC3586.m7546(mo3415, "catchup_type");
            int m754623 = AbstractC3586.m7546(mo3415, "catchup_hours");
            int m754624 = AbstractC3586.m7546(mo3415, "catchup_source");
            int m754625 = AbstractC3586.m7546(mo3415, "user_catchup_type");
            int m754626 = AbstractC3586.m7546(mo3415, "user_catchup_hours");
            int m754627 = AbstractC3586.m7546(mo3415, "user_catchup_time_offset");
            int m754628 = AbstractC3586.m7546(mo3415, "is_visible_in_all_channels");
            int m754629 = AbstractC3586.m7546(mo3415, "is_visible_in_all_favorites");
            int m754630 = AbstractC3586.m7546(mo3415, "logos_priority");
            int m754631 = AbstractC3586.m7546(mo3415, "prev_groups_sorting");
            int m754632 = AbstractC3586.m7546(mo3415, "groups_sorting");
            int m754633 = AbstractC3586.m7546(mo3415, "prev_movie_groups_sorting");
            int m754634 = AbstractC3586.m7546(mo3415, "movie_groups_sorting");
            int m754635 = AbstractC3586.m7546(mo3415, "prev_series_groups_sorting");
            int m754636 = AbstractC3586.m7546(mo3415, "series_groups_sorting");
            int m754637 = AbstractC3586.m7546(mo3415, "position");
            int m754638 = AbstractC3586.m7546(mo3415, "stalker_token");
            int m754639 = AbstractC3586.m7546(mo3415, "user_agent");
            int m754640 = AbstractC3586.m7546(mo3415, "are_new_groups_visible");
            int m754641 = AbstractC3586.m7546(mo3415, "are_new_movie_groups_visible");
            int m754642 = AbstractC3586.m7546(mo3415, "are_new_series_groups_visible");
            ArrayList arrayList = new ArrayList();
            while (mo3415.mo3392()) {
                long j = mo3415.getLong(m7546);
                String mo3394 = mo3415.mo3394(m75462);
                String mo33942 = mo3415.mo3394(m75463);
                int i18 = m75462;
                int i19 = m75463;
                boolean z = ((int) mo3415.getLong(m75464)) != 0;
                int i20 = m75464;
                boolean z2 = ((int) mo3415.getLong(m75465)) != 0;
                boolean z3 = ((int) mo3415.getLong(m75466)) != 0;
                int i21 = (int) mo3415.getLong(m75467);
                long j2 = mo3415.getLong(m75468);
                boolean z4 = ((int) mo3415.getLong(m75469)) != 0;
                boolean z5 = ((int) mo3415.getLong(m754610)) != 0;
                boolean z6 = ((int) mo3415.getLong(m754611)) != 0;
                boolean z7 = ((int) mo3415.getLong(m754612)) != 0;
                boolean z8 = ((int) mo3415.getLong(m754613)) != 0;
                String mo33943 = mo3415.mo3394(m754614);
                int i22 = m754615;
                int i23 = m75465;
                int i24 = (int) mo3415.getLong(i22);
                int i25 = m754616;
                String mo33944 = mo3415.isNull(i25) ? null : mo3415.mo3394(i25);
                int i26 = m754617;
                Long valueOf15 = mo3415.isNull(i26) ? null : Long.valueOf(mo3415.getLong(i26));
                int i27 = m7546;
                int i28 = m754618;
                if (mo3415.isNull(i28)) {
                    i = i26;
                    i2 = i22;
                    valueOf = null;
                } else {
                    i = i26;
                    i2 = i22;
                    valueOf = Integer.valueOf((int) mo3415.getLong(i28));
                }
                int i29 = m754619;
                int i30 = (int) mo3415.getLong(i29);
                int i31 = m754620;
                int i32 = (int) mo3415.getLong(i31);
                int i33 = m754621;
                int i34 = (int) mo3415.getLong(i33);
                int i35 = m754622;
                if (mo3415.isNull(i35)) {
                    i3 = i32;
                    i4 = i33;
                    valueOf2 = null;
                } else {
                    i3 = i32;
                    i4 = i33;
                    valueOf2 = Integer.valueOf((int) mo3415.getLong(i35));
                }
                ʽ r68 = ʼˎ.ٴʼ(valueOf2);
                int i36 = m754623;
                if (mo3415.isNull(i36)) {
                    i5 = i34;
                    valueOf3 = null;
                } else {
                    i5 = i34;
                    valueOf3 = Integer.valueOf((int) mo3415.getLong(i36));
                }
                int i37 = m754624;
                String mo33945 = mo3415.isNull(i37) ? null : mo3415.mo3394(i37);
                int i38 = m754625;
                if (mo3415.isNull(i38)) {
                    m754623 = i36;
                    m754624 = i37;
                    valueOf4 = null;
                } else {
                    m754623 = i36;
                    m754624 = i37;
                    valueOf4 = Integer.valueOf((int) mo3415.getLong(i38));
                }
                ʽ r71 = ʼˎ.ٴʼ(valueOf4);
                int i39 = m754626;
                if (mo3415.isNull(i39)) {
                    m754625 = i38;
                    valueOf5 = null;
                } else {
                    m754625 = i38;
                    valueOf5 = Integer.valueOf((int) mo3415.getLong(i39));
                }
                int i40 = m754627;
                if (mo3415.isNull(i40)) {
                    i6 = i35;
                    valueOf6 = null;
                    m754627 = i40;
                    i8 = m754628;
                    i7 = i39;
                } else {
                    i6 = i35;
                    valueOf6 = Integer.valueOf((int) mo3415.getLong(i40));
                    i7 = i39;
                    m754627 = i40;
                    i8 = m754628;
                }
                boolean z9 = ((int) mo3415.getLong(i8)) != 0;
                m754628 = i8;
                int i41 = m754629;
                boolean z10 = ((int) mo3415.getLong(i41)) != 0;
                int i42 = m754630;
                if (mo3415.isNull(i42)) {
                    i9 = i7;
                    valueOf7 = null;
                } else {
                    i9 = i7;
                    valueOf7 = Integer.valueOf((int) mo3415.getLong(i42));
                }
                ᵎⁱ r76 = ʼˎ.ˈʿ(valueOf7);
                if (r76 == null) {
                    throw new IllegalStateException("Expected NON-NULL 'ar.tvplayer.core.`data`.db.entities.LogosPriority', but it was NULL.");
                }
                int i43 = m754631;
                if (mo3415.isNull(i43)) {
                    i10 = i41;
                    m754630 = i42;
                    valueOf8 = null;
                } else {
                    i10 = i41;
                    m754630 = i42;
                    valueOf8 = Integer.valueOf((int) mo3415.getLong(i43));
                }
                ˈٴ r77 = ʼˎ.ᵔٴ(valueOf8);
                if (r77 == null) {
                    throw new IllegalStateException("Expected NON-NULL 'ar.tvplayer.core.`data`.db.entities.GroupsSorting', but it was NULL.");
                }
                int i44 = m754632;
                if (mo3415.isNull(i44)) {
                    m754631 = i43;
                    i11 = i10;
                    valueOf9 = null;
                } else {
                    m754631 = i43;
                    i11 = i10;
                    valueOf9 = Integer.valueOf((int) mo3415.getLong(i44));
                }
                ˈٴ r78 = ʼˎ.ᵔٴ(valueOf9);
                if (r78 == null) {
                    throw new IllegalStateException("Expected NON-NULL 'ar.tvplayer.core.`data`.db.entities.GroupsSorting', but it was NULL.");
                }
                int i45 = m754633;
                if (mo3415.isNull(i45)) {
                    i12 = m75466;
                    valueOf10 = null;
                } else {
                    i12 = m75466;
                    valueOf10 = Integer.valueOf((int) mo3415.getLong(i45));
                }
                ˈٴ r79 = ʼˎ.ᵔٴ(valueOf10);
                if (r79 == null) {
                    throw new IllegalStateException("Expected NON-NULL 'ar.tvplayer.core.`data`.db.entities.GroupsSorting', but it was NULL.");
                }
                int i46 = m754634;
                if (mo3415.isNull(i46)) {
                    i13 = i44;
                    i14 = i45;
                    valueOf11 = null;
                } else {
                    i13 = i44;
                    i14 = i45;
                    valueOf11 = Integer.valueOf((int) mo3415.getLong(i46));
                }
                ˈٴ r80 = ʼˎ.ᵔٴ(valueOf11);
                if (r80 == null) {
                    throw new IllegalStateException("Expected NON-NULL 'ar.tvplayer.core.`data`.db.entities.GroupsSorting', but it was NULL.");
                }
                int i47 = m754635;
                if (mo3415.isNull(i47)) {
                    i15 = i46;
                    valueOf12 = null;
                } else {
                    i15 = i46;
                    valueOf12 = Integer.valueOf((int) mo3415.getLong(i47));
                }
                ˈٴ r81 = ʼˎ.ᵔٴ(valueOf12);
                if (r81 == null) {
                    throw new IllegalStateException("Expected NON-NULL 'ar.tvplayer.core.`data`.db.entities.GroupsSorting', but it was NULL.");
                }
                int i48 = m754636;
                if (mo3415.isNull(i48)) {
                    i16 = i13;
                    valueOf13 = null;
                } else {
                    i16 = i13;
                    valueOf13 = Integer.valueOf((int) mo3415.getLong(i48));
                }
                ˈٴ r82 = ʼˎ.ᵔٴ(valueOf13);
                if (r82 == null) {
                    throw new IllegalStateException("Expected NON-NULL 'ar.tvplayer.core.`data`.db.entities.GroupsSorting', but it was NULL.");
                }
                int i49 = m754637;
                if (mo3415.isNull(i49)) {
                    i17 = i47;
                    valueOf14 = null;
                } else {
                    i17 = i47;
                    valueOf14 = Integer.valueOf((int) mo3415.getLong(i49));
                }
                int i50 = m754638;
                String mo33946 = mo3415.isNull(i50) ? null : mo3415.mo3394(i50);
                int i51 = m754639;
                m754638 = i50;
                m754639 = i51;
                int i52 = m754640;
                String mo33947 = mo3415.isNull(i51) ? null : mo3415.mo3394(i51);
                int i53 = m754641;
                int i54 = m754642;
                arrayList.add(new ᐧᴵ(j, mo3394, mo33942, z, z2, z3, i21, j2, z4, z5, z6, z7, z8, mo33943, i24, mo33944, valueOf15, valueOf, i30, i3, i5, r68, valueOf3, mo33945, r71, valueOf5, valueOf6, z9, z10, r76, r77, r78, r79, r80, r81, r82, valueOf14, mo33946, mo33947, ((int) mo3415.getLong(i52)) != 0, ((int) mo3415.getLong(i53)) != 0, ((int) mo3415.getLong(i54)) != 0));
                int i55 = i15;
                m754635 = i17;
                m75466 = i12;
                m754633 = i14;
                m754634 = i55;
                m75465 = i23;
                m754642 = i54;
                m754615 = i2;
                m754619 = i29;
                m754616 = i25;
                m754621 = i4;
                m754622 = i6;
                m754626 = i9;
                m754629 = i11;
                m754632 = i16;
                m754618 = i28;
                m754636 = i48;
                m754637 = i49;
                m75463 = i19;
                m75464 = i20;
                m754620 = i31;
                m754640 = i52;
                m754641 = i53;
                m7546 = i27;
                m75462 = i18;
                m754617 = i;
            }
            mo3415.close();
            return arrayList;
        } catch (Throwable th) {
            mo3415.close();
            throw th;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    private final Object m7046(Object obj) {
        Integer num;
        Float valueOf;
        Integer num2;
        Float f;
        Integer valueOf2;
        Integer num3;
        Integer valueOf3;
        Boolean bool;
        InterfaceC4930 mo3415 = ((InterfaceC4932) obj).mo3415("\n        SELECT m.id, m.playlist_id, p.name playlist_name, p.position playlist_position, m.category_id, m.xc_id, m.stalker_id,\n        m.name, length(m.image) image_length, NULL stalker_poster_url, m.rating, m.added_time, m.position_in_playlist, m.is_favorite\n        FROM movies m\n        INNER JOIN playlists p ON m.playlist_id == p.id\n        LEFT OUTER JOIN movie_categories c ON m.category_id == c.id\n        WHERE m.deleted_time IS NULL\n            AND c.deleted_time IS NULL\n            AND p.is_enabled == 1\n            AND IFNULL(c.is_visible, 1) == 1\n            AND m.last_turn_on_time > 0\n        ORDER BY m.last_turn_on_time DESC\n        LIMIT 100\n        ");
        try {
            ArrayList arrayList = new ArrayList();
            while (mo3415.mo3392()) {
                long j = mo3415.getLong(0);
                long j2 = mo3415.getLong(1);
                String mo3394 = mo3415.mo3394(2);
                Integer valueOf4 = mo3415.isNull(3) ? null : Integer.valueOf((int) mo3415.getLong(3));
                Long valueOf5 = mo3415.isNull(4) ? null : Long.valueOf(mo3415.getLong(4));
                Integer valueOf6 = mo3415.isNull(5) ? null : Integer.valueOf((int) mo3415.getLong(5));
                Long valueOf7 = mo3415.isNull(6) ? null : Long.valueOf(mo3415.getLong(6));
                String mo33942 = mo3415.mo3394(7);
                Integer valueOf8 = mo3415.isNull(8) ? null : Integer.valueOf((int) mo3415.getLong(8));
                String mo33943 = mo3415.isNull(9) ? null : mo3415.mo3394(9);
                if (mo3415.isNull(10)) {
                    num = valueOf6;
                    valueOf = null;
                } else {
                    num = valueOf6;
                    valueOf = Float.valueOf((float) mo3415.getDouble(10));
                }
                Long valueOf9 = mo3415.isNull(11) ? null : Long.valueOf(mo3415.getLong(11));
                if (mo3415.isNull(12)) {
                    num2 = valueOf8;
                    f = valueOf;
                    valueOf2 = null;
                } else {
                    num2 = valueOf8;
                    f = valueOf;
                    valueOf2 = Integer.valueOf((int) mo3415.getLong(12));
                }
                if (mo3415.isNull(13)) {
                    num3 = valueOf2;
                    valueOf3 = null;
                } else {
                    num3 = valueOf2;
                    valueOf3 = Integer.valueOf((int) mo3415.getLong(13));
                }
                if (valueOf3 != null) {
                    bool = Boolean.valueOf(valueOf3.intValue() != 0);
                } else {
                    bool = null;
                }
                Boolean bool2 = bool;
                arrayList.add(new ˑٴ(j, j2, mo3394, valueOf4, valueOf5, num, valueOf7, mo33942, num2, mo33943, f, valueOf9, num3, bool2));
            }
            mo3415.close();
            return arrayList;
        } catch (Throwable th) {
            mo3415.close();
            throw th;
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    private final Object m7047(Object obj) {
        int i;
        int i2;
        Integer valueOf;
        int i3;
        int i4;
        Integer valueOf2;
        int i5;
        Integer valueOf3;
        Integer valueOf4;
        Integer valueOf5;
        int i6;
        Integer valueOf6;
        int i7;
        int i8;
        int i9;
        Integer valueOf7;
        int i10;
        Integer valueOf8;
        int i11;
        Integer valueOf9;
        int i12;
        Integer valueOf10;
        int i13;
        int i14;
        Integer valueOf11;
        int i15;
        Integer valueOf12;
        int i16;
        Integer valueOf13;
        int i17;
        Integer valueOf14;
        InterfaceC4930 mo3415 = ((InterfaceC4932) obj).mo3415("SELECT * FROM playlists");
        try {
            int m7546 = AbstractC3586.m7546(mo3415, "id");
            int m75462 = AbstractC3586.m7546(mo3415, "name");
            int m75463 = AbstractC3586.m7546(mo3415, "url");
            int m75464 = AbstractC3586.m7546(mo3415, "is_vod");
            int m75465 = AbstractC3586.m7546(mo3415, "is_enabled");
            int m75466 = AbstractC3586.m7546(mo3415, "auto_update");
            int m75467 = AbstractC3586.m7546(mo3415, "update_interval_hours");
            int m75468 = AbstractC3586.m7546(mo3415, "last_update_time");
            int m75469 = AbstractC3586.m7546(mo3415, "include_tv_channels");
            int m754610 = AbstractC3586.m7546(mo3415, "include_vod");
            int m754611 = AbstractC3586.m7546(mo3415, "is_expanded");
            int m754612 = AbstractC3586.m7546(mo3415, "is_expanded_in_movies");
            int m754613 = AbstractC3586.m7546(mo3415, "is_expanded_in_series");
            int m754614 = AbstractC3586.m7546(mo3415, "tvg_urls");
            int m754615 = AbstractC3586.m7546(mo3415, "tvg_shift");
            int m754616 = AbstractC3586.m7546(mo3415, "server_timezone");
            int m754617 = AbstractC3586.m7546(mo3415, "expiration_date");
            int m754618 = AbstractC3586.m7546(mo3415, "max_connections");
            int m754619 = AbstractC3586.m7546(mo3415, "channel_count");
            int m754620 = AbstractC3586.m7546(mo3415, "movie_count");
            int m754621 = AbstractC3586.m7546(mo3415, "series_count");
            int m754622 = AbstractC3586.m7546(mo3415, "catchup_type");
            int m754623 = AbstractC3586.m7546(mo3415, "catchup_hours");
            int m754624 = AbstractC3586.m7546(mo3415, "catchup_source");
            int m754625 = AbstractC3586.m7546(mo3415, "user_catchup_type");
            int m754626 = AbstractC3586.m7546(mo3415, "user_catchup_hours");
            int m754627 = AbstractC3586.m7546(mo3415, "user_catchup_time_offset");
            int m754628 = AbstractC3586.m7546(mo3415, "is_visible_in_all_channels");
            int m754629 = AbstractC3586.m7546(mo3415, "is_visible_in_all_favorites");
            int m754630 = AbstractC3586.m7546(mo3415, "logos_priority");
            int m754631 = AbstractC3586.m7546(mo3415, "prev_groups_sorting");
            int m754632 = AbstractC3586.m7546(mo3415, "groups_sorting");
            int m754633 = AbstractC3586.m7546(mo3415, "prev_movie_groups_sorting");
            int m754634 = AbstractC3586.m7546(mo3415, "movie_groups_sorting");
            int m754635 = AbstractC3586.m7546(mo3415, "prev_series_groups_sorting");
            int m754636 = AbstractC3586.m7546(mo3415, "series_groups_sorting");
            int m754637 = AbstractC3586.m7546(mo3415, "position");
            int m754638 = AbstractC3586.m7546(mo3415, "stalker_token");
            int m754639 = AbstractC3586.m7546(mo3415, "user_agent");
            int m754640 = AbstractC3586.m7546(mo3415, "are_new_groups_visible");
            int m754641 = AbstractC3586.m7546(mo3415, "are_new_movie_groups_visible");
            int m754642 = AbstractC3586.m7546(mo3415, "are_new_series_groups_visible");
            ArrayList arrayList = new ArrayList();
            while (mo3415.mo3392()) {
                long j = mo3415.getLong(m7546);
                String mo3394 = mo3415.mo3394(m75462);
                String mo33942 = mo3415.mo3394(m75463);
                int i18 = m75462;
                int i19 = m75463;
                boolean z = ((int) mo3415.getLong(m75464)) != 0;
                int i20 = m75464;
                boolean z2 = ((int) mo3415.getLong(m75465)) != 0;
                boolean z3 = ((int) mo3415.getLong(m75466)) != 0;
                int i21 = (int) mo3415.getLong(m75467);
                long j2 = mo3415.getLong(m75468);
                boolean z4 = ((int) mo3415.getLong(m75469)) != 0;
                boolean z5 = ((int) mo3415.getLong(m754610)) != 0;
                boolean z6 = ((int) mo3415.getLong(m754611)) != 0;
                boolean z7 = ((int) mo3415.getLong(m754612)) != 0;
                boolean z8 = ((int) mo3415.getLong(m754613)) != 0;
                String mo33943 = mo3415.mo3394(m754614);
                int i22 = m754615;
                int i23 = m75465;
                int i24 = (int) mo3415.getLong(i22);
                int i25 = m754616;
                String mo33944 = mo3415.isNull(i25) ? null : mo3415.mo3394(i25);
                int i26 = m754617;
                Long valueOf15 = mo3415.isNull(i26) ? null : Long.valueOf(mo3415.getLong(i26));
                int i27 = m7546;
                int i28 = m754618;
                if (mo3415.isNull(i28)) {
                    i = i26;
                    i2 = i22;
                    valueOf = null;
                } else {
                    i = i26;
                    i2 = i22;
                    valueOf = Integer.valueOf((int) mo3415.getLong(i28));
                }
                int i29 = m754619;
                int i30 = (int) mo3415.getLong(i29);
                int i31 = m754620;
                int i32 = (int) mo3415.getLong(i31);
                int i33 = m754621;
                int i34 = (int) mo3415.getLong(i33);
                int i35 = m754622;
                if (mo3415.isNull(i35)) {
                    i3 = i32;
                    i4 = i33;
                    valueOf2 = null;
                } else {
                    i3 = i32;
                    i4 = i33;
                    valueOf2 = Integer.valueOf((int) mo3415.getLong(i35));
                }
                ʽ r68 = ʼˎ.ٴʼ(valueOf2);
                int i36 = m754623;
                if (mo3415.isNull(i36)) {
                    i5 = i34;
                    valueOf3 = null;
                } else {
                    i5 = i34;
                    valueOf3 = Integer.valueOf((int) mo3415.getLong(i36));
                }
                int i37 = m754624;
                String mo33945 = mo3415.isNull(i37) ? null : mo3415.mo3394(i37);
                int i38 = m754625;
                if (mo3415.isNull(i38)) {
                    m754623 = i36;
                    m754624 = i37;
                    valueOf4 = null;
                } else {
                    m754623 = i36;
                    m754624 = i37;
                    valueOf4 = Integer.valueOf((int) mo3415.getLong(i38));
                }
                ʽ r71 = ʼˎ.ٴʼ(valueOf4);
                int i39 = m754626;
                if (mo3415.isNull(i39)) {
                    m754625 = i38;
                    valueOf5 = null;
                } else {
                    m754625 = i38;
                    valueOf5 = Integer.valueOf((int) mo3415.getLong(i39));
                }
                int i40 = m754627;
                if (mo3415.isNull(i40)) {
                    i6 = i35;
                    valueOf6 = null;
                    m754627 = i40;
                    i8 = m754628;
                    i7 = i39;
                } else {
                    i6 = i35;
                    valueOf6 = Integer.valueOf((int) mo3415.getLong(i40));
                    i7 = i39;
                    m754627 = i40;
                    i8 = m754628;
                }
                boolean z9 = ((int) mo3415.getLong(i8)) != 0;
                m754628 = i8;
                int i41 = m754629;
                boolean z10 = ((int) mo3415.getLong(i41)) != 0;
                int i42 = m754630;
                if (mo3415.isNull(i42)) {
                    i9 = i7;
                    valueOf7 = null;
                } else {
                    i9 = i7;
                    valueOf7 = Integer.valueOf((int) mo3415.getLong(i42));
                }
                ᵎⁱ r76 = ʼˎ.ˈʿ(valueOf7);
                if (r76 == null) {
                    throw new IllegalStateException("Expected NON-NULL 'ar.tvplayer.core.`data`.db.entities.LogosPriority', but it was NULL.");
                }
                int i43 = m754631;
                if (mo3415.isNull(i43)) {
                    i10 = i41;
                    m754630 = i42;
                    valueOf8 = null;
                } else {
                    i10 = i41;
                    m754630 = i42;
                    valueOf8 = Integer.valueOf((int) mo3415.getLong(i43));
                }
                ˈٴ r77 = ʼˎ.ᵔٴ(valueOf8);
                if (r77 == null) {
                    throw new IllegalStateException("Expected NON-NULL 'ar.tvplayer.core.`data`.db.entities.GroupsSorting', but it was NULL.");
                }
                int i44 = m754632;
                if (mo3415.isNull(i44)) {
                    m754631 = i43;
                    i11 = i10;
                    valueOf9 = null;
                } else {
                    m754631 = i43;
                    i11 = i10;
                    valueOf9 = Integer.valueOf((int) mo3415.getLong(i44));
                }
                ˈٴ r78 = ʼˎ.ᵔٴ(valueOf9);
                if (r78 == null) {
                    throw new IllegalStateException("Expected NON-NULL 'ar.tvplayer.core.`data`.db.entities.GroupsSorting', but it was NULL.");
                }
                int i45 = m754633;
                if (mo3415.isNull(i45)) {
                    i12 = m75466;
                    valueOf10 = null;
                } else {
                    i12 = m75466;
                    valueOf10 = Integer.valueOf((int) mo3415.getLong(i45));
                }
                ˈٴ r79 = ʼˎ.ᵔٴ(valueOf10);
                if (r79 == null) {
                    throw new IllegalStateException("Expected NON-NULL 'ar.tvplayer.core.`data`.db.entities.GroupsSorting', but it was NULL.");
                }
                int i46 = m754634;
                if (mo3415.isNull(i46)) {
                    i13 = i44;
                    i14 = i45;
                    valueOf11 = null;
                } else {
                    i13 = i44;
                    i14 = i45;
                    valueOf11 = Integer.valueOf((int) mo3415.getLong(i46));
                }
                ˈٴ r80 = ʼˎ.ᵔٴ(valueOf11);
                if (r80 == null) {
                    throw new IllegalStateException("Expected NON-NULL 'ar.tvplayer.core.`data`.db.entities.GroupsSorting', but it was NULL.");
                }
                int i47 = m754635;
                if (mo3415.isNull(i47)) {
                    i15 = i46;
                    valueOf12 = null;
                } else {
                    i15 = i46;
                    valueOf12 = Integer.valueOf((int) mo3415.getLong(i47));
                }
                ˈٴ r81 = ʼˎ.ᵔٴ(valueOf12);
                if (r81 == null) {
                    throw new IllegalStateException("Expected NON-NULL 'ar.tvplayer.core.`data`.db.entities.GroupsSorting', but it was NULL.");
                }
                int i48 = m754636;
                if (mo3415.isNull(i48)) {
                    i16 = i13;
                    valueOf13 = null;
                } else {
                    i16 = i13;
                    valueOf13 = Integer.valueOf((int) mo3415.getLong(i48));
                }
                ˈٴ r82 = ʼˎ.ᵔٴ(valueOf13);
                if (r82 == null) {
                    throw new IllegalStateException("Expected NON-NULL 'ar.tvplayer.core.`data`.db.entities.GroupsSorting', but it was NULL.");
                }
                int i49 = m754637;
                if (mo3415.isNull(i49)) {
                    i17 = i47;
                    valueOf14 = null;
                } else {
                    i17 = i47;
                    valueOf14 = Integer.valueOf((int) mo3415.getLong(i49));
                }
                int i50 = m754638;
                String mo33946 = mo3415.isNull(i50) ? null : mo3415.mo3394(i50);
                int i51 = m754639;
                m754638 = i50;
                m754639 = i51;
                int i52 = m754640;
                String mo33947 = mo3415.isNull(i51) ? null : mo3415.mo3394(i51);
                int i53 = m754641;
                int i54 = m754642;
                arrayList.add(new ᐧᴵ(j, mo3394, mo33942, z, z2, z3, i21, j2, z4, z5, z6, z7, z8, mo33943, i24, mo33944, valueOf15, valueOf, i30, i3, i5, r68, valueOf3, mo33945, r71, valueOf5, valueOf6, z9, z10, r76, r77, r78, r79, r80, r81, r82, valueOf14, mo33946, mo33947, ((int) mo3415.getLong(i52)) != 0, ((int) mo3415.getLong(i53)) != 0, ((int) mo3415.getLong(i54)) != 0));
                int i55 = i15;
                m754635 = i17;
                m75466 = i12;
                m754633 = i14;
                m754634 = i55;
                m75465 = i23;
                m754642 = i54;
                m754615 = i2;
                m754619 = i29;
                m754616 = i25;
                m754621 = i4;
                m754622 = i6;
                m754626 = i9;
                m754629 = i11;
                m754632 = i16;
                m754618 = i28;
                m754636 = i48;
                m754637 = i49;
                m75463 = i19;
                m75464 = i20;
                m754620 = i31;
                m754640 = i52;
                m754641 = i53;
                m7546 = i27;
                m75462 = i18;
                m754617 = i;
            }
            mo3415.close();
            return arrayList;
        } catch (Throwable th) {
            mo3415.close();
            throw th;
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    private final Object m7048(Object obj) {
        InterfaceC4930 mo3415 = ((InterfaceC4932) obj).mo3415("\n        SELECT p.id, p.name, p.url, p.is_enabled, p.position, p.channel_count, p.movie_count, p.series_count,\n        (SELECT item_count\n            FROM movie_categories mc\n            WHERE mc.playlist_id == p.id AND mc.name == '__all_vod_category_name__' AND mc.deleted_time IS NULL) stalker_movie_count,\n        (SELECT item_count\n            FROM series_categories sc\n            WHERE sc.playlist_id == p.id AND sc.name == '__all_vod_category_name__' AND sc.deleted_time IS NULL) stalker_series_count\n        FROM playlists p\n        ");
        try {
            ArrayList arrayList = new ArrayList();
            while (mo3415.mo3392()) {
                arrayList.add(new ˏᵢ(mo3415.getLong(0), mo3415.mo3394(1), mo3415.mo3394(2), ((int) mo3415.getLong(3)) != 0, mo3415.isNull(4) ? null : Integer.valueOf((int) mo3415.getLong(4)), (int) mo3415.getLong(5), (int) mo3415.getLong(6), (int) mo3415.getLong(7), mo3415.isNull(8) ? null : Integer.valueOf((int) mo3415.getLong(8)), mo3415.isNull(9) ? null : Integer.valueOf((int) mo3415.getLong(9))));
            }
            return arrayList;
        } finally {
            mo3415.close();
        }
    }

    @Override // p329.InterfaceC4106
    /* renamed from: ⁱˊ */
    public final Object mo3844(Object obj) {
        InterfaceC4930 mo3415;
        int i;
        int i2;
        Integer valueOf;
        Boolean bool;
        Boolean bool2;
        Boolean bool3;
        int i3;
        Boolean bool4;
        int i4 = this.f12261;
        int i5 = 12;
        int i6 = 11;
        int i7 = 5;
        int i8 = 4;
        int i9 = 3;
        int i10 = 2;
        int i11 = 1;
        C0907 c0907 = C0907.f3832;
        Object obj2 = null;
        switch (i4) {
            case 0:
                mo3415 = ((InterfaceC4932) obj).mo3415("SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?");
                try {
                    mo3415.mo3397(1, 200);
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
                        ArrayList arrayList2 = arrayList;
                        int i12 = m754614;
                        EnumC3961 enumC3961 = ˊʻ.ʾˋ((int) mo3415.getLong(m75462));
                        String mo33942 = mo3415.mo3394(m75463);
                        String mo33943 = mo3415.mo3394(m75464);
                        byte[] blob = mo3415.getBlob(m75465);
                        C3977 c3977 = C3977.f15328;
                        C3977 c39772 = com.bumptech.glide.ʽ.ﾞᴵ(blob);
                        C3977 c39773 = com.bumptech.glide.ʽ.ﾞᴵ(mo3415.getBlob(m75466));
                        long j = mo3415.getLong(m75467);
                        long j2 = mo3415.getLong(m75468);
                        long j3 = mo3415.getLong(m75469);
                        int i13 = (int) mo3415.getLong(m754610);
                        int i14 = ˊʻ.ʾᵎ((int) mo3415.getLong(m754611));
                        long j4 = mo3415.getLong(m754612);
                        long j5 = mo3415.getLong(m754613);
                        long j6 = mo3415.getLong(i12);
                        int i15 = m754615;
                        long j7 = mo3415.getLong(i15);
                        int i16 = m754613;
                        int i17 = m754616;
                        boolean z = ((int) mo3415.getLong(i17)) != 0;
                        int i18 = m7546;
                        int i19 = m754617;
                        int i20 = m75462;
                        int i21 = ˊʻ.ᵢˏ((int) mo3415.getLong(i19));
                        int i22 = m754618;
                        int i23 = (int) mo3415.getLong(i22);
                        int i24 = m754619;
                        int i25 = (int) mo3415.getLong(i24);
                        int i26 = m754620;
                        long j8 = mo3415.getLong(i26);
                        int i27 = m754621;
                        int i28 = (int) mo3415.getLong(i27);
                        int i29 = m754622;
                        int i30 = (int) mo3415.getLong(i29);
                        int i31 = m754623;
                        String mo33944 = mo3415.isNull(i31) ? null : mo3415.mo3394(i31);
                        int i32 = m754624;
                        if (mo3415.isNull(i32)) {
                            i = i31;
                            i2 = i29;
                            valueOf = null;
                        } else {
                            i = i31;
                            i2 = i29;
                            valueOf = Integer.valueOf((int) mo3415.getLong(i32));
                        }
                        if (valueOf != null) {
                            bool = Boolean.valueOf(valueOf.intValue() != 0);
                        } else {
                            bool = null;
                        }
                        int i33 = m754625;
                        int i34 = ˊʻ.ʼʼ((int) mo3415.getLong(i33));
                        int i35 = m754626;
                        C1974 c1974 = ˊʻ.ᵔٴ(mo3415.getBlob(i35));
                        int i36 = m754627;
                        boolean z2 = ((int) mo3415.getLong(i36)) != 0;
                        int i37 = m754628;
                        boolean z3 = ((int) mo3415.getLong(i37)) != 0;
                        int i38 = m754629;
                        boolean z4 = ((int) mo3415.getLong(i38)) != 0;
                        m754629 = i38;
                        int i39 = m754630;
                        int i40 = m754631;
                        int i41 = m754632;
                        m754631 = i40;
                        int i42 = m754633;
                        C3231 c3231 = new C3231(mo3394, enumC3961, mo33942, mo33943, c39772, c39773, j, j2, j3, new C3966(c1974, i34, z2, z3, z4, ((int) mo3415.getLong(i39)) != 0, mo3415.getLong(i40), mo3415.getLong(i41), ˊʻ.ʽ(mo3415.getBlob(i42))), i13, i14, j4, j5, j6, j7, z, i21, i23, i25, j8, i28, i30, mo33944, bool);
                        m754633 = i42;
                        m754632 = i41;
                        arrayList = arrayList2;
                        arrayList.add(c3231);
                        m754613 = i16;
                        m754630 = i39;
                        m754615 = i15;
                        m7546 = i18;
                        m754620 = i26;
                        m754627 = i36;
                        m754616 = i17;
                        m754628 = i37;
                        m75462 = i20;
                        m754617 = i19;
                        m754618 = i22;
                        m754619 = i24;
                        m754621 = i27;
                        m754622 = i2;
                        m754623 = i;
                        m754624 = i32;
                        m754625 = i33;
                        m754626 = i35;
                        m754614 = i12;
                    }
                    return arrayList;
                } finally {
                }
            case 1:
                InterfaceC4932 interfaceC4932 = (InterfaceC4932) obj;
                mo3415 = interfaceC4932.mo3415("UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)");
                try {
                    mo3415.mo3392();
                    int m7530 = AbstractC3586.m7530(interfaceC4932);
                    mo3415.close();
                    return Integer.valueOf(m7530);
                } finally {
                }
            case 2:
                try {
                    ((InterfaceC4932) obj).mo3415("UPDATE channels SET display_mode = 1").mo3392();
                    return c0907;
                } finally {
                }
            case 3:
                mo3415 = ((InterfaceC4932) obj).mo3415("\n        SELECT channels.id\n        FROM channels\n        LEFT OUTER JOIN playlists\n        LEFT OUTER JOIN channel_group_options\n        LEFT OUTER JOIN channel_manual_positions\n        LIMIT 1\n        ");
                try {
                    if (mo3415.mo3392() && !mo3415.isNull(0)) {
                        obj2 = Long.valueOf(mo3415.getLong(0));
                    }
                    return obj2;
                } finally {
                }
            case 4:
                try {
                    ((InterfaceC4932) obj).mo3415("UPDATE channels SET audio_offset = NULL").mo3392();
                    return c0907;
                } finally {
                }
            case 5:
                try {
                    ((InterfaceC4932) obj).mo3415("UPDATE channels SET watch_time = 0").mo3392();
                    return c0907;
                } finally {
                }
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                mo3415 = ((InterfaceC4932) obj).mo3415("SELECT id, xc_id, playlist_id, url FROM channels WHERE deleted_time IS NULL");
                try {
                    ArrayList arrayList3 = new ArrayList();
                    while (mo3415.mo3392()) {
                        arrayList3.add(new ˑﹳ(mo3415.getLong(0), mo3415.isNull(1) ? null : Integer.valueOf((int) mo3415.getLong(1)), mo3415.getLong(2), mo3415.mo3394(3)));
                    }
                    return arrayList3;
                } finally {
                }
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                mo3415 = ((InterfaceC4932) obj).mo3415("\n        SELECT g.id, p.id playlist_id, p.name playlist_name, p.position playlist_position, p.is_expanded,\n        p.prev_groups_sorting, p.groups_sorting, g.name group_name, o.custom_group_name, g.is_custom,\n        MIN(c.position_in_playlist) position_in_playlist, o.is_visible, o.position manual_position, o.id options_id\n        FROM channel_groups g\n        LEFT OUTER JOIN playlists p ON p.id == g.playlist_id\n        LEFT OUTER JOIN channels c ON c.original_group_id == g.id\n        LEFT OUTER JOIN channel_group_options o ON o.group_id == g.id\n        WHERE g.deleted_time IS NULL AND c.deleted_time IS NULL AND IFNULL(p.is_enabled, 1) == 1\n        GROUP BY g.id\n        UNION\n        SELECT g.id, p.id playlist_id, p.name playlist_name, p.position playlist_position, p.is_expanded,\n        p.prev_groups_sorting, p.groups_sorting, g.name group_name, NULL custom_group_name, g.is_custom,\n        0 position_in_playlist, NULL is_visible, NULL manual_position, NULL options_id\n        FROM playlists p\n        LEFT OUTER JOIN channel_groups g ON g.playlist_id == p.id AND g.deleted_time IS NULL\n        WHERE p.is_enabled == 1\n            AND g.id IS NULL\n            AND EXISTS (SELECT c.id FROM channels c WHERE c.playlist_id == p.id AND c.deleted_time IS NULL)\n        ");
                try {
                    ArrayList arrayList4 = new ArrayList();
                    while (mo3415.mo3392()) {
                        Long valueOf2 = mo3415.isNull(0) ? null : Long.valueOf(mo3415.getLong(0));
                        Long valueOf3 = mo3415.isNull(1) ? null : Long.valueOf(mo3415.getLong(1));
                        String mo33945 = mo3415.isNull(2) ? null : mo3415.mo3394(2);
                        Integer valueOf4 = mo3415.isNull(i9) ? null : Integer.valueOf((int) mo3415.getLong(i9));
                        Integer valueOf5 = mo3415.isNull(4) ? null : Integer.valueOf((int) mo3415.getLong(4));
                        if (valueOf5 != null) {
                            bool2 = Boolean.valueOf(valueOf5.intValue() != 0);
                        } else {
                            bool2 = null;
                        }
                        ˈٴ r25 = ʼˎ.ᵔٴ(mo3415.isNull(5) ? null : Integer.valueOf((int) mo3415.getLong(5)));
                        ˈٴ r26 = ʼˎ.ᵔٴ(mo3415.isNull(6) ? null : Integer.valueOf((int) mo3415.getLong(6)));
                        String mo33946 = mo3415.isNull(7) ? null : mo3415.mo3394(7);
                        String mo33947 = mo3415.isNull(8) ? null : mo3415.mo3394(8);
                        boolean z5 = ((int) mo3415.getLong(9)) != 0;
                        Integer valueOf6 = mo3415.isNull(10) ? null : Integer.valueOf((int) mo3415.getLong(10));
                        Integer valueOf7 = mo3415.isNull(11) ? null : Integer.valueOf((int) mo3415.getLong(11));
                        if (valueOf7 != null) {
                            bool3 = Boolean.valueOf(valueOf7.intValue() != 0);
                        } else {
                            bool3 = null;
                        }
                        arrayList4.add(new ﾞʻ(valueOf2, valueOf3, mo33945, valueOf4, bool2, r25, r26, mo33946, mo33947, z5, valueOf6, bool3, mo3415.isNull(12) ? null : Integer.valueOf((int) mo3415.getLong(12)), mo3415.isNull(13) ? null : Long.valueOf(mo3415.getLong(13))));
                        i9 = 3;
                    }
                    return arrayList4;
                } finally {
                }
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                try {
                    ((InterfaceC4932) obj).mo3415("UPDATE channel_tvg_bindings SET is_tvg_updated = 0").mo3392();
                    return c0907;
                } finally {
                }
            case 9:
                mo3415 = ((InterfaceC4932) obj).mo3415("\n        SELECT COUNT(*)\n        FROM channel_tvg_bindings b\n        INNER JOIN channels c ON c.id == b.channel_id\n        INNER JOIN playlists p ON p.id == c.playlist_id\n        WHERE c.deleted_time IS NULL AND p.is_enabled == 1 AND p.is_vod == 0\n        ");
                try {
                    i3 = mo3415.mo3392() ? (int) mo3415.getLong(0) : 0;
                    mo3415.close();
                    return Integer.valueOf(i3);
                } finally {
                }
            case 10:
                try {
                    ((InterfaceC4932) obj).mo3415("DELETE FROM channel_tvg_bindings").mo3392();
                    return c0907;
                } finally {
                }
            case 11:
                mo3415 = ((InterfaceC4932) obj).mo3415("\n        SELECT b.channel_id, b.tvg_channel_id, t.xmltv_channel_id, t.icon_url, t.tvg_source_id\n        FROM channel_tvg_bindings b\n        INNER JOIN tvg_channels t ON b.tvg_channel_id == t.id\n        ");
                try {
                    ArrayList arrayList5 = new ArrayList();
                    while (mo3415.mo3392()) {
                        arrayList5.add(new ʼʼ(mo3415.getLong(0), mo3415.getLong(1), mo3415.isNull(4) ? null : Long.valueOf(mo3415.getLong(4)), mo3415.mo3394(2), mo3415.mo3394(3)));
                    }
                    return arrayList5;
                } finally {
                }
            case 12:
                mo3415 = ((InterfaceC4932) obj).mo3415("SELECT channel_id FROM channel_tvg_bindings");
                try {
                    ArrayList arrayList6 = new ArrayList();
                    while (mo3415.mo3392()) {
                        arrayList6.add(Long.valueOf(mo3415.getLong(0)));
                    }
                    return arrayList6;
                } finally {
                }
            case 13:
                try {
                    ((InterfaceC4932) obj).mo3415("DELETE FROM history_programs").mo3392();
                    return c0907;
                } finally {
                }
            case 14:
                mo3415 = ((InterfaceC4932) obj).mo3415("\n        SELECT c.id, c.playlist_id, p.name playlist_name, p.url playlist_url, p.position playlist_position,\n        c.stalker_id, c.stalker_genre_id, c.stalker_type, c.name, c.is_visible\n        FROM movie_categories c\n        INNER JOIN playlists p ON p.id == c.playlist_id \n        WHERE p.is_enabled == 1 AND c.stalker_id IS NOT NULL AND c.deleted_time IS NULL\n        ");
                try {
                    ArrayList arrayList7 = new ArrayList();
                    while (mo3415.mo3392()) {
                        arrayList7.add(new ˆﾞ(mo3415.getLong(0), mo3415.getLong(1), mo3415.mo3394(2), mo3415.mo3394(3), (int) mo3415.getLong(4), mo3415.isNull(5) ? null : Long.valueOf(mo3415.getLong(5)), mo3415.isNull(6) ? null : Long.valueOf(mo3415.getLong(6)), mo3415.isNull(7) ? null : mo3415.mo3394(7), mo3415.mo3394(8), ((int) mo3415.getLong(9)) != 0));
                    }
                    return arrayList7;
                } finally {
                }
            case 15:
                mo3415 = ((InterfaceC4932) obj).mo3415("\n        SELECT c.id, p.id playlist_id, p.name playlist_name, p.position playlist_position,\n        p.is_expanded_in_movies, p.prev_movie_groups_sorting, p.movie_groups_sorting,\n        c.stalker_id, c.stalker_genre_id, c.stalker_type, c.item_count, c.name, c.is_visible, c.position,\n        MIN(m.position_in_playlist) first_movie_position, MAX(m.added_time) max_movie_added_time\n        FROM movie_categories c\n        INNER JOIN playlists p ON p.id == c.playlist_id \n        INNER JOIN movies m ON m.category_id == c.id\n        WHERE c.deleted_time IS NULL\n            AND m.deleted_time IS NULL\n            AND p.is_enabled == 1\n            AND m.position_in_playlist != 2147483647\n        GROUP BY c.id\n        UNION\n        SELECT c.id, p.id playlist_id, p.name playlist_name, p.position playlist_position,\n        p.is_expanded_in_movies, p.prev_movie_groups_sorting, p.movie_groups_sorting,\n        c.stalker_id, c.stalker_genre_id, c.stalker_type, c.item_count, c.name, c.is_visible, c.position,\n        NULL first_movie_position, NULL max_movie_added_time\n        FROM playlists p\n        LEFT OUTER JOIN movie_categories c ON c.playlist_id == p.id AND c.deleted_time IS NULL\n        WHERE p.is_enabled == 1\n            AND c.id IS NULL\n            AND EXISTS (SELECT m.id FROM movies m WHERE m.deleted_time IS NULL AND m.playlist_id == p.id)\n        ");
                try {
                    ArrayList arrayList8 = new ArrayList();
                    while (mo3415.mo3392()) {
                        Long valueOf8 = mo3415.isNull(0) ? null : Long.valueOf(mo3415.getLong(0));
                        long j9 = mo3415.getLong(i11);
                        String mo33948 = mo3415.mo3394(i10);
                        Integer valueOf9 = mo3415.isNull(3) ? null : Integer.valueOf((int) mo3415.getLong(3));
                        boolean z6 = ((int) mo3415.getLong(i8)) != 0;
                        ˈٴ r262 = ʼˎ.ᵔٴ(mo3415.isNull(i7) ? null : Integer.valueOf((int) mo3415.getLong(i7)));
                        if (r262 == null) {
                            throw new IllegalStateException("Expected NON-NULL 'ar.tvplayer.core.`data`.db.entities.GroupsSorting', but it was NULL.");
                        }
                        ˈٴ r27 = ʼˎ.ᵔٴ(mo3415.isNull(6) ? null : Integer.valueOf((int) mo3415.getLong(6)));
                        if (r27 == null) {
                            throw new IllegalStateException("Expected NON-NULL 'ar.tvplayer.core.`data`.db.entities.GroupsSorting', but it was NULL.");
                        }
                        Long valueOf10 = mo3415.isNull(7) ? null : Long.valueOf(mo3415.getLong(7));
                        Long valueOf11 = mo3415.isNull(8) ? null : Long.valueOf(mo3415.getLong(8));
                        String mo33949 = mo3415.isNull(9) ? null : mo3415.mo3394(9);
                        Integer valueOf12 = mo3415.isNull(10) ? null : Integer.valueOf((int) mo3415.getLong(10));
                        String mo339410 = mo3415.isNull(i6) ? null : mo3415.mo3394(i6);
                        Integer valueOf13 = mo3415.isNull(i5) ? null : Integer.valueOf((int) mo3415.getLong(i5));
                        if (valueOf13 != null) {
                            bool4 = Boolean.valueOf(valueOf13.intValue() != 0);
                        } else {
                            bool4 = null;
                        }
                        arrayList8.add(new ᵔי(valueOf8, j9, mo33948, valueOf9, z6, r262, r27, valueOf10, valueOf11, mo33949, valueOf12, mo339410, bool4, mo3415.isNull(13) ? null : Integer.valueOf((int) mo3415.getLong(13)), mo3415.isNull(14) ? null : Integer.valueOf((int) mo3415.getLong(14)), mo3415.isNull(15) ? null : Long.valueOf(mo3415.getLong(15))));
                        i5 = 12;
                        i6 = 11;
                        i7 = 5;
                        i8 = 4;
                        i10 = 2;
                        i11 = 1;
                    }
                    return arrayList8;
                } finally {
                }
            case 16:
                mo3415 = ((InterfaceC4932) obj).mo3415("SELECT id FROM movies WHERE deleted_time IS NULL LIMIT 1");
                try {
                    ArrayList arrayList9 = new ArrayList();
                    while (mo3415.mo3392()) {
                        arrayList9.add(Long.valueOf(mo3415.getLong(0)));
                    }
                    return arrayList9;
                } finally {
                }
            case 17:
                try {
                    ((InterfaceC4932) obj).mo3415("UPDATE movies SET display_mode = 1").mo3392();
                    return c0907;
                } finally {
                }
            case 18:
                return m7046(obj);
            case 19:
                try {
                    ((InterfaceC4932) obj).mo3415("UPDATE movies SET last_turn_on_time = NULL WHERE last_turn_on_time > 0").mo3392();
                    return c0907;
                } finally {
                }
            case 20:
                try {
                    ((InterfaceC4932) obj).mo3415("DELETE FROM my_programs").mo3392();
                    return c0907;
                } finally {
                }
            case 21:
                return m7043(obj);
            case 22:
                mo3415 = ((InterfaceC4932) obj).mo3415("SELECT id, channel_id, program_start_seconds FROM my_programs");
                try {
                    ArrayList arrayList10 = new ArrayList();
                    while (mo3415.mo3392()) {
                        arrayList10.add(new ᵎᵔ(mo3415.getLong(0), mo3415.getLong(1), mo3415.getLong(2)));
                    }
                    return arrayList10;
                } finally {
                }
            case 23:
                return m7048(obj);
            case 24:
                return m7045(obj);
            case 25:
                mo3415 = ((InterfaceC4932) obj).mo3415("SELECT COUNT(*) FROM playlists");
                try {
                    i3 = mo3415.mo3392() ? (int) mo3415.getLong(0) : 0;
                    mo3415.close();
                    return Integer.valueOf(i3);
                } finally {
                }
            case 26:
                mo3415 = ((InterfaceC4932) obj).mo3415("SELECT COUNT(*) FROM playlists");
                try {
                    if (mo3415.mo3392() && !mo3415.isNull(0)) {
                        obj2 = Integer.valueOf((int) mo3415.getLong(0));
                    }
                    return obj2;
                } finally {
                }
            case 27:
                return m7047(obj);
            case 28:
                return m7044(obj);
            default:
                mo3415 = ((InterfaceC4932) obj).mo3415("\n        SELECT COUNT(*) FROM playlists p WHERE p.is_enabled == 1 AND p.is_vod == 0\n            AND EXISTS (SELECT c.id FROM channels c WHERE c.deleted_time IS NULL AND c.playlist_id == p.id)\n        ");
                try {
                    if (mo3415.mo3392() && !mo3415.isNull(0)) {
                        obj2 = Integer.valueOf((int) mo3415.getLong(0));
                    }
                    return obj2;
                } finally {
                }
        }
    }
}

package p240;

import java.util.ArrayList;
import p013.C0907;
import p223.C3056;
import p286.AbstractC3586;
import p329.InterfaceC4106;
import p417.InterfaceC4930;
import p417.InterfaceC4932;
import ˉʾ.ـᵢ;

/* renamed from: ˑᵎ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C3220 implements InterfaceC4106 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ String f12282;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f12283;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ long f12284;

    public /* synthetic */ C3220(long j, String str, int i) {
        this.f12283 = i;
        this.f12284 = j;
        this.f12282 = str;
    }

    public /* synthetic */ C3220(String str, long j, int i) {
        this.f12283 = i;
        this.f12282 = str;
        this.f12284 = j;
    }

    @Override // p329.InterfaceC4106
    /* renamed from: ⁱˊ */
    public final Object mo3844(Object obj) {
        InterfaceC4930 mo3415;
        long j;
        Integer valueOf;
        switch (this.f12283) {
            case 0:
                long j2 = this.f12284;
                String str = this.f12282;
                InterfaceC4932 interfaceC4932 = (InterfaceC4932) obj;
                mo3415 = interfaceC4932.mo3415("UPDATE workspec SET schedule_requested_at=? WHERE id=?");
                try {
                    mo3415.mo3397(1, j2);
                    mo3415.mo3391(2, str);
                    mo3415.mo3392();
                    int m7530 = AbstractC3586.m7530(interfaceC4932);
                    mo3415.close();
                    return Integer.valueOf(m7530);
                } finally {
                }
            case 1:
                long j3 = this.f12284;
                String str2 = this.f12282;
                mo3415 = ((InterfaceC4932) obj).mo3415("UPDATE workspec SET last_enqueue_time=? WHERE id=?");
                try {
                    mo3415.mo3397(1, j3);
                    mo3415.mo3391(2, str2);
                    mo3415.mo3392();
                    mo3415.close();
                    return C0907.f3832;
                } finally {
                }
            case 2:
                String str3 = this.f12282;
                long j4 = this.f12284;
                mo3415 = ((InterfaceC4932) obj).mo3415("UPDATE channels SET url = ? WHERE id == ?");
                try {
                    mo3415.mo3391(1, str3);
                    mo3415.mo3397(2, j4);
                    mo3415.mo3392();
                    mo3415.close();
                    return C0907.f3832;
                } finally {
                }
            case 3:
                String str4 = this.f12282;
                long j5 = this.f12284;
                mo3415 = ((InterfaceC4932) obj).mo3415("UPDATE channels SET blocked_tvg_ids = ? WHERE id == ?");
                try {
                    mo3415.mo3391(1, str4);
                    mo3415.mo3397(2, j5);
                    mo3415.mo3392();
                    mo3415.close();
                    return C0907.f3832;
                } finally {
                }
            case 4:
                long j6 = this.f12284;
                mo3415 = ((InterfaceC4932) obj).mo3415("UPDATE channels SET custom_name = ? WHERE id == ?");
                String str5 = this.f12282;
                try {
                    if (str5 == null) {
                        mo3415.mo3396(1);
                    } else {
                        mo3415.mo3391(1, str5);
                    }
                    mo3415.mo3397(2, j6);
                    mo3415.mo3392();
                    mo3415.close();
                    return C0907.f3832;
                } finally {
                }
            case 5:
                long j7 = this.f12284;
                mo3415 = ((InterfaceC4932) obj).mo3415("UPDATE channel_group_options SET custom_group_name = ? WHERE id == ?");
                String str6 = this.f12282;
                try {
                    if (str6 == null) {
                        mo3415.mo3396(1);
                    } else {
                        mo3415.mo3391(1, str6);
                    }
                    mo3415.mo3397(2, j7);
                    mo3415.mo3392();
                    mo3415.close();
                    return C0907.f3832;
                } finally {
                }
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                String str7 = this.f12282;
                long j8 = this.f12284;
                mo3415 = ((InterfaceC4932) obj).mo3415("UPDATE playlists SET name = ? WHERE id == ?");
                try {
                    mo3415.mo3391(1, str7);
                    mo3415.mo3397(2, j8);
                    mo3415.mo3392();
                    mo3415.close();
                    return C0907.f3832;
                } finally {
                }
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                long j9 = this.f12284;
                mo3415 = ((InterfaceC4932) obj).mo3415("UPDATE playlists SET user_agent = ? WHERE id == ?");
                String str8 = this.f12282;
                try {
                    if (str8 == null) {
                        mo3415.mo3396(1);
                    } else {
                        mo3415.mo3391(1, str8);
                    }
                    mo3415.mo3397(2, j9);
                    mo3415.mo3392();
                    mo3415.close();
                    return C0907.f3832;
                } finally {
                }
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                String str9 = this.f12282;
                long j10 = this.f12284;
                mo3415 = ((InterfaceC4932) obj).mo3415("UPDATE playlists SET url = ? WHERE id == ?");
                try {
                    mo3415.mo3391(1, str9);
                    mo3415.mo3397(2, j10);
                    mo3415.mo3392();
                    mo3415.close();
                    return C0907.f3832;
                } finally {
                }
            case 9:
                String str10 = this.f12282;
                long j11 = this.f12284;
                mo3415 = ((InterfaceC4932) obj).mo3415("UPDATE playlists SET stalker_token = ? WHERE id == ?");
                try {
                    mo3415.mo3391(1, str10);
                    mo3415.mo3397(2, j11);
                    mo3415.mo3392();
                    mo3415.close();
                    return C0907.f3832;
                } finally {
                }
            case 10:
                String str11 = this.f12282;
                long j12 = this.f12284;
                mo3415 = ((InterfaceC4932) obj).mo3415("UPDATE recordings SET file_path = ? WHERE id == ?");
                try {
                    mo3415.mo3391(1, str11);
                    mo3415.mo3397(2, j12);
                    mo3415.mo3392();
                    mo3415.close();
                    return C0907.f3832;
                } finally {
                }
            case 11:
                String str12 = this.f12282;
                long j13 = this.f12284;
                mo3415 = ((InterfaceC4932) obj).mo3415("\n        SELECT * FROM tvg_programs\n        INNER JOIN tvg_programs_fts ON tvg_programs.id == tvg_programs_fts.docid\n        WHERE tvg_programs_fts.title MATCH ? AND start_epoch_seconds >= ?\n        LIMIT 10000\n        ");
                try {
                    mo3415.mo3391(1, str12);
                    mo3415.mo3397(2, j13);
                    int m7546 = AbstractC3586.m7546(mo3415, "id");
                    int m75462 = AbstractC3586.m7546(mo3415, "tvg_channel_id");
                    int m75463 = AbstractC3586.m7546(mo3415, "start_epoch_seconds");
                    int m75464 = AbstractC3586.m7546(mo3415, "stop_epoch_seconds");
                    int m75465 = AbstractC3586.m7546(mo3415, "title");
                    int m75466 = AbstractC3586.m7546(mo3415, "desc");
                    int m75467 = AbstractC3586.m7546(mo3415, "title_length");
                    int m75468 = AbstractC3586.m7546(mo3415, "desc_length");
                    ArrayList arrayList = new ArrayList();
                    while (mo3415.mo3392()) {
                        long j14 = mo3415.getLong(m7546);
                        long j15 = mo3415.getLong(m75462);
                        long j16 = mo3415.getLong(m75463);
                        long j17 = mo3415.getLong(m75464);
                        String mo3394 = mo3415.mo3394(m75465);
                        String mo33942 = mo3415.mo3394(m75466);
                        if (mo3415.isNull(m75467)) {
                            j = j14;
                            valueOf = null;
                        } else {
                            j = j14;
                            valueOf = Integer.valueOf((int) mo3415.getLong(m75467));
                        }
                        arrayList.add(new ـᵢ(j, j15, j16, j17, mo3394, mo33942, valueOf, mo3415.isNull(m75468) ? null : Integer.valueOf((int) mo3415.getLong(m75468))));
                    }
                    return arrayList;
                } finally {
                }
            case 12:
                String str13 = this.f12282;
                long j18 = this.f12284;
                mo3415 = ((InterfaceC4932) obj).mo3415("UPDATE tvg_sources SET url = ? WHERE id == ?");
                try {
                    mo3415.mo3391(1, str13);
                    mo3415.mo3397(2, j18);
                    mo3415.mo3392();
                    mo3415.close();
                    return C0907.f3832;
                } finally {
                }
            default:
                String str14 = this.f12282;
                long j19 = this.f12284;
                mo3415 = ((InterfaceC4932) obj).mo3415("UPDATE tvg_sources SET name = ? WHERE id == ?");
                try {
                    mo3415.mo3391(1, str14);
                    mo3415.mo3397(2, j19);
                    mo3415.mo3392();
                    mo3415.close();
                    return C0907.f3832;
                } finally {
                }
        }
    }
}

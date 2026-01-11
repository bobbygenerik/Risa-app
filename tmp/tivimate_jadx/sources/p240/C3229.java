package p240;

import com.bumptech.glide.ʽ;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import p013.C0907;
import p223.C3056;
import p255.C3368;
import p286.AbstractC3586;
import p322.C3966;
import p322.C3977;
import p322.EnumC3961;
import p329.InterfaceC4106;
import p417.InterfaceC4930;
import p417.InterfaceC4932;
import p430.AbstractC5103;
import ˉʾ.ʾᵎ;
import ˉʾ.ˉـ;
import ˉʾ.ˉٴ;
import ˉʾ.ˑ;
import ˉʾ.ـˏ;
import ˉʾ.ـᵎ;
import ˉʾ.ـﹶ;
import ˉʾ.ٴﹶ;
import ˑᵢ.ʻٴ;
import ˑᵢ.ʽʽ;
import ˑᵢ.ʾˋ;
import ˑᵢ.ʿ;
import ˑᵢ.ʿᵢ;
import ˑᵢ.ˈʿ;
import ˑᵢ.ˈⁱ;
import ˑᵢ.ˏי;
import ˑᵢ.ٴʼ;
import ˑᵢ.ᴵˊ;
import ˑᵢ.ᵎᵔ;
import ˑᵢ.ᵔٴ;
import ˑᵢ.ᵢˏ;
import ˑᵢ.ﹳᐧ;
import ᴵˋ.ˊʻ;

/* renamed from: ˑᵎ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C3229 implements InterfaceC4106 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f12313;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f12314;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f12315;

    public /* synthetic */ C3229(Object obj, int i, Object obj2) {
        this.f12314 = i;
        this.f12315 = obj;
        this.f12313 = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v8, types: [יـ.ﹳᐧ, java.util.Map, יـ.ˑﹳ] */
    /* JADX WARN: Type inference failed for: r8v0, types: [יـ.ﹳᐧ, יـ.ˑﹳ] */
    @Override // p329.InterfaceC4106
    /* renamed from: ⁱˊ */
    public final Object mo3844(Object obj) {
        int i = this.f12314;
        int i2 = 2;
        C0907 c0907 = C0907.f3832;
        Object obj2 = this.f12313;
        Object obj3 = this.f12315;
        switch (i) {
            case 0:
                ((C3221) obj3).f12285.m3736((InterfaceC4932) obj, (C3230) obj2);
                return c0907;
            case 1:
                ((C3224) obj3).f12290.m3736((InterfaceC4932) obj, (C3233) obj2);
                return c0907;
            case 2:
                ((C3223) obj3).f12288.m3736((InterfaceC4932) obj, (C3212) obj2);
                return c0907;
            case 3:
                ((C3225) obj3).f12292.m3736((InterfaceC4932) obj, (C3218) obj2);
                return c0907;
            case 4:
                EnumC3961 enumC3961 = (EnumC3961) obj3;
                String str = (String) obj2;
                InterfaceC4932 interfaceC4932 = (InterfaceC4932) obj;
                InterfaceC4930 mo3415 = interfaceC4932.mo3415("UPDATE workspec SET state=? WHERE id=?");
                try {
                    mo3415.mo3397(1, ˊʻ.ˆﾞ(enumC3961));
                    mo3415.mo3391(2, str);
                    mo3415.mo3392();
                    int m7530 = AbstractC3586.m7530(interfaceC4932);
                    mo3415.close();
                    return Integer.valueOf(m7530);
                } finally {
                }
            case 5:
                String str2 = (String) obj3;
                C3216 c3216 = (C3216) obj2;
                InterfaceC4932 interfaceC49322 = (InterfaceC4932) obj;
                InterfaceC4930 mo34152 = interfaceC49322.mo3415("SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)");
                try {
                    mo34152.mo3391(1, str2);
                    int i3 = 0;
                    ?? c3368 = new C3368(0);
                    ?? c33682 = new C3368(0);
                    while (mo34152.mo3392()) {
                        String mo3394 = mo34152.mo3394(0);
                        if (!c3368.containsKey(mo3394)) {
                            c3368.put(mo3394, new ArrayList());
                        }
                        String mo33942 = mo34152.mo3394(0);
                        if (!c33682.containsKey(mo33942)) {
                            c33682.put(mo33942, new ArrayList());
                        }
                    }
                    mo34152.reset();
                    c3216.m7054(interfaceC49322, c3368);
                    c3216.m7055(interfaceC49322, c33682);
                    ArrayList arrayList = new ArrayList();
                    Map map = c33682;
                    while (mo34152.mo3392()) {
                        String mo33943 = mo34152.mo3394(i3);
                        EnumC3961 enumC39612 = ˊʻ.ʾˋ((int) mo34152.getLong(1));
                        byte[] blob = mo34152.getBlob(i2);
                        C3977 c3977 = C3977.f15328;
                        Map map2 = map;
                        arrayList.add(new C3227(mo33943, enumC39612, ʽ.ﾞᴵ(blob), mo34152.getLong(14), mo34152.getLong(15), mo34152.getLong(16), new C3966(ˊʻ.ᵔٴ(mo34152.getBlob(6)), ˊʻ.ʼʼ((int) mo34152.getLong(5)), ((int) mo34152.getLong(7)) != 0, ((int) mo34152.getLong(8)) != 0, ((int) mo34152.getLong(9)) != 0, ((int) mo34152.getLong(10)) != 0, mo34152.getLong(11), mo34152.getLong(12), ˊʻ.ʽ(mo34152.getBlob(13))), (int) mo34152.getLong(3), ˊʻ.ʾᵎ((int) mo34152.getLong(17)), mo34152.getLong(18), mo34152.getLong(19), (int) mo34152.getLong(20), (int) mo34152.getLong(4), mo34152.getLong(21), (int) mo34152.getLong(22), (List) AbstractC5103.m10043(c3368, mo34152.mo3394(0)), (List) AbstractC5103.m10043(map2, mo34152.mo3394(0))));
                        i3 = 0;
                        i2 = 2;
                        map = map2;
                    }
                    return arrayList;
                } catch (Throwable th) {
                    throw th;
                }
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                C3977 c39772 = (C3977) obj3;
                String str3 = (String) obj2;
                InterfaceC4930 mo34153 = ((InterfaceC4932) obj).mo3415("UPDATE workspec SET output=? WHERE id=?");
                try {
                    C3977 c39773 = C3977.f15328;
                    mo34153.mo3393(1, ʽ.ʽʽ(c39772));
                    mo34153.mo3391(2, str3);
                    mo34153.mo3392();
                    return c0907;
                } finally {
                }
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                ((C3216) obj3).f12274.m3736((InterfaceC4932) obj, (C3231) obj2);
                return c0907;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                ((C3228) obj3).f12311.m3736((InterfaceC4932) obj, (C3211) obj2);
                return c0907;
            case 9:
                ((ﹳᐧ) obj3).ˑﹳ.m3740((InterfaceC4932) obj, (ArrayList) obj2);
                return c0907;
            case 10:
                ((ˏי) obj3).ˈ.m3740((InterfaceC4932) obj, (ArrayList) obj2);
                return c0907;
            case 11:
                ((ˏי) obj3).ⁱˊ.m3736((InterfaceC4932) obj, (ٴﹶ) obj2);
                return c0907;
            case 12:
                ((ʻٴ) obj3).ˈ.m3740((InterfaceC4932) obj, (List) obj2);
                return c0907;
            case 13:
                ((ʻٴ) obj3).ʽ.m3740((InterfaceC4932) obj, (Collection) obj2);
                return c0907;
            case 14:
                ((ʻٴ) obj3).ⁱˊ.m3741((InterfaceC4932) obj, (ArrayList) obj2);
                return c0907;
            case 15:
                ((ᵢˏ) obj3).ⁱˊ.m3741((InterfaceC4932) obj, (ArrayList) obj2);
                return c0907;
            case 16:
                ((ʾˋ) obj3).ⁱˊ.m3741((InterfaceC4932) obj, (ArrayList) obj2);
                return c0907;
            case 17:
                ((ᴵˊ) obj3).ⁱˊ.m3736((InterfaceC4932) obj, (ʾᵎ) obj2);
                return c0907;
            case 18:
                ((ᴵˊ) obj3).ⁱˊ.m3741((InterfaceC4932) obj, (ArrayList) obj2);
                return c0907;
            case 19:
                ((ʽʽ) obj3).ⁱˊ.m3736((InterfaceC4932) obj, (ˉʾ.ʽʽ) obj2);
                return c0907;
            case 20:
                ((ˑᵢ.ˊʻ) obj3).ⁱˊ.m3736((InterfaceC4932) obj, (ˉٴ) obj2);
                return c0907;
            case 21:
                ((ٴʼ) obj3).ˈ.m3740((InterfaceC4932) obj, (ArrayList) obj2);
                return c0907;
            case 22:
                return Long.valueOf(((ᵔٴ) obj3).ⁱˊ.m3738((InterfaceC4932) obj, (ˉʾ.ٴʼ) obj2));
            case 23:
                ((ᵔٴ) obj3).ˑﹳ.m3740((InterfaceC4932) obj, (ArrayList) obj2);
                return c0907;
            case 24:
                ((ᵔٴ) obj3).ʽ.m3743((InterfaceC4932) obj, (ـˏ) obj2);
                return c0907;
            case 25:
                ((ˈʿ) obj3).ⁱˊ.m3736((InterfaceC4932) obj, (ˉـ) obj2);
                return c0907;
            case 26:
                ((ˈⁱ) obj3).ⁱˊ.m3736((InterfaceC4932) obj, (ـﹶ) obj2);
                return c0907;
            case 27:
                ((ʿ) obj3).ⁱˊ.m3741((InterfaceC4932) obj, (List) obj2);
                return c0907;
            case 28:
                ((ʿᵢ) obj3).ⁱˊ.m3736((InterfaceC4932) obj, (ـᵎ) obj2);
                return c0907;
            default:
                ((ᵎᵔ) obj3).ⁱˊ.m3736((InterfaceC4932) obj, (ˑ) obj2);
                return c0907;
        }
    }
}

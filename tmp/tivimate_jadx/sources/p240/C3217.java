package p240;

import p013.C0907;
import p286.AbstractC3586;
import p329.InterfaceC4106;
import p417.InterfaceC4930;
import p417.InterfaceC4932;

/* renamed from: ˑᵎ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C3217 implements InterfaceC4106 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ int f12276;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f12277;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ String f12278;

    public /* synthetic */ C3217(int i, int i2, String str) {
        this.f12277 = i2;
        this.f12278 = str;
        this.f12276 = i;
    }

    public /* synthetic */ C3217(int i, String str) {
        this.f12277 = 2;
        this.f12276 = i;
        this.f12278 = str;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0002. Please report as an issue. */
    @Override // p329.InterfaceC4106
    /* renamed from: ⁱˊ */
    public final Object mo3844(Object obj) {
        InterfaceC4930 mo3415;
        C3212 c3212;
        switch (this.f12277) {
            case 0:
                String str = this.f12278;
                int i = this.f12276;
                mo3415 = ((InterfaceC4932) obj).mo3415("SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?");
                try {
                    mo3415.mo3391(1, str);
                    mo3415.mo3397(2, i);
                    int m7546 = AbstractC3586.m7546(mo3415, "work_spec_id");
                    int m75462 = AbstractC3586.m7546(mo3415, "generation");
                    int m75463 = AbstractC3586.m7546(mo3415, "system_id");
                    if (mo3415.mo3392()) {
                        c3212 = new C3212((int) mo3415.getLong(m75462), (int) mo3415.getLong(m75463), mo3415.mo3394(m7546));
                    } else {
                        c3212 = null;
                    }
                    return c3212;
                } finally {
                }
            case 1:
                String str2 = this.f12278;
                int i2 = this.f12276;
                mo3415 = ((InterfaceC4932) obj).mo3415("UPDATE workspec SET next_schedule_time_override=9223372036854775807 WHERE (id=? AND next_schedule_time_override_generation=?)");
                try {
                    mo3415.mo3391(1, str2);
                    mo3415.mo3397(2, i2);
                    mo3415.mo3392();
                    mo3415.close();
                    return C0907.f3832;
                } finally {
                }
            default:
                int i3 = this.f12276;
                String str3 = this.f12278;
                mo3415 = ((InterfaceC4932) obj).mo3415("UPDATE workspec SET stop_reason=? WHERE id=?");
                try {
                    mo3415.mo3397(1, i3);
                    mo3415.mo3391(2, str3);
                    mo3415.mo3392();
                    return C0907.f3832;
                } finally {
                }
        }
    }
}

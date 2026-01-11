package p240;

import com.bumptech.glide.ʽ;
import java.util.Iterator;
import java.util.List;
import p010.AbstractC0844;
import p035.AbstractC1219;
import p255.C3359;
import p255.C3366;
import p255.C3367;
import p286.AbstractC3586;
import p322.C3977;
import p322.EnumC3961;
import p417.InterfaceC4930;
import p417.InterfaceC4932;

/* renamed from: ˑᵎ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3216 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ˈ f12274 = new ˈ(4);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC1219 f12275;

    public C3216(AbstractC1219 abstractC1219) {
        this.f12275 = abstractC1219;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final EnumC3961 m7049(String str) {
        return (EnumC3961) AbstractC3586.m7538(this.f12275, true, false, new C3214(9, str));
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C3231 m7050(String str) {
        return (C3231) AbstractC3586.m7538(this.f12275, true, false, new C3214(7, str));
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final List m7051(String str) {
        return (List) AbstractC3586.m7538(this.f12275, true, false, new C3214(8, str));
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int m7052(EnumC3961 enumC3961, String str) {
        return ((Number) AbstractC3586.m7538(this.f12275, false, true, new C3229(enumC3961, 4, str))).intValue();
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m7053(int i, String str) {
        AbstractC3586.m7538(this.f12275, false, true, new C3217(i, str));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m7054(InterfaceC4932 interfaceC4932, C3359 c3359) {
        C3366 c3366 = (C3366) c3359.keySet();
        C3359 c33592 = c3366.f13161;
        if (c33592.isEmpty()) {
            return;
        }
        if (c3359.f13167 > 999) {
            AbstractC3586.m7542(c3359, new C3215(this, interfaceC4932, 1));
            return;
        }
        StringBuilder m3020 = AbstractC0844.m3020("SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN (");
        AbstractC3586.m7544(c33592.f13167, m3020);
        m3020.append(")");
        InterfaceC4930 mo3415 = interfaceC4932.mo3415(m3020.toString());
        Iterator it = c3366.iterator();
        int i = 1;
        while (true) {
            C3367 c3367 = (C3367) it;
            if (!c3367.hasNext()) {
                try {
                    break;
                } finally {
                    mo3415.close();
                }
            } else {
                mo3415.mo3391(i, (String) c3367.next());
                i++;
            }
        }
        int m7543 = AbstractC3586.m7543(mo3415, "work_spec_id");
        if (m7543 == -1) {
            return;
        }
        while (mo3415.mo3392()) {
            List list = (List) c3359.get(mo3415.mo3394(m7543));
            if (list != null) {
                list.add(mo3415.mo3394(0));
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m7055(InterfaceC4932 interfaceC4932, C3359 c3359) {
        C3366 c3366 = (C3366) c3359.keySet();
        C3359 c33592 = c3366.f13161;
        if (c33592.isEmpty()) {
            return;
        }
        if (c3359.f13167 > 999) {
            AbstractC3586.m7542(c3359, new C3215(this, interfaceC4932, 0));
            return;
        }
        StringBuilder m3020 = AbstractC0844.m3020("SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN (");
        AbstractC3586.m7544(c33592.f13167, m3020);
        m3020.append(")");
        InterfaceC4930 mo3415 = interfaceC4932.mo3415(m3020.toString());
        Iterator it = c3366.iterator();
        int i = 1;
        while (true) {
            C3367 c3367 = (C3367) it;
            if (!c3367.hasNext()) {
                try {
                    break;
                } finally {
                    mo3415.close();
                }
            } else {
                mo3415.mo3391(i, (String) c3367.next());
                i++;
            }
        }
        int m7543 = AbstractC3586.m7543(mo3415, "work_spec_id");
        if (m7543 == -1) {
            return;
        }
        while (mo3415.mo3392()) {
            List list = (List) c3359.get(mo3415.mo3394(m7543));
            if (list != null) {
                byte[] blob = mo3415.getBlob(0);
                C3977 c3977 = C3977.f15328;
                list.add(ʽ.ﾞᴵ(blob));
            }
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int m7056(String str, long j) {
        return ((Number) AbstractC3586.m7538(this.f12275, false, true, new C3220(j, str, 0))).intValue();
    }
}

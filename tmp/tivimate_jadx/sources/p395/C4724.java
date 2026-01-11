package p395;

import android.media.ResourceBusyException;
import android.media.UnsupportedSchemeException;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.exoplayer.drm.DrmSession$DrmSessionException;
import androidx.media3.exoplayer.drm.UnsupportedDrmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import p003.C0783;
import p011.HandlerC0874;
import p012.C0894;
import p017.AbstractC0983;
import p017.AbstractC0993;
import p017.AbstractC0997;
import p017.C0956;
import p017.C0982;
import p055.AbstractC1464;
import p055.AbstractC1489;
import p055.C1461;
import p055.C1486;
import p055.C1495;
import p229.C3125;
import p305.AbstractC3731;
import p311.RunnableC3805;
import p366.C4473;
import p366.C4486;
import p384.C4603;
import ˈˊ.ˉˆ;
import ᐧﹳ.ʽ;

/* renamed from: ⁱᴵ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4724 implements InterfaceC4734 {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public Handler f17847;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final InterfaceC4718 f17848;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final UUID f17849;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final Set f17850;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public InterfaceC4730 f17851;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final HashMap f17852;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final C0894 f17853;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final boolean f17854;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public Looper f17855;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public C4717 f17856;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public C4717 f17857;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public C0783 f17858;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final long f17859;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final C3125 f17860;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C4473 f17861;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int[] f17862;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final ArrayList f17863;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final C4603 f17864;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final Set f17865;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public int f17866;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public volatile HandlerC0874 f17867;

    public C4724(UUID uuid, InterfaceC4718 interfaceC4718, HashMap hashMap, int[] iArr, boolean z, C0894 c0894) {
        uuid.getClass();
        AbstractC3731.m7843("Use C.CLEARKEY_UUID instead", !AbstractC1489.f5846.equals(uuid));
        this.f17849 = uuid;
        this.f17861 = C4723.f17843;
        this.f17848 = interfaceC4718;
        this.f17852 = hashMap;
        this.f17862 = iArr;
        this.f17854 = z;
        this.f17853 = c0894;
        this.f17860 = new C3125(21);
        this.f17864 = new C4603(this);
        this.f17863 = new ArrayList();
        this.f17865 = Collections.newSetFromMap(new IdentityHashMap());
        this.f17850 = Collections.newSetFromMap(new IdentityHashMap());
        this.f17859 = 300000L;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static boolean m9474(C4717 c4717) {
        c4717.m9464();
        if (c4717.f17822 != 1) {
            return false;
        }
        DrmSession$DrmSessionException mo9473 = c4717.mo9473();
        mo9473.getClass();
        Throwable cause = mo9473.getCause();
        return (cause instanceof ResourceBusyException) || ˉˆ.ـˆ(cause);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static ArrayList m9475(C1486 c1486, UUID uuid, boolean z) {
        ArrayList arrayList = new ArrayList(c1486.f5841);
        for (int i = 0; i < c1486.f5841; i++) {
            C1461 c1461 = c1486.f5840[i];
            if ((c1461.m4248(uuid) || (AbstractC1489.f5843.equals(uuid) && c1461.m4248(AbstractC1489.f5846))) && (c1461.f5702 != null || z)) {
                arrayList.add(c1461);
            }
        }
        return arrayList;
    }

    @Override // p395.InterfaceC4734
    /* renamed from: ʼˎ */
    public final void mo8990(Looper looper, C0783 c0783) {
        synchronized (this) {
            try {
                Looper looper2 = this.f17855;
                if (looper2 == null) {
                    this.f17855 = looper;
                    this.f17847 = new Handler(looper);
                } else {
                    AbstractC3731.m7857(looper2 == looper);
                    this.f17847.getClass();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f17858 = c0783;
    }

    @Override // p395.InterfaceC4734
    /* renamed from: ˆʾ */
    public final InterfaceC4726 mo8991(C4715 c4715, C1495 c1495) {
        AbstractC3731.m7857(this.f17866 > 0);
        AbstractC3731.m7868(this.f17855);
        C4720 c4720 = new C4720(this, c4715);
        Handler handler = this.f17847;
        handler.getClass();
        handler.post(new RunnableC3805(c4720, 4, c1495));
        return c4720;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C4717 m9476(List list, boolean z, C4715 c4715) {
        this.f17851.getClass();
        boolean z2 = this.f17854 | z;
        InterfaceC4730 interfaceC4730 = this.f17851;
        Looper looper = this.f17855;
        looper.getClass();
        C0783 c0783 = this.f17858;
        c0783.getClass();
        C4717 c4717 = new C4717(this.f17849, interfaceC4730, this.f17860, this.f17864, list, z2, z, null, this.f17852, this.f17848, looper, this.f17853, c0783);
        c4717.mo9460(c4715);
        if (this.f17859 != -9223372036854775807L) {
            c4717.mo9460(null);
        }
        return c4717;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m9477(boolean z) {
        if (z && this.f17855 == null) {
            AbstractC3731.m7859("DefaultDrmSessionMgr", "DefaultDrmSessionManager accessed before setPlayer(), possibly on the wrong thread.", new IllegalStateException());
            return;
        }
        Thread currentThread = Thread.currentThread();
        Looper looper = this.f17855;
        looper.getClass();
        if (currentThread != looper.getThread()) {
            AbstractC3731.m7859("DefaultDrmSessionMgr", "DefaultDrmSessionManager accessed on the wrong thread.\nCurrent thread: " + Thread.currentThread().getName() + "\nExpected thread: " + this.f17855.getThread().getName(), new IllegalStateException());
        }
    }

    @Override // p395.InterfaceC4734
    /* renamed from: ˑﹳ */
    public final InterfaceC4735 mo8994(C4715 c4715, C1495 c1495) {
        m9477(false);
        AbstractC3731.m7857(this.f17866 > 0);
        AbstractC3731.m7868(this.f17855);
        return m9478(this.f17855, c4715, c1495, true);
    }

    @Override // p395.InterfaceC4734
    /* renamed from: ᵎﹶ */
    public final int mo8997(C1495 c1495) {
        m9477(false);
        InterfaceC4730 interfaceC4730 = this.f17851;
        interfaceC4730.getClass();
        int mo9057 = interfaceC4730.mo9057();
        C1486 c1486 = c1495.f5938;
        if (c1486 == null) {
            int m4250 = AbstractC1464.m4250(c1495.f5930);
            int i = 0;
            while (true) {
                int[] iArr = this.f17862;
                if (i >= iArr.length) {
                    i = -1;
                    break;
                }
                if (iArr[i] == m4250) {
                    break;
                }
                i++;
            }
            if (i == -1) {
                return 0;
            }
        } else {
            UUID uuid = this.f17849;
            if (m9475(c1486, uuid, true).isEmpty()) {
                if (c1486.f5841 == 1 && c1486.f5840[0].m4248(AbstractC1489.f5846)) {
                    AbstractC3731.m7850("DefaultDrmSessionMgr", "DrmInitData only contains common PSSH SchemeData. Assuming support for: " + uuid);
                }
                return 1;
            }
            String str = c1486.f5839;
            if (str != null && !"cenc".equals(str) && (!"cbcs".equals(str) ? "cbc1".equals(str) || "cens".equals(str) : Build.VERSION.SDK_INT < 25)) {
                return 1;
            }
        }
        return mo9057;
    }

    @Override // p395.InterfaceC4734
    /* renamed from: ᵔᵢ */
    public final void mo8998() {
        InterfaceC4730 c4486;
        m9477(true);
        int i = this.f17866;
        this.f17866 = i + 1;
        if (i != 0) {
            return;
        }
        if (this.f17851 == null) {
            UUID uuid = this.f17849;
            this.f17861.getClass();
            try {
                try {
                    try {
                        c4486 = new C4723(uuid);
                    } catch (Exception e) {
                        throw new Exception(e);
                    }
                } catch (UnsupportedSchemeException e2) {
                    throw new Exception(e2);
                }
            } catch (UnsupportedDrmException unused) {
                AbstractC3731.m7842("FrameworkMediaDrm", "Failed to instantiate a FrameworkMediaDrm for uuid: " + uuid + ".");
                c4486 = new C4486(4);
            }
            this.f17851 = c4486;
            c4486.mo9056(new ʽ(11, this));
            return;
        }
        if (this.f17859 == -9223372036854775807L) {
            return;
        }
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f17863;
            if (i2 >= arrayList.size()) {
                return;
            }
            ((C4717) arrayList.get(i2)).mo9460(null);
            i2++;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC4735 m9478(Looper looper, C4715 c4715, C1495 c1495, boolean z) {
        if (this.f17867 == null) {
            this.f17867 = new HandlerC0874(this, looper, 4);
        }
        C1486 c1486 = c1495.f5938;
        int i = 0;
        if (c1486 != null) {
            ArrayList m9475 = m9475(c1486, this.f17849, false);
            if (m9475.isEmpty()) {
                Exception exc = new Exception("Media does not support uuid: " + this.f17849);
                AbstractC3731.m7863("DefaultDrmSessionMgr", "DRM error", exc);
                if (c4715 != null) {
                    c4715.m9455(exc);
                }
                return new C4728(new DrmSession$DrmSessionException(6003, exc));
            }
            C4717 c4717 = this.f17856;
            if (c4717 != null) {
                c4717.mo9460(c4715);
                return c4717;
            }
            C4717 m9480 = m9480(m9475, false, c4715, z);
            this.f17856 = m9480;
            this.f17863.add(m9480);
            return m9480;
        }
        int m4250 = AbstractC1464.m4250(c1495.f5930);
        InterfaceC4730 interfaceC4730 = this.f17851;
        interfaceC4730.getClass();
        if (interfaceC4730.mo9057() != 2 || !C4733.f17883) {
            int[] iArr = this.f17862;
            while (true) {
                if (i >= iArr.length) {
                    i = -1;
                    break;
                }
                if (iArr[i] == m4250) {
                    break;
                }
                i++;
            }
            if (i != -1 && interfaceC4730.mo9057() != 1) {
                C4717 c47172 = this.f17857;
                if (c47172 == null) {
                    C0982 c0982 = AbstractC0993.f3977;
                    C4717 m94802 = m9480(C0956.f3901, true, null, z);
                    this.f17863.add(m94802);
                    this.f17857 = m94802;
                } else {
                    c47172.mo9460(null);
                }
                return this.f17857;
            }
        }
        return null;
    }

    @Override // p395.InterfaceC4734
    /* renamed from: ﹳٴ */
    public final void mo9000() {
        m9477(true);
        int i = this.f17866 - 1;
        this.f17866 = i;
        if (i != 0) {
            return;
        }
        if (this.f17859 != -9223372036854775807L) {
            ArrayList arrayList = new ArrayList(this.f17863);
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                ((C4717) arrayList.get(i2)).mo9462(null);
            }
        }
        AbstractC0983 it = AbstractC0997.m3276(this.f17865).iterator();
        while (it.hasNext()) {
            ((C4720) it.next()).mo9031();
        }
        m9479();
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m9479() {
        if (this.f17851 != null && this.f17866 == 0 && this.f17863.isEmpty() && this.f17865.isEmpty()) {
            InterfaceC4730 interfaceC4730 = this.f17851;
            interfaceC4730.getClass();
            interfaceC4730.mo9058();
            this.f17851 = null;
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C4717 m9480(List list, boolean z, C4715 c4715, boolean z2) {
        C4717 m9476 = m9476(list, z, c4715);
        boolean m9474 = m9474(m9476);
        long j = this.f17859;
        Set set = this.f17850;
        if (m9474 && !set.isEmpty()) {
            AbstractC0983 it = AbstractC0997.m3276(set).iterator();
            while (it.hasNext()) {
                ((InterfaceC4735) it.next()).mo9462(null);
            }
            m9476.mo9462(c4715);
            if (j != -9223372036854775807L) {
                m9476.mo9462(null);
            }
            m9476 = m9476(list, z, c4715);
        }
        if (m9474(m9476) && z2) {
            Set set2 = this.f17865;
            if (!set2.isEmpty()) {
                AbstractC0983 it2 = AbstractC0997.m3276(set2).iterator();
                while (it2.hasNext()) {
                    ((C4720) it2.next()).mo9031();
                }
                if (!set.isEmpty()) {
                    AbstractC0983 it3 = AbstractC0997.m3276(set).iterator();
                    while (it3.hasNext()) {
                        ((InterfaceC4735) it3.next()).mo9462(null);
                    }
                }
                m9476.mo9462(c4715);
                if (j != -9223372036854775807L) {
                    m9476.mo9462(null);
                }
                return m9476(list, z, c4715);
            }
        }
        return m9476;
    }
}

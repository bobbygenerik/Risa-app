package p392;

import android.content.Context;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.support.v4.media.session.AbstractC0001;
import android.util.Pair;
import androidx.media3.common.ParserException;
import androidx.media3.datasource.DataSourceException;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.drm.DrmSession$DrmSessionException;
import androidx.media3.exoplayer.source.BehindLiveWindowException;
import j$.util.Objects;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import p002.C0767;
import p003.C0779;
import p003.C0783;
import p017.AbstractC0951;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p055.AbstractC1445;
import p055.C1452;
import p055.C1466;
import p055.C1467;
import p055.C1470;
import p055.C1471;
import p055.C1476;
import p055.C1480;
import p055.C1485;
import p055.C1495;
import p055.InterfaceC1465;
import p076.RunnableC1663;
import p179.C2697;
import p188.C2845;
import p223.C3056;
import p230.C3163;
import p283.C3569;
import p283.RunnableC3568;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3711;
import p305.C3716;
import p305.C3721;
import p305.C3722;
import p311.RunnableC3805;
import p364.C4446;
import p364.InterfaceC4440;
import p420.C4936;
import p420.C4979;
import p420.C4987;
import p420.InterfaceC4945;
import p420.InterfaceC4947;
import p420.InterfaceC4956;
import p420.InterfaceC4967;
import p428.AbstractC5070;
import p428.C5057;
import p428.C5078;
import p428.InterfaceC5067;
import p457.InterfaceC5386;

/* renamed from: ⁱי.ᴵᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4683 implements Handler.Callback, InterfaceC4967, InterfaceC4663, InterfaceC5386 {

    /* renamed from: ᵎʿ, reason: contains not printable characters */
    public static final long f17595 = AbstractC3712.m7755(10000);

    /* renamed from: ʻᴵ, reason: contains not printable characters */
    public boolean f17597;

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public C4682 f17598;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final C2845 f17599;

    /* renamed from: ʼـ, reason: contains not printable characters */
    public long f17600;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final boolean[] f17601;

    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public boolean f17602;

    /* renamed from: ʽⁱ, reason: contains not printable characters */
    public ExoPlaybackException f17603;

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public C4659 f17604;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C3163[] f17605;

    /* renamed from: ʿ, reason: contains not printable characters */
    public final boolean f17607;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final C4657 f17608;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final long f17609;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final ArrayList f17610;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final AbstractC5070 f17612;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final C0783 f17613;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public final C3711 f17614;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final C3711 f17615;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C4655 f17616;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final C4689 f17617;

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public C2697 f17618;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final C4672 f17619;

    /* renamed from: ˎᐧ, reason: contains not printable characters */
    public int f17620;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public boolean f17621;

    /* renamed from: ˑ, reason: contains not printable characters */
    public long f17622;

    /* renamed from: ˑʼ, reason: contains not printable characters */
    public boolean f17623;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final C3721 f17624;

    /* renamed from: י, reason: contains not printable characters */
    public int f17625;

    /* renamed from: יﹳ, reason: contains not printable characters */
    public boolean f17626;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final C4691 f17628;

    /* renamed from: ـᵎ, reason: contains not printable characters */
    public boolean f17629;

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public boolean f17630;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final Looper f17631;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final InterfaceC4440 f17632;

    /* renamed from: ٴﹳ, reason: contains not printable characters */
    public int f17633;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public boolean f17635;

    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public boolean f17636;

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public C4659 f17638;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final AbstractC4671[] f17639;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final C0779 f17640;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C5057 f17641;

    /* renamed from: ᵎʻ, reason: contains not printable characters */
    public boolean f17642;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final C1466 f17643;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public C4680 f17644;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final C0767 f17645;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final C1467 f17646;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final C4677 f17647;

    /* renamed from: ⁱˉ, reason: contains not printable characters */
    public C4662 f17648;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final long f17649;

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public boolean f17650;

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public boolean f17651;

    /* renamed from: ᐧˎ, reason: contains not printable characters */
    public long f17634 = -9223372036854775807L;

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public boolean f17611 = false;

    /* renamed from: ـˊ, reason: contains not printable characters */
    public float f17627 = 1.0f;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public C4669 f17637 = C4669.f17498;

    /* renamed from: ʾﾞ, reason: contains not printable characters */
    public long f17606 = -9223372036854775807L;

    /* renamed from: ʻˋ, reason: contains not printable characters */
    public long f17596 = -9223372036854775807L;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v2, types: [ˑʿ.ˑٴ, java.lang.Object] */
    public C4683(Context context, AbstractC4671[] abstractC4671Arr, AbstractC4671[] abstractC4671Arr2, AbstractC5070 abstractC5070, C5057 c5057, C4655 c4655, InterfaceC4440 interfaceC4440, int i, boolean z, C0779 c0779, C4680 c4680, C4691 c4691, long j, Looper looper, C3721 c3721, C4672 c4672, C0783 c0783, C4662 c4662, final InterfaceC5386 interfaceC5386) {
        this.f17619 = c4672;
        this.f17612 = abstractC5070;
        this.f17641 = c5057;
        this.f17616 = c4655;
        this.f17632 = interfaceC4440;
        this.f17633 = i;
        this.f17642 = z;
        this.f17644 = c4680;
        this.f17628 = c4691;
        this.f17649 = j;
        this.f17624 = c3721;
        this.f17613 = c0783;
        this.f17648 = c4662;
        this.f17640 = c0779;
        this.f17609 = c4655.f17452;
        C1470 c1470 = AbstractC1445.f5630;
        C4682 m9293 = C4682.m9293(c5057);
        this.f17598 = m9293;
        this.f17618 = new C2697(m9293);
        this.f17639 = new AbstractC4671[abstractC4671Arr.length];
        this.f17601 = new boolean[abstractC4671Arr.length];
        C5078 c5078 = (C5078) abstractC5070;
        c5078.getClass();
        this.f17605 = new C3163[abstractC4671Arr.length];
        boolean z2 = false;
        for (int i2 = 0; i2 < abstractC4671Arr.length; i2++) {
            AbstractC4671 abstractC4671 = abstractC4671Arr[i2];
            abstractC4671.f17516 = i2;
            abstractC4671.f17509 = c0783;
            abstractC4671.f17514 = c3721;
            this.f17639[i2] = abstractC4671;
            AbstractC4671 abstractC46712 = this.f17639[i2];
            synchronized (abstractC46712.f17504) {
                abstractC46712.f17510 = c5078;
            }
            AbstractC4671 abstractC46713 = abstractC4671Arr2[i2];
            if (abstractC46713 != null) {
                abstractC46713.f17516 = i2;
                abstractC46713.f17509 = c0783;
                abstractC46713.f17514 = c3721;
                z2 = true;
            }
            C3163[] c3163Arr = this.f17605;
            AbstractC4671 abstractC46714 = abstractC4671Arr[i2];
            ?? obj = new Object();
            obj.f12094 = abstractC46714;
            obj.f12096 = i2;
            obj.f12097 = abstractC46713;
            obj.f12095 = 0;
            obj.f12092 = false;
            obj.f12093 = false;
            c3163Arr[i2] = obj;
        }
        this.f17607 = z2;
        this.f17647 = new C4677(this, c3721);
        this.f17610 = new ArrayList();
        this.f17643 = new C1466();
        this.f17646 = new C1467();
        AbstractC3731.m7857(abstractC5070.f19079 == null);
        abstractC5070.f19079 = this;
        abstractC5070.f19078 = interfaceC4440;
        this.f17626 = true;
        C3711 m7820 = c3721.m7820(looper, null);
        this.f17614 = m7820;
        this.f17617 = new C4689(c0779, m7820, new C3569(25, this), c4662);
        this.f17599 = new C2845(this, c0779, m7820, c0783);
        C0767 c0767 = new C0767();
        this.f17645 = c0767;
        Looper m2793 = c0767.m2793();
        this.f17631 = m2793;
        C3711 m78202 = c3721.m7820(m2793, this);
        this.f17615 = m78202;
        this.f17608 = new C4657(context, m2793, this);
        m78202.m7753(35, new InterfaceC5386() { // from class: ⁱי.ᵢˏ
            @Override // p457.InterfaceC5386
            /* renamed from: ʽ */
            public final void mo5637(long j2, long j3, C1495 c1495, MediaFormat mediaFormat) {
                C4683 c4683 = C4683.this;
                c4683.getClass();
                interfaceC5386.mo5637(j2, j3, c1495, mediaFormat);
                c4683.mo5637(j2, j3, c1495, mediaFormat);
            }
        }).m7816();
    }

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public static Pair m9306(AbstractC1445 abstractC1445, C4659 c4659, boolean z, int i, boolean z2, C1466 c1466, C1467 c1467) {
        int m9307;
        AbstractC1445 abstractC14452 = c4659.f17471;
        if (abstractC1445.m4217()) {
            return null;
        }
        AbstractC1445 abstractC14453 = abstractC14452.m4217() ? abstractC1445 : abstractC14452;
        try {
            Pair m4216 = abstractC14453.m4216(c1466, c1467, c4659.f17470, c4659.f17469);
            if (!abstractC1445.equals(abstractC14453)) {
                if (abstractC1445.mo4228(m4216.first) == -1) {
                    if (!z || (m9307 = m9307(c1466, c1467, i, z2, m4216.first, abstractC14453, abstractC1445)) == -1) {
                        return null;
                    }
                    return abstractC1445.m4216(c1466, c1467, m9307, -9223372036854775807L);
                }
                if (abstractC14453.mo4225(m4216.first, c1467).f5750 && abstractC14453.mo4221(c1467.f5744, c1466, 0L).f5738 == abstractC14453.mo4228(m4216.first)) {
                    return abstractC1445.m4216(c1466, c1467, abstractC1445.mo4225(m4216.first, c1467).f5744, c4659.f17469);
                }
            }
            return m4216;
        } catch (IndexOutOfBoundsException unused) {
            return null;
        }
    }

    /* renamed from: ـˏ, reason: contains not printable characters */
    public static int m9307(C1466 c1466, C1467 c1467, int i, boolean z, Object obj, AbstractC1445 abstractC1445, AbstractC1445 abstractC14452) {
        C1466 c14662 = c1466;
        AbstractC1445 abstractC14453 = abstractC1445;
        Object obj2 = abstractC14453.mo4221(abstractC14453.mo4225(obj, c1467).f5744, c1466, 0L).f5741;
        for (int i2 = 0; i2 < abstractC14452.mo4222(); i2++) {
            if (abstractC14452.mo4221(i2, c1466, 0L).f5741.equals(obj2)) {
                return i2;
            }
        }
        int mo4228 = abstractC14453.mo4228(obj);
        int mo4227 = abstractC14453.mo4227();
        int i3 = -1;
        int i4 = 0;
        while (i4 < mo4227 && i3 == -1) {
            AbstractC1445 abstractC14454 = abstractC14453;
            int m4220 = abstractC14454.m4220(mo4228, c1467, c14662, i, z);
            if (m4220 == -1) {
                break;
            }
            i3 = abstractC14452.mo4228(abstractC14454.mo4230(m4220));
            i4++;
            abstractC14453 = abstractC14454;
            mo4228 = m4220;
            c14662 = c1466;
        }
        if (i3 == -1) {
            return -1;
        }
        return abstractC14452.mo4231(i3, c1467, false).f5744;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [ﹳᵢ.ʿᵢ, java.lang.Object, ﹳᵢ.ʾᵎ] */
    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static boolean m9308(C4675 c4675) {
        if (c4675 != null) {
            try {
                ?? r1 = c4675.f17541;
                if (c4675.f17535) {
                    for (InterfaceC4956 interfaceC4956 : c4675.f17530) {
                        if (interfaceC4956 != null) {
                            interfaceC4956.mo3459();
                        }
                    }
                } else {
                    r1.mo5123();
                }
                if ((!c4675.f17535 ? 0L : r1.mo5134()) != Long.MIN_VALUE) {
                    return true;
                }
            } catch (IOException unused) {
            }
        }
        return false;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i;
        C4675 c4675;
        C4987 c4987;
        C4675 c46752;
        int i2;
        try {
            switch (message.what) {
                case 1:
                    boolean z = message.arg1 != 0;
                    int i3 = message.arg2;
                    this.f17618.m6070(1);
                    m9318(this.f17608.m9269(this.f17598.f17583, z), i3 >> 4, i3 & 15, z);
                    break;
                case 2:
                    m9326();
                    break;
                case 3:
                    m9364((C4659) message.obj, true);
                    break;
                case 4:
                    m9362((C1485) message.obj);
                    break;
                case 5:
                    m9382((C4680) message.obj);
                    break;
                case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                    m9320(false, true);
                    break;
                case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                    m9367((C3722) message.obj);
                    return true;
                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                    m9351((InterfaceC4945) message.obj);
                    break;
                case 9:
                    m9349((InterfaceC4945) message.obj);
                    break;
                case 10:
                    m9373();
                    break;
                case 11:
                    m9339(message.arg1);
                    break;
                case 12:
                    m9381(message.arg1 != 0);
                    break;
                case 13:
                    m9361(message.arg1 != 0, (C3722) message.obj);
                    break;
                case 14:
                    m9324((C4654) message.obj);
                    break;
                case 15:
                    m9325((C4654) message.obj);
                    break;
                case 16:
                    C1485 c1485 = (C1485) message.obj;
                    m9322(c1485, c1485.f5838, true, false);
                    break;
                case 17:
                    m9359((C4681) message.obj);
                    break;
                case 18:
                    m9379((C4681) message.obj, message.arg1);
                    break;
                case 19:
                    AbstractC0001.m3(message.obj);
                    m9369();
                    throw null;
                case 20:
                    m9327(message.arg1, message.arg2, (C4979) message.obj);
                    break;
                case 21:
                    m9309((C4979) message.obj);
                    break;
                case 22:
                    m9336();
                    break;
                case 23:
                    m9343(message.arg1 != 0);
                    break;
                case 24:
                default:
                    return false;
                case 25:
                    m9370();
                    break;
                case 26:
                    m9373();
                    m9332(true);
                    break;
                case 27:
                    m9350(message.arg1, message.arg2, (List) message.obj);
                    break;
                case 28:
                    m9311((C4662) message.obj);
                    break;
                case 29:
                    m9354();
                    break;
                case 30:
                    Pair pair = (Pair) message.obj;
                    m9366(pair.first, (C3722) pair.second);
                    break;
                case 31:
                    m9368((C1471) message.obj, message.arg1 != 0);
                    break;
                case 32:
                    m9352(((Float) message.obj).floatValue());
                    break;
                case 33:
                    m9375(message.arg1);
                    break;
                case 34:
                    m9380();
                    break;
                case 35:
                    m9356((InterfaceC5386) message.obj);
                    break;
                case 36:
                    m9353(((Boolean) message.obj).booleanValue());
                    break;
                case 37:
                    this.f17621 = false;
                    C4659 c4659 = this.f17638;
                    if (c4659 != null) {
                        m9364(c4659, false);
                        this.f17638 = null;
                        break;
                    }
                    break;
                case 38:
                    m9330((C4669) message.obj);
                    break;
            }
        } catch (ParserException e) {
            boolean z2 = e.f1134;
            int i4 = e.f1135;
            if (i4 == 1) {
                i2 = z2 ? 3001 : 3003;
            } else {
                if (i4 == 4) {
                    i2 = z2 ? 3002 : 3004;
                }
                m9342(r3, e);
            }
            r3 = i2;
            m9342(r3, e);
        } catch (DataSourceException e2) {
            m9342(e2.f1139, e2);
        } catch (ExoPlaybackException e3) {
            e = e3;
            int i5 = e.f1206;
            C4689 c4689 = this.f17617;
            if (i5 == 1 && (c46752 = c4689.f17696) != null && e.f1208 == null) {
                e = e.m787(c46752.f17537.f17660);
            }
            int i6 = e.f1206;
            C3711 c3711 = this.f17615;
            if (i6 == 1 && (c4987 = e.f1208) != null && m9321(e.f1211, c4987)) {
                this.f17597 = true;
                m9374();
                C4675 m9396 = c4689.m9396();
                C4675 c46753 = c4689.f17693;
                if (c46753 != m9396) {
                    while (c46753 != null) {
                        C4675 c46754 = c46753.f17533;
                        if (c46754 == m9396) {
                            break;
                        }
                        c46753 = c46754;
                    }
                }
                c4689.m9397(c46753);
                if (this.f17598.f17583 != 4) {
                    m9316();
                    c3711.m7752(2);
                }
            } else {
                ExoPlaybackException exoPlaybackException = this.f17603;
                if (exoPlaybackException != null) {
                    exoPlaybackException.addSuppressed(e);
                    e = this.f17603;
                }
                if (e.f1206 == 1 && c4689.f17693 != c4689.f17696) {
                    while (true) {
                        c4675 = c4689.f17693;
                        if (c4675 == c4689.f17696) {
                            break;
                        }
                        c4689.m9401();
                    }
                    AbstractC3731.m7841(c4675);
                    m9365();
                    C4684 c4684 = c4675.f17537;
                    C4987 c49872 = c4684.f17660;
                    long j = c4684.f17659;
                    this.f17598 = m9312(c49872, j, c4684.f17653, j, true, 0);
                }
                if (e.f1212 && (this.f17603 == null || (i = e.f1136) == 5004 || i == 5003)) {
                    AbstractC3731.m7859("ExoPlayerImplInternal", "Recoverable renderer error", e);
                    if (this.f17603 == null) {
                        this.f17603 = e;
                    }
                    C3716 m7753 = c3711.m7753(25, e);
                    Handler handler = c3711.f14471;
                    Message message2 = m7753.f14491;
                    message2.getClass();
                    handler.sendMessageAtFrontOfQueue(message2);
                    m7753.m7817();
                } else {
                    AbstractC3731.m7863("ExoPlayerImplInternal", "Playback error", e);
                    m9320(true, false);
                    this.f17598 = this.f17598.m9305(e);
                }
            }
        } catch (DrmSession$DrmSessionException e4) {
            m9342(e4.f1227, e4);
        } catch (BehindLiveWindowException e5) {
            m9342(1002, e5);
        } catch (IOException e6) {
            m9342(2000, e6);
        } catch (RuntimeException e7) {
            ExoPlaybackException exoPlaybackException2 = new ExoPlaybackException(2, e7, ((e7 instanceof IllegalStateException) || (e7 instanceof IllegalArgumentException)) ? 1004 : 1000);
            AbstractC3731.m7863("ExoPlayerImplInternal", "Playback error", exoPlaybackException2);
            m9320(true, false);
            this.f17598 = this.f17598.m9305(exoPlaybackException2);
        }
        m9365();
        return true;
    }

    /* renamed from: ʻˋ, reason: contains not printable characters */
    public final void m9309(C4979 c4979) {
        this.f17618.m6070(1);
        C2845 c2845 = this.f17599;
        int size = ((ArrayList) c2845.f10681).size();
        if (c4979.f18580.length != size) {
            c4979 = new C4979(new Random(c4979.f18581.nextLong())).m9833(size);
        }
        c2845.f10685 = c4979;
        m9310(c2845.m6334(), false);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(6:(4:115|116|(1:118)(1:154)|119)|(8:(11:124|125|126|127|128|129|130|131|132|133|(2:135|136)(2:137|(1:139)))|128|129|130|131|132|133|(0)(0))|152|125|126|127) */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x02f5, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x02f6, code lost:
    
        r8 = r36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x02f8, code lost:
    
        r20 = r3;
        r8 = r8;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0410  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0415  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x03d3  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x02e2 A[Catch: all -> 0x02dd, TryCatch #7 {all -> 0x02dd, blocks: (B:136:0x02d9, B:137:0x02e2, B:139:0x02e5, B:31:0x02fe, B:63:0x030a, B:65:0x0310, B:67:0x031a, B:69:0x0327), top: B:29:0x02a0 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0351  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x03b9  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0393  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0398  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0354  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x03d0  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0436  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x03f0 A[ADDED_TO_REGION] */
    /* JADX WARN: Type inference failed for: r25v0, types: [ﹳᵢ.ᵢˏ] */
    /* JADX WARN: Type inference failed for: r2v35, types: [ⁱי.ᵔי] */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v25, types: [ʽⁱ.ʼˈ] */
    /* JADX WARN: Type inference failed for: r8v28 */
    /* JADX WARN: Type inference failed for: r8v33 */
    /* JADX WARN: Type inference failed for: r8v36 */
    /* renamed from: ʻٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9310(p055.AbstractC1445 r36, boolean r37) {
        /*
            Method dump skipped, instructions count: 1091
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p392.C4683.m9310(ʽⁱ.ʼˈ, boolean):void");
    }

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public final void m9311(C4662 c4662) {
        this.f17648 = c4662;
        AbstractC1445 abstractC1445 = this.f17598.f17591;
        C4689 c4689 = this.f17617;
        c4689.getClass();
        c4662.getClass();
        if (c4689.f17705.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < c4689.f17705.size(); i++) {
            ((C4675) c4689.f17705.get(i)).m9278();
        }
        c4689.f17705 = arrayList;
        c4689.f17698 = null;
        c4689.m9395();
    }

    /* JADX WARN: Type inference failed for: r11v3, types: [ʼʻ.ˊʻ, ʼʻ.ʽʽ] */
    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final C4682 m9312(C4987 c4987, long j, long j2, long j3, boolean z, int i) {
        C0956 c0956;
        boolean z2;
        this.f17626 = (!this.f17626 && j == this.f17598.f17584 && c4987.equals(this.f17598.f17590)) ? false : true;
        m9346();
        C4682 c4682 = this.f17598;
        C4936 c4936 = c4682.f17588;
        C5057 c5057 = c4682.f17575;
        List list = c4682.f17578;
        if (this.f17599.f10689) {
            C4675 c4675 = this.f17617.f17693;
            c4936 = c4675 == null ? C4936.f18384 : c4675.f17538;
            c5057 = c4675 == null ? this.f17641 : c4675.f17534;
            InterfaceC5067[] interfaceC5067Arr = c5057.f19027;
            ?? abstractC0951 = new AbstractC0951(4);
            boolean z3 = false;
            for (InterfaceC5067 interfaceC5067 : interfaceC5067Arr) {
                if (interfaceC5067 != null) {
                    C1476 c1476 = interfaceC5067.mo9759(0).f5939;
                    if (c1476 == null) {
                        abstractC0951.m3239(new C1476(new InterfaceC1465[0]));
                    } else {
                        abstractC0951.m3239(c1476);
                        z3 = true;
                    }
                }
            }
            if (z3) {
                c0956 = abstractC0951.m3249();
            } else {
                C0982 c0982 = AbstractC0993.f3977;
                c0956 = C0956.f3901;
            }
            list = c0956;
            if (c4675 != null) {
                C4684 c4684 = c4675.f17537;
                if (c4684.f17653 != j2) {
                    c4675.f17537 = c4684.m9385(j2);
                }
            }
            C3163[] c3163Arr = this.f17605;
            C4689 c4689 = this.f17617;
            C4675 c46752 = c4689.f17693;
            if (c46752 == c4689.f17696 && c46752 != null) {
                C5057 c50572 = c46752.f17534;
                int i2 = 0;
                boolean z4 = false;
                while (true) {
                    if (i2 >= c3163Arr.length) {
                        z2 = true;
                        break;
                    }
                    if (c50572.m9961(i2)) {
                        if (((AbstractC4671) c3163Arr[i2].f12094).f17515 != 1) {
                            z2 = false;
                            break;
                        }
                        if (c50572.f19030[i2].f17555 != 0) {
                            z4 = true;
                        }
                    }
                    i2++;
                }
                boolean z5 = z4 && z2;
                if (z5 != this.f17636) {
                    this.f17636 = z5;
                    if (!z5 && this.f17598.f17576) {
                        this.f17615.m7752(2);
                    }
                }
            }
        } else if (!c4987.equals(c4682.f17590)) {
            c4936 = C4936.f18384;
            c5057 = this.f17641;
            list = C0956.f3901;
        }
        C4936 c49362 = c4936;
        C5057 c50573 = c5057;
        List list2 = list;
        if (z) {
            C2697 c2697 = this.f17618;
            if (!c2697.f10271 || c2697.f10272 == 5) {
                c2697.f10270 = true;
                c2697.f10271 = true;
                c2697.f10272 = i;
            } else {
                AbstractC3731.m7849(i == 5);
            }
        }
        C4682 c46822 = this.f17598;
        return c46822.m9297(c4987, j, j2, j3, m9315(c46822.f17589), c49362, c50573, list2);
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m9313(int i) {
        C3163[] c3163Arr = this.f17605;
        int m6968 = c3163Arr[i].m6968();
        C3163 c3163 = c3163Arr[i];
        AbstractC4671 abstractC4671 = (AbstractC4671) c3163.f12094;
        C4677 c4677 = this.f17647;
        c3163.m6975(abstractC4671, c4677);
        AbstractC4671 abstractC46712 = (AbstractC4671) c3163.f12097;
        if (abstractC46712 != null) {
            boolean z = (abstractC46712.f17508 == 0 || c3163.f12095 == 3) ? false : true;
            c3163.m6975(abstractC46712, c4677);
            c3163.m6967(false);
            if (z) {
                AbstractC4671 abstractC46713 = (AbstractC4671) c3163.f12094;
                abstractC46712.getClass();
                abstractC46712.mo780(17, abstractC46713);
            }
        }
        c3163.f12095 = 0;
        m9355(i, false);
        this.f17625 -= m6968;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [ﹳᵢ.ʿᵢ, java.lang.Object] */
    /* renamed from: ʼـ, reason: contains not printable characters */
    public final void m9314() {
        C4675 c4675 = this.f17617.f17708;
        boolean z = this.f17623 || (c4675 != null && c4675.f17541.mo5125());
        C4682 c4682 = this.f17598;
        if (z != c4682.f17586) {
            this.f17598 = c4682.m9302(z);
        }
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final long m9315(long j) {
        C4675 c4675 = this.f17617.f17708;
        if (c4675 == null) {
            return 0L;
        }
        return Math.max(0L, j - (this.f17622 - c4675.f17529));
    }

    @Override // p457.InterfaceC5386
    /* renamed from: ʽ */
    public final void mo5637(long j, long j2, C1495 c1495, MediaFormat mediaFormat) {
        if (this.f17621) {
            C3711 c3711 = this.f17615;
            c3711.getClass();
            C3716 m7749 = C3711.m7749();
            m7749.f14491 = c3711.f14471.obtainMessage(37);
            m7749.m7816();
        }
    }

    /* JADX WARN: Type inference failed for: r1v16, types: [java.lang.Object, ﹳᵢ.ʾᵎ] */
    /* JADX WARN: Type inference failed for: r1v23, types: [ﹳᵢ.ʿᵢ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v1, types: [ﹳᵢ.ʿᵢ, java.lang.Object] */
    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final void m9316() {
        boolean m9266;
        if (m9308(this.f17617.f17708)) {
            C4675 c4675 = this.f17617.f17708;
            long m9315 = m9315(!c4675.f17535 ? 0L : c4675.f17541.mo5134());
            C4675 c46752 = this.f17617.f17693;
            long j = m9360(this.f17598.f17591, c4675.f17537.f17660) ? this.f17628.f17714 : -9223372036854775807L;
            C0783 c0783 = this.f17613;
            AbstractC1445 abstractC1445 = this.f17598.f17591;
            float f = this.f17647.mo771().f5838;
            boolean z = this.f17598.f17593;
            C4665 c4665 = new C4665(c0783, m9315, f, this.f17650, j);
            m9266 = this.f17616.m9266(c4665);
            C4675 c46753 = this.f17617.f17693;
            if (!m9266 && c46753.f17535 && m9315 < 500000 && this.f17609 > 0) {
                c46753.f17541.mo5128(this.f17598.f17584);
                m9266 = this.f17616.m9266(c4665);
            }
        } else {
            m9266 = false;
        }
        this.f17623 = m9266;
        if (m9266) {
            C4675 c46754 = this.f17617.f17708;
            c46754.getClass();
            C4676 c4676 = new C4676();
            c4676.f17546 = this.f17622 - c46754.f17529;
            float f2 = this.f17647.mo771().f5838;
            AbstractC3731.m7849(f2 > 0.0f || f2 == -3.4028235E38f);
            c4676.f17545 = f2;
            long j2 = this.f17596;
            AbstractC3731.m7849(j2 >= 0 || j2 == -9223372036854775807L);
            c4676.f17544 = j2;
            C4664 c4664 = new C4664(c4676);
            AbstractC3731.m7857(c46754.f17533 == null);
            c46754.f17541.mo5129(c4664);
        }
        m9314();
    }

    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public final boolean m9317() {
        C4682 c4682 = this.f17598;
        return c4682.f17593 && c4682.f17587 == 0;
    }

    /* renamed from: ʽⁱ, reason: contains not printable characters */
    public final void m9318(int i, int i2, int i3, boolean z) {
        boolean z2 = z && i != -1;
        if (i == -1) {
            i3 = 2;
        } else if (i3 == 2) {
            i3 = 1;
        }
        if (i == 0) {
            i2 = 1;
        } else if (i2 == 1) {
            i2 = 0;
        }
        C4682 c4682 = this.f17598;
        if (c4682.f17593 == z2 && c4682.f17587 == i2 && c4682.f17580 == i3) {
            return;
        }
        this.f17598 = c4682.m9299(i3, i2, z2);
        m9358(false, false);
        C4689 c4689 = this.f17617;
        for (C4675 c4675 = c4689.f17693; c4675 != null; c4675 = c4675.f17533) {
            for (InterfaceC5067 interfaceC5067 : c4675.f17534.f19027) {
                if (interfaceC5067 != null) {
                    interfaceC5067.mo9771(z2);
                }
            }
        }
        if (!m9317()) {
            m9344();
            m9323();
            C4682 c46822 = this.f17598;
            if (c46822.f17576) {
                this.f17598 = c46822.m9294(false);
            }
            c4689.m9392(this.f17622);
            return;
        }
        int i4 = this.f17598.f17583;
        C3711 c3711 = this.f17615;
        if (i4 != 3) {
            if (i4 == 2) {
                c3711.m7752(2);
            }
        } else {
            C4677 c4677 = this.f17647;
            c4677.f17551 = true;
            ((C4643) c4677.f17547).m9217();
            m9348();
            c3711.m7752(2);
        }
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final void m9319(boolean z) {
        C4675 c4675 = this.f17617.f17708;
        C4987 c4987 = c4675 == null ? this.f17598.f17590 : c4675.f17537.f17660;
        boolean equals = this.f17598.f17585.equals(c4987);
        if (!equals) {
            this.f17598 = this.f17598.m9295(c4987);
        }
        C4682 c4682 = this.f17598;
        c4682.f17589 = c4675 == null ? c4682.f17584 : c4675.m9281();
        C4682 c46822 = this.f17598;
        c46822.f17592 = m9315(c46822.f17589);
        if ((!equals || z) && c4675 != null && c4675.f17535) {
            m9341(c4675.f17534);
        }
    }

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public final void m9320(boolean z, boolean z2) {
        m9329(z || !this.f17629, false, true, false);
        this.f17618.m6070(z2 ? 1 : 0);
        C4655 c4655 = this.f17616;
        if (c4655.f17453.remove(this.f17613) != null) {
            c4655.m9267();
        }
        this.f17608.m9269(1, this.f17598.f17593);
        m9345(1);
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final boolean m9321(int i, C4987 c4987) {
        C4689 c4689 = this.f17617;
        C4675 c4675 = c4689.f17701;
        if (c4675 != null && c4675.f17537.f17660.equals(c4987)) {
            C3163 c3163 = this.f17605[i];
            C4675 c46752 = c4689.f17701;
            int i2 = c3163.f12095;
            boolean z = (i2 == 2 || i2 == 4) && c3163.m6970(c46752) == ((AbstractC4671) c3163.f12094);
            boolean z2 = c3163.f12095 == 3 && c3163.m6970(c46752) == ((AbstractC4671) c3163.f12097);
            if (z || z2) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final void m9322(C1485 c1485, float f, boolean z, boolean z2) {
        int i;
        if (z) {
            if (z2) {
                this.f17618.m6070(1);
            }
            this.f17598 = this.f17598.m9300(c1485);
        }
        float f2 = c1485.f5838;
        C4675 c4675 = this.f17617.f17693;
        while (true) {
            i = 0;
            if (c4675 == null) {
                break;
            }
            InterfaceC5067[] interfaceC5067Arr = c4675.f17534.f19027;
            int length = interfaceC5067Arr.length;
            while (i < length) {
                InterfaceC5067 interfaceC5067 = interfaceC5067Arr[i];
                if (interfaceC5067 != null) {
                    interfaceC5067.mo9769(f2);
                }
                i++;
            }
            c4675 = c4675.f17533;
        }
        C3163[] c3163Arr = this.f17605;
        int length2 = c3163Arr.length;
        while (i < length2) {
            C3163 c3163 = c3163Arr[i];
            float f3 = c1485.f5838;
            ((AbstractC4671) c3163.f12094).mo3684(f, f3);
            AbstractC4671 abstractC4671 = (AbstractC4671) c3163.f12097;
            if (abstractC4671 != null) {
                abstractC4671.mo3684(f, f3);
            }
            i++;
        }
    }

    /* JADX WARN: Type inference failed for: r2v21, types: [java.lang.Object, ﹳᵢ.ʾᵎ] */
    /* renamed from: ʾﾞ, reason: contains not printable characters */
    public final void m9323() {
        long j;
        float f;
        C4675 c4675 = this.f17617.f17693;
        if (c4675 == null) {
            return;
        }
        long mo5126 = c4675.f17535 ? c4675.f17541.mo5126() : -9223372036854775807L;
        if (mo5126 != -9223372036854775807L) {
            if (!c4675.m9284()) {
                this.f17617.m9397(c4675);
                m9319(false);
                m9316();
            }
            m9340(mo5126);
            if (mo5126 != this.f17598.f17584) {
                C4682 c4682 = this.f17598;
                this.f17598 = m9312(c4682.f17590, mo5126, c4682.f17577, mo5126, true, 5);
            }
        } else {
            C4677 c4677 = this.f17647;
            boolean z = c4675 != this.f17617.f17696;
            C4643 c4643 = (C4643) c4677.f17547;
            AbstractC4671 abstractC4671 = (AbstractC4671) c4677.f17552;
            if (abstractC4671 == null || abstractC4671.mo781() || ((z && ((AbstractC4671) c4677.f17552).f17508 != 2) || (!((AbstractC4671) c4677.f17552).mo766() && (z || ((AbstractC4671) c4677.f17552).m9274())))) {
                c4677.f17548 = true;
                if (c4677.f17551) {
                    c4643.m9217();
                }
            } else {
                InterfaceC4686 interfaceC4686 = (InterfaceC4686) c4677.f17550;
                interfaceC4686.getClass();
                long mo777 = interfaceC4686.mo777();
                if (c4677.f17548) {
                    if (mo777 >= c4643.mo777()) {
                        c4677.f17548 = false;
                        if (c4677.f17551) {
                            c4643.m9217();
                        }
                    } else if (c4643.f17348) {
                        c4643.m9218(c4643.mo777());
                        c4643.f17348 = false;
                    }
                }
                c4643.m9218(mo777);
                C1485 mo771 = interfaceC4686.mo771();
                if (!mo771.equals((C1485) c4643.f17349)) {
                    c4643.mo759(mo771);
                    ((C4683) c4677.f17549).f17615.m7753(16, mo771).m7816();
                }
            }
            long mo7772 = c4677.mo777();
            this.f17622 = mo7772;
            long j2 = mo7772 - c4675.f17529;
            long j3 = this.f17598.f17584;
            if (!this.f17610.isEmpty() && !this.f17598.f17590.m9838()) {
                if (this.f17626) {
                    this.f17626 = false;
                }
                C4682 c46822 = this.f17598;
                c46822.f17591.mo4228(c46822.f17590.f18631);
                int min = Math.min(this.f17620, this.f17610.size());
                if (min > 0 && this.f17610.get(min - 1) != null) {
                    throw new ClassCastException();
                }
                if (min < this.f17610.size() && this.f17610.get(min) != null) {
                    throw new ClassCastException();
                }
                this.f17620 = min;
            }
            if (this.f17647.mo782()) {
                boolean z2 = !this.f17618.f10271;
                C4682 c46823 = this.f17598;
                this.f17598 = m9312(c46823.f17590, j2, c46823.f17577, j2, z2, 6);
            } else {
                C4682 c46824 = this.f17598;
                c46824.f17584 = j2;
                c46824.f17582 = SystemClock.elapsedRealtime();
            }
        }
        this.f17598.f17589 = this.f17617.f17708.m9281();
        C4682 c46825 = this.f17598;
        c46825.f17592 = m9315(c46825.f17589);
        C4682 c46826 = this.f17598;
        if (c46826.f17593 && c46826.f17583 == 3 && m9360(c46826.f17591, c46826.f17590)) {
            C4682 c46827 = this.f17598;
            float f2 = 1.0f;
            if (c46827.f17581.f5838 == 1.0f) {
                C4691 c4691 = this.f17628;
                long m9333 = m9333(c46827.f17591, c46827.f17590.f18631, c46827.f17584);
                long j4 = this.f17598.f17592;
                if (c4691.f17718 != -9223372036854775807L) {
                    long j5 = m9333 - j4;
                    if (c4691.f17717 == -9223372036854775807L) {
                        c4691.f17717 = j5;
                        c4691.f17712 = 0L;
                    } else {
                        c4691.f17717 = Math.max(j5, (((float) j5) * 9.999871E-4f) + (((float) r9) * 0.999f));
                        c4691.f17712 = (9.999871E-4f * ((float) Math.abs(j5 - r9))) + (((float) c4691.f17712) * 0.999f);
                    }
                    if (c4691.f17721 != -9223372036854775807L) {
                        j = 1000;
                        if (SystemClock.elapsedRealtime() - c4691.f17721 < 1000) {
                            f2 = c4691.f17716;
                        }
                    } else {
                        j = 1000;
                    }
                    c4691.f17721 = SystemClock.elapsedRealtime();
                    long j6 = (c4691.f17712 * 3) + c4691.f17717;
                    if (c4691.f17714 > j6) {
                        float m7757 = (float) AbstractC3712.m7757(j);
                        f = 1.0E-7f;
                        long[] jArr = {j6, c4691.f17720, c4691.f17714 - (((c4691.f17716 - 1.0f) * m7757) + ((c4691.f17719 - 1.0f) * m7757))};
                        long j7 = jArr[0];
                        for (int i = 1; i < 3; i++) {
                            long j8 = jArr[i];
                            if (j8 > j7) {
                                j7 = j8;
                            }
                        }
                        c4691.f17714 = j7;
                    } else {
                        f = 1.0E-7f;
                        long m7767 = AbstractC3712.m7767(m9333 - (Math.max(0.0f, c4691.f17716 - 1.0f) / 1.0E-7f), c4691.f17714, j6);
                        c4691.f17714 = m7767;
                        long j9 = c4691.f17711;
                        if (j9 != -9223372036854775807L && m7767 > j9) {
                            c4691.f17714 = j9;
                        }
                    }
                    long j10 = m9333 - c4691.f17714;
                    if (Math.abs(j10) < c4691.f17713) {
                        c4691.f17716 = 1.0f;
                    } else {
                        c4691.f17716 = AbstractC3712.m7803((f * ((float) j10)) + 1.0f, c4691.f17725, c4691.f17719);
                    }
                    f2 = c4691.f17716;
                }
                if (this.f17647.mo771().f5838 != f2) {
                    C1485 c1485 = new C1485(f2, this.f17598.f17581.f5837);
                    this.f17615.m7751(16);
                    this.f17647.mo759(c1485);
                    m9322(this.f17598.f17581, this.f17647.mo771().f5838, false, false);
                }
            }
        }
    }

    /* renamed from: ʿ, reason: contains not printable characters */
    public final void m9324(C4654 c4654) {
        c4654.getClass();
        C3711 c3711 = this.f17615;
        if (c4654.f17444 != this.f17631) {
            c3711.m7753(15, c4654).m7816();
            return;
        }
        synchronized (c4654) {
        }
        try {
            c4654.f17446.mo780(c4654.f17442, c4654.f17443);
            c4654.m9264(true);
            int i = this.f17598.f17583;
            if (i == 3 || i == 2) {
                c3711.m7752(2);
            }
        } catch (Throwable th) {
            c4654.m9264(true);
            throw th;
        }
    }

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final void m9325(C4654 c4654) {
        Looper looper = c4654.f17444;
        if (looper.getThread().isAlive()) {
            this.f17624.m7820(looper, null).m7750(new RunnableC3568(this, c4654));
        } else {
            AbstractC3731.m7850("TAG", "Trying to send message on a dead thread.");
            c4654.m9264(false);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:509:0x07b3, code lost:
    
        if (r5 >= r2.m9268()) goto L458;
     */
    /* JADX WARN: Removed duplicated region for block: B:198:0x044f  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x04a0  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x04c4  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x04f5  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0514  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0552  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x055a  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x059c  */
    /* JADX WARN: Removed duplicated region for block: B:295:0x05a7  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x06a9  */
    /* JADX WARN: Removed duplicated region for block: B:377:0x06ac A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:403:0x0841  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:426:0x087e  */
    /* JADX WARN: Removed duplicated region for block: B:429:0x08ab  */
    /* JADX WARN: Removed duplicated region for block: B:434:0x08b8  */
    /* JADX WARN: Removed duplicated region for block: B:439:0x08c6  */
    /* JADX WARN: Removed duplicated region for block: B:442:0x08d1  */
    /* JADX WARN: Removed duplicated region for block: B:455:0x0881  */
    /* JADX WARN: Removed duplicated region for block: B:465:0x0713  */
    /* JADX WARN: Removed duplicated region for block: B:526:0x0800  */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, ﹳᵢ.ʾᵎ] */
    /* JADX WARN: Type inference failed for: r2v57, types: [java.lang.Object, ﹳᵢ.ʾᵎ] */
    /* JADX WARN: Type inference failed for: r2v96, types: [java.lang.Object, ﹳᵢ.ʾᵎ] */
    /* JADX WARN: Type inference failed for: r3v28, types: [java.lang.Object, ﹳᵢ.ʾᵎ] */
    /* JADX WARN: Type inference failed for: r3v87, types: [java.lang.Object, ﹳᵢ.ʾᵎ] */
    /* renamed from: ˆʾ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9326() {
        /*
            Method dump skipped, instructions count: 2292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p392.C4683.m9326():void");
    }

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final void m9327(int i, int i2, C4979 c4979) {
        this.f17618.m6070(1);
        C2845 c2845 = this.f17599;
        c2845.getClass();
        AbstractC3731.m7849(i >= 0 && i <= i2 && i2 <= ((ArrayList) c2845.f10681).size());
        c2845.f10685 = c4979;
        c2845.m6333(i, i2);
        m9310(c2845.m6334(), false);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean m9328() {
        if (!this.f17607) {
            return false;
        }
        for (C3163 c3163 : this.f17605) {
            if (c3163.m6976()) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:88:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x00c1  */
    /* renamed from: ˈʿ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9329(boolean r36, boolean r37, boolean r38, boolean r39) {
        /*
            Method dump skipped, instructions count: 492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p392.C4683.m9329(boolean, boolean, boolean, boolean):void");
    }

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public final void m9330(C4669 c4669) {
        this.f17637 = c4669;
        m9377();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [ﹳᵢ.ʿᵢ, java.lang.Object, ﹳᵢ.ʾᵎ] */
    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void m9331() {
        C4689 c4689 = this.f17617;
        c4689.m9395();
        C4675 c4675 = c4689.f17698;
        if (c4675 != null) {
            ?? r1 = c4675.f17541;
            if ((!c4675.f17532 || c4675.f17535) && !r1.mo5125()) {
                AbstractC1445 abstractC1445 = this.f17598.f17591;
                if (c4675.f17535) {
                    r1.mo5127();
                }
                Iterator it = this.f17616.f17453.values().iterator();
                while (it.hasNext()) {
                    if (((C4646) it.next()).f17424) {
                        return;
                    }
                }
                if (!c4675.f17532) {
                    long j = c4675.f17537.f17659;
                    c4675.f17532 = true;
                    r1.mo5122(this, j);
                    return;
                }
                C4676 c4676 = new C4676();
                c4676.f17546 = this.f17622 - c4675.f17529;
                float f = this.f17647.mo771().f5838;
                AbstractC3731.m7849(f > 0.0f || f == -3.4028235E38f);
                c4676.f17545 = f;
                long j2 = this.f17596;
                AbstractC3731.m7849(j2 >= 0 || j2 == -9223372036854775807L);
                c4676.f17544 = j2;
                C4664 c4664 = new C4664(c4676);
                AbstractC3731.m7857(c4675.f17533 == null);
                r1.mo5129(c4664);
            }
        }
    }

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final void m9332(boolean z) {
        C4987 c4987 = this.f17617.f17693.f17537.f17660;
        long m9335 = m9335(c4987, this.f17598.f17584, true, false);
        if (m9335 != this.f17598.f17584) {
            C4682 c4682 = this.f17598;
            this.f17598 = m9312(c4987, m9335, c4682.f17577, c4682.f17579, z, 5);
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final long m9333(AbstractC1445 abstractC1445, Object obj, long j) {
        C1467 c1467 = this.f17646;
        int i = abstractC1445.mo4225(obj, c1467).f5744;
        C1466 c1466 = this.f17643;
        abstractC1445.m4226(i, c1466);
        if (c1466.f5743 != -9223372036854775807L && c1466.m4267() && c1466.f5728) {
            return AbstractC3712.m7757(AbstractC3712.m7761(c1466.f5737) - c1466.f5743) - (j + c1467.f5746);
        }
        return -9223372036854775807L;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final Pair m9334(AbstractC1445 abstractC1445) {
        long j = 0;
        if (abstractC1445.m4217()) {
            return Pair.create(C4682.f17574, 0L);
        }
        int mo4229 = abstractC1445.mo4229(this.f17642);
        Pair m4216 = abstractC1445.m4216(this.f17643, this.f17646, mo4229, -9223372036854775807L);
        C4987 m9388 = this.f17617.m9388(abstractC1445, m4216.first, 0L);
        long longValue = ((Long) m4216.second).longValue();
        if (m9388.m9838()) {
            Object obj = m9388.f18631;
            C1467 c1467 = this.f17646;
            abstractC1445.mo4225(obj, c1467);
            if (m9388.f18627 == c1467.m4270(m9388.f18630)) {
                c1467.f5747.getClass();
            }
        } else {
            j = longValue;
        }
        return Pair.create(m9388, Long.valueOf(j));
    }

    /* JADX WARN: Type inference failed for: r10v8, types: [java.lang.Object, ﹳᵢ.ʾᵎ] */
    /* renamed from: ˉـ, reason: contains not printable characters */
    public final long m9335(C4987 c4987, long j, boolean z, boolean z2) {
        C3163[] c3163Arr;
        m9344();
        m9358(false, true);
        if (z2 || this.f17598.f17583 == 3) {
            m9345(2);
        }
        C4689 c4689 = this.f17617;
        C4675 c4675 = c4689.f17693;
        C4675 c46752 = c4675;
        while (c46752 != null && !c4987.equals(c46752.f17537.f17660)) {
            c46752 = c46752.f17533;
        }
        if (z || c4675 != c46752 || (c46752 != null && c46752.f17529 + j < 0)) {
            int i = 0;
            while (true) {
                c3163Arr = this.f17605;
                if (i >= c3163Arr.length) {
                    break;
                }
                m9313(i);
                i++;
            }
            this.f17634 = -9223372036854775807L;
            if (c46752 != null) {
                while (c4689.f17693 != c46752) {
                    c4689.m9401();
                }
                c4689.m9397(c46752);
                c46752.f17529 = 1000000000000L;
                m9383(new boolean[c3163Arr.length], c4689.f17696.m9282());
                c46752.f17539 = true;
            }
        }
        m9374();
        if (c46752 != null) {
            ?? r10 = c46752.f17541;
            c4689.m9397(c46752);
            if (!c46752.f17535) {
                c46752.f17537 = c46752.f17537.m9384(j);
            } else if (c46752.f17543) {
                j = r10.mo5133(j);
                r10.mo5128(j - this.f17609);
            }
            m9340(j);
            m9316();
        } else {
            c4689.m9400();
            m9340(j);
        }
        m9319(false);
        this.f17615.m7752(2);
        return j;
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final void m9336() {
        m9310(this.f17599.m6334(), true);
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final void m9337(int i) {
        C3163 c3163 = this.f17605[i];
        try {
            C4675 c4675 = this.f17617.f17693;
            c4675.getClass();
            AbstractC4671 m6970 = c3163.m6970(c4675);
            m6970.getClass();
            InterfaceC4956 interfaceC4956 = m6970.f17518;
            interfaceC4956.getClass();
            interfaceC4956.mo3459();
        } catch (IOException | RuntimeException e) {
            int i2 = ((AbstractC4671) c3163.f12094).f17515;
            if (i2 != 3 && i2 != 5) {
                throw e;
            }
            C5057 c5057 = this.f17617.f17693.f17534;
            AbstractC3731.m7863("ExoPlayerImplInternal", "Disabling track due to error: " + C1495.m4297(c5057.f19027[i].mo9773()), e);
            C5057 c50572 = new C5057((C4678[]) c5057.f19030.clone(), (InterfaceC5067[]) c5057.f19027.clone(), c5057.f19028, c5057.f19029);
            c50572.f19030[i] = null;
            c50572.f19027[i] = null;
            m9313(i);
            C4675 c46752 = this.f17617.f17693;
            c46752.m9287(c50572, this.f17598.f17584, false, new boolean[c46752.f17531.length]);
        }
    }

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final void m9338(AbstractC1445 abstractC1445, AbstractC1445 abstractC14452) {
        if (abstractC1445.m4217() && abstractC14452.m4217()) {
            return;
        }
        ArrayList arrayList = this.f17610;
        int size = arrayList.size() - 1;
        if (size < 0) {
            Collections.sort(arrayList);
        } else {
            AbstractC0001.m3(arrayList.get(size));
            throw null;
        }
    }

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public final void m9339(int i) {
        this.f17633 = i;
        AbstractC1445 abstractC1445 = this.f17598.f17591;
        C4689 c4689 = this.f17617;
        c4689.f17702 = i;
        int m9402 = c4689.m9402(abstractC1445);
        if ((m9402 & 1) != 0) {
            m9332(true);
        } else if ((m9402 & 2) != 0) {
            m9374();
        }
        m9319(false);
    }

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final void m9340(long j) {
        C4675 c4675 = this.f17617.f17693;
        long j2 = j + (c4675 == null ? 1000000000000L : c4675.f17529);
        this.f17622 = j2;
        ((C4643) this.f17647.f17547).m9218(j2);
        for (C3163 c3163 : this.f17605) {
            long j3 = this.f17622;
            AbstractC4671 m6970 = c3163.m6970(c4675);
            if (m6970 != null) {
                m6970.f17520 = false;
                m6970.f17519 = j3;
                m6970.f17505 = j3;
                m6970.mo779(false, j3);
            }
        }
        for (C4675 c46752 = r0.f17693; c46752 != null; c46752 = c46752.f17533) {
            for (InterfaceC5067 interfaceC5067 : c46752.f17534.f19027) {
                if (interfaceC5067 != null) {
                    interfaceC5067.mo9764();
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x005a. Please report as an issue. */
    /* renamed from: ˎᐧ, reason: contains not printable characters */
    public final void m9341(C5057 c5057) {
        C4675 c4675 = this.f17617.f17708;
        c4675.getClass();
        m9315(c4675.m9281());
        if (m9360(this.f17598.f17591, c4675.f17537.f17660)) {
            long j = this.f17628.f17714;
        }
        AbstractC1445 abstractC1445 = this.f17598.f17591;
        float f = this.f17647.mo771().f5838;
        boolean z = this.f17598.f17593;
        InterfaceC5067[] interfaceC5067Arr = c5057.f19027;
        C4655 c4655 = this.f17616;
        C4646 c4646 = (C4646) c4655.f17453.get(this.f17613);
        c4646.getClass();
        int i = c4655.f17456;
        if (i == -1) {
            int length = interfaceC5067Arr.length;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                int i4 = 13107200;
                if (i2 < length) {
                    InterfaceC5067 interfaceC5067 = interfaceC5067Arr[i2];
                    if (interfaceC5067 != null) {
                        switch (interfaceC5067.mo9758().f5766) {
                            case -2:
                                i4 = 0;
                                i3 += i4;
                                break;
                            case -1:
                            case 1:
                                i3 += i4;
                                break;
                            case 0:
                                i4 = 144310272;
                                i3 += i4;
                                break;
                            case 2:
                                i4 = 131072000;
                                i3 += i4;
                                break;
                            case 3:
                            case 5:
                            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                                i4 = 131072;
                                i3 += i4;
                                break;
                            case 4:
                                i4 = 26214400;
                                i3 += i4;
                                break;
                            default:
                                throw new IllegalArgumentException();
                        }
                    }
                    i2++;
                } else {
                    i = Math.max(13107200, i3);
                }
            }
        }
        c4646.f17423 = i;
        c4655.m9267();
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final void m9342(int i, IOException iOException) {
        ExoPlaybackException exoPlaybackException = new ExoPlaybackException(0, iOException, i);
        C4675 c4675 = this.f17617.f17693;
        if (c4675 != null) {
            exoPlaybackException = exoPlaybackException.m787(c4675.f17537.f17660);
        }
        AbstractC3731.m7863("ExoPlayerImplInternal", "Playback error", exoPlaybackException);
        m9320(false, false);
        this.f17598 = this.f17598.m9305(exoPlaybackException);
    }

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public final void m9343(boolean z) {
        this.f17611 = z;
        m9346();
        if (this.f17651) {
            C4689 c4689 = this.f17617;
            if (c4689.f17696 != c4689.f17693) {
                m9332(true);
                m9319(false);
            }
        }
    }

    /* renamed from: ˑ, reason: contains not printable characters */
    public final void m9344() {
        C4677 c4677 = this.f17647;
        c4677.f17551 = false;
        C4643 c4643 = (C4643) c4677.f17547;
        if (c4643.f17348) {
            c4643.m9218(c4643.mo777());
            c4643.f17348 = false;
        }
        for (C3163 c3163 : this.f17605) {
            AbstractC4671 abstractC4671 = (AbstractC4671) c3163.f12097;
            AbstractC4671 abstractC46712 = (AbstractC4671) c3163.f12094;
            if (C3163.m6964(abstractC46712)) {
                C3163.m6965(abstractC46712);
            }
            if (abstractC4671 != null && abstractC4671.f17508 != 0) {
                C3163.m6965(abstractC4671);
            }
        }
    }

    /* renamed from: ˑʼ, reason: contains not printable characters */
    public final void m9345(int i) {
        C4682 c4682 = this.f17598;
        if (c4682.f17583 != i) {
            if (i != 2) {
                this.f17606 = -9223372036854775807L;
            }
            if (i != 3 && c4682.f17576) {
                this.f17598 = c4682.m9294(false);
            }
            this.f17598 = this.f17598.m9301(i);
        }
    }

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final void m9346() {
        C4675 c4675 = this.f17617.f17693;
        this.f17651 = c4675 != null && c4675.f17537.f17652 && this.f17611;
    }

    @Override // p420.InterfaceC4967
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void mo9347(InterfaceC4945 interfaceC4945) {
        this.f17615.m7753(8, interfaceC4945).m7816();
    }

    /* renamed from: י, reason: contains not printable characters */
    public final void m9348() {
        C4675 c4675 = this.f17617.f17693;
        if (c4675 == null) {
            return;
        }
        C5057 c5057 = c4675.f17534;
        int i = 0;
        while (true) {
            C3163[] c3163Arr = this.f17605;
            if (i >= c3163Arr.length) {
                return;
            }
            if (c5057.m9961(i)) {
                c3163Arr[i].m6971();
            }
            i++;
        }
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final void m9349(InterfaceC4945 interfaceC4945) {
        C4689 c4689 = this.f17617;
        C4675 c4675 = c4689.f17708;
        if (c4675 != null && c4675.f17541 == interfaceC4945) {
            c4689.m9392(this.f17622);
            m9316();
            return;
        }
        C4675 c46752 = c4689.f17698;
        if (c46752 == null || c46752.f17541 != interfaceC4945) {
            return;
        }
        m9331();
    }

    /* renamed from: יﹳ, reason: contains not printable characters */
    public final void m9350(int i, int i2, List list) {
        this.f17618.m6070(1);
        C2845 c2845 = this.f17599;
        c2845.getClass();
        ArrayList arrayList = (ArrayList) c2845.f10681;
        AbstractC3731.m7849(i >= 0 && i <= i2 && i2 <= arrayList.size());
        AbstractC3731.m7849(list.size() == i2 - i);
        for (int i3 = i; i3 < i2; i3++) {
            ((C4660) arrayList.get(i3)).f17476.mo5102((C1480) list.get(i3 - i));
        }
        m9310(c2845.m6334(), false);
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final void m9351(InterfaceC4945 interfaceC4945) {
        C4675 c4675;
        C4689 c4689 = this.f17617;
        C4675 c46752 = c4689.f17708;
        C4677 c4677 = this.f17647;
        if (c46752 != null && c46752.f17541 == interfaceC4945) {
            c46752.getClass();
            if (!c46752.f17535) {
                float f = c4677.mo771().f5838;
                C4682 c4682 = this.f17598;
                c46752.m9288(f, c4682.f17591, c4682.f17593);
            }
            m9341(c46752.f17534);
            if (c46752 == c4689.f17693) {
                m9340(c46752.f17537.f17659);
                m9383(new boolean[this.f17605.length], c4689.f17696.m9282());
                c46752.f17539 = true;
                C4682 c46822 = this.f17598;
                C4987 c4987 = c46822.f17590;
                long j = c46752.f17537.f17659;
                this.f17598 = m9312(c4987, j, c46822.f17577, j, false, 5);
            }
            m9316();
            return;
        }
        int i = 0;
        while (true) {
            if (i >= c4689.f17705.size()) {
                c4675 = null;
                break;
            }
            c4675 = (C4675) c4689.f17705.get(i);
            if (c4675.f17541 == interfaceC4945) {
                break;
            } else {
                i++;
            }
        }
        if (c4675 != null) {
            AbstractC3731.m7857(true ^ c4675.f17535);
            float f2 = c4677.mo771().f5838;
            C4682 c46823 = this.f17598;
            c4675.m9288(f2, c46823.f17591, c46823.f17593);
            C4675 c46753 = c4689.f17698;
            if (c46753 == null || c46753.f17541 != interfaceC4945) {
                return;
            }
            m9331();
        }
    }

    /* renamed from: ـᵎ, reason: contains not printable characters */
    public final void m9352(float f) {
        this.f17627 = f;
        float f2 = f * this.f17608.f17460;
        for (C3163 c3163 : this.f17605) {
            AbstractC4671 abstractC4671 = (AbstractC4671) c3163.f12094;
            if (abstractC4671.f17515 == 1) {
                abstractC4671.mo780(2, Float.valueOf(f2));
                AbstractC4671 abstractC46712 = (AbstractC4671) c3163.f12097;
                if (abstractC46712 != null) {
                    abstractC46712.mo780(2, Float.valueOf(f2));
                }
            }
        }
    }

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public final void m9353(boolean z) {
        if (!z) {
            this.f17621 = false;
            this.f17615.m7751(37);
            C4659 c4659 = this.f17638;
            if (c4659 != null) {
                m9364(c4659, false);
                this.f17638 = null;
            }
        }
        this.f17635 = z;
        m9377();
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final void m9354() {
        this.f17618.m6070(1);
        m9329(false, false, false, true);
        C4655 c4655 = this.f17616;
        HashMap hashMap = c4655.f17453;
        long id = Thread.currentThread().getId();
        long j = c4655.f17448;
        AbstractC3731.m7848("Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper).", j == -1 || j == id);
        c4655.f17448 = id;
        C0783 c0783 = this.f17613;
        if (!hashMap.containsKey(c0783)) {
            hashMap.put(c0783, new Object());
        }
        C4646 c4646 = (C4646) hashMap.get(c0783);
        c4646.getClass();
        int i = c4655.f17456;
        if (i == -1) {
            i = 13107200;
        }
        c4646.f17423 = i;
        c4646.f17424 = false;
        m9345(this.f17598.f17591.m4217() ? 4 : 2);
        C4682 c4682 = this.f17598;
        boolean z = c4682.f17593;
        m9318(this.f17608.m9269(c4682.f17583, z), c4682.f17587, c4682.f17580, z);
        C4446 c4446 = (C4446) this.f17632;
        c4446.getClass();
        C2845 c2845 = this.f17599;
        ArrayList arrayList = (ArrayList) c2845.f10681;
        AbstractC3731.m7857(!c2845.f10689);
        c2845.f10690 = c4446;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            C4660 c4660 = (C4660) arrayList.get(i2);
            c2845.m6337(c4660);
            ((HashSet) c2845.f10687).add(c4660);
        }
        c2845.f10689 = true;
        this.f17615.m7752(2);
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final void m9355(int i, boolean z) {
        boolean[] zArr = this.f17601;
        if (zArr[i] != z) {
            zArr[i] = z;
            this.f17614.m7750(new RunnableC1663(this, i, z));
        }
    }

    /* renamed from: ٴﹳ, reason: contains not printable characters */
    public final void m9356(InterfaceC5386 interfaceC5386) {
        for (C3163 c3163 : this.f17605) {
            AbstractC4671 abstractC4671 = (AbstractC4671) c3163.f12094;
            if (abstractC4671.f17515 == 2) {
                abstractC4671.mo780(7, interfaceC5386);
                AbstractC4671 abstractC46712 = (AbstractC4671) c3163.f12097;
                if (abstractC46712 != null) {
                    abstractC46712.mo780(7, interfaceC5386);
                }
            }
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m9357(C4675 c4675, int i, boolean z, long j) {
        C3163 c3163 = this.f17605[i];
        boolean m6974 = c3163.m6974();
        AbstractC4671 abstractC4671 = (AbstractC4671) c3163.f12094;
        if (m6974) {
            return;
        }
        boolean z2 = c4675 == this.f17617.f17693;
        C5057 c5057 = c4675.f17534;
        C4678 c4678 = c5057.f19030[i];
        InterfaceC5067 interfaceC5067 = c5057.f19027[i];
        boolean z3 = m9317() && this.f17598.f17583 == 3;
        boolean z4 = !z && z3;
        this.f17625++;
        InterfaceC4956 interfaceC4956 = c4675.f17530[i];
        long j2 = c4675.f17529;
        C4987 c4987 = c4675.f17537.f17660;
        AbstractC4671 abstractC46712 = (AbstractC4671) c3163.f12097;
        int length = interfaceC5067 != null ? interfaceC5067.length() : 0;
        C1495[] c1495Arr = new C1495[length];
        for (int i2 = 0; i2 < length; i2++) {
            interfaceC5067.getClass();
            c1495Arr[i2] = interfaceC5067.mo9759(i2);
        }
        int i3 = c3163.f12095;
        C4677 c4677 = this.f17647;
        if (i3 == 0 || i3 == 2 || i3 == 4) {
            c3163.f12092 = true;
            AbstractC3731.m7857(abstractC4671.f17508 == 0);
            abstractC4671.f17507 = c4678;
            abstractC4671.f17511 = c4987;
            abstractC4671.f17508 = 1;
            abstractC4671.mo758(z4, z2);
            abstractC4671.m9272(c1495Arr, interfaceC4956, j, j2, c4987);
            abstractC4671.f17520 = false;
            abstractC4671.f17519 = j;
            abstractC4671.f17505 = j;
            abstractC4671.mo779(z4, j);
            c4677.m9289(abstractC4671);
        } else {
            c3163.f12093 = true;
            abstractC46712.getClass();
            AbstractC3731.m7857(abstractC46712.f17508 == 0);
            abstractC46712.f17507 = c4678;
            abstractC46712.f17511 = c4987;
            abstractC46712.f17508 = 1;
            abstractC46712.mo758(z4, z2);
            abstractC46712.m9272(c1495Arr, interfaceC4956, j, j2, c4987);
            abstractC46712.f17520 = false;
            abstractC46712.f17519 = j;
            abstractC46712.f17505 = j;
            abstractC46712.mo779(z4, j);
            c4677.m9289(abstractC46712);
        }
        C4651 c4651 = new C4651(this);
        AbstractC4671 m6970 = c3163.m6970(c4675);
        m6970.getClass();
        m6970.mo780(11, c4651);
        if (z3 && z2) {
            c3163.m6971();
        }
    }

    /* renamed from: ᐧˎ, reason: contains not printable characters */
    public final void m9358(boolean z, boolean z2) {
        long j;
        this.f17650 = z;
        if (!z || z2) {
            j = -9223372036854775807L;
        } else {
            this.f17624.getClass();
            j = SystemClock.elapsedRealtime();
        }
        this.f17596 = j;
    }

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public final void m9359(C4681 c4681) {
        this.f17618.m6070(1);
        int i = c4681.f17570;
        C4979 c4979 = c4681.f17572;
        ArrayList arrayList = c4681.f17573;
        if (i != -1) {
            this.f17604 = new C4659(new C4679(arrayList, c4979), c4681.f17570, c4681.f17571);
        }
        C2845 c2845 = this.f17599;
        ArrayList arrayList2 = (ArrayList) c2845.f10681;
        c2845.m6333(0, arrayList2.size());
        m9310(c2845.m6340(arrayList2.size(), arrayList, c4979), false);
    }

    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public final boolean m9360(AbstractC1445 abstractC1445, C4987 c4987) {
        if (c4987.m9838() || abstractC1445.m4217()) {
            return false;
        }
        int i = abstractC1445.mo4225(c4987.f18631, this.f17646).f5744;
        C1466 c1466 = this.f17643;
        abstractC1445.m4226(i, c1466);
        return c1466.m4267() && c1466.f5728 && c1466.f5743 != -9223372036854775807L;
    }

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public final void m9361(boolean z, C3722 c3722) {
        if (this.f17629 != z) {
            this.f17629 = z;
            if (!z) {
                for (C3163 c3163 : this.f17605) {
                    c3163.m6973();
                }
            }
        }
        if (c3722 != null) {
            c3722.m7823();
        }
    }

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public final void m9362(C1485 c1485) {
        this.f17615.m7751(16);
        C4677 c4677 = this.f17647;
        c4677.mo759(c1485);
        C1485 mo771 = c4677.mo771();
        m9322(mo771, mo771.f5838, true, true);
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final boolean m9363() {
        C4675 c4675 = this.f17617.f17693;
        long j = c4675.f17537.f17656;
        if (c4675.f17535) {
            return j == -9223372036854775807L || this.f17598.f17584 < j || !m9317();
        }
        return false;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(5:25|(20:(8:27|(1:92)(3:33|(1:37)|38)|39|(1:48)|46|47|17|18)(1:93)|53|54|(1:56)(1:85)|57|58|(1:60)(1:83)|61|62|63|64|65|66|67|68|69|70|16|17|18)|49|50|(1:52)(1:89)) */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0173, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00a7 A[Catch: all -> 0x00aa, TRY_ENTER, TryCatch #4 {all -> 0x00aa, blocks: (B:14:0x00a7, B:21:0x00b4, B:23:0x00ba, B:24:0x00bd, B:27:0x00d0, B:29:0x00d6, B:33:0x00de, B:37:0x00ec, B:38:0x00f1, B:39:0x00f9, B:41:0x010a, B:46:0x0118), top: B:12:0x00a5 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00b1  */
    /* JADX WARN: Type inference failed for: r0v30, types: [java.lang.Object, ﹳᵢ.ʾᵎ] */
    /* renamed from: ᴵˑ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9364(p392.C4659 r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p392.C4683.m9364(ⁱי.ˈٴ, boolean):void");
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final void m9365() {
        C2697 c2697 = this.f17618;
        C4682 c4682 = this.f17598;
        boolean z = c2697.f10270 | (((C4682) c2697.f10275) != c4682);
        c2697.f10270 = z;
        c2697.f10275 = c4682;
        if (z) {
            C4644 c4644 = this.f17619.f17521;
            c4644.f17389.m7750(new RunnableC3805(c4644, 3, c2697));
            this.f17618 = new C2697(this.f17598);
        }
    }

    /* renamed from: ᵎʻ, reason: contains not printable characters */
    public final void m9366(Object obj, C3722 c3722) {
        for (C3163 c3163 : this.f17605) {
            AbstractC4671 abstractC4671 = (AbstractC4671) c3163.f12094;
            if (abstractC4671.f17515 == 2) {
                int i = c3163.f12095;
                if (i == 4 || i == 1) {
                    AbstractC4671 abstractC46712 = (AbstractC4671) c3163.f12097;
                    abstractC46712.getClass();
                    abstractC46712.mo780(1, obj);
                } else {
                    abstractC4671.mo780(1, obj);
                }
            }
        }
        int i2 = this.f17598.f17583;
        if (i2 == 3 || i2 == 2) {
            this.f17615.m7752(2);
        }
        if (c3722 != null) {
            c3722.m7823();
        }
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final void m9367(C3722 c3722) {
        C0767 c0767 = this.f17645;
        C3711 c3711 = this.f17615;
        try {
            m9329(true, false, true, false);
            m9372();
            C4655 c4655 = this.f17616;
            if (c4655.f17453.remove(this.f17613) != null) {
                c4655.m9267();
            }
            if (c4655.f17453.isEmpty()) {
                c4655.f17448 = -1L;
            }
            C4657 c4657 = this.f17608;
            c4657.f17457 = null;
            c4657.m9271();
            c4657.m9270(0);
            this.f17612.mo9973();
            m9345(1);
        } finally {
            c3711.f14471.removeCallbacksAndMessages(null);
            c0767.m2794();
            c3722.m7823();
        }
    }

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public final void m9368(C1471 c1471, boolean z) {
        C5078 c5078 = (C5078) this.f17612;
        if (!c5078.f19132.equals(c1471)) {
            c5078.f19132 = c1471;
            c5078.m9986();
        }
        if (!z) {
            c1471 = null;
        }
        C4657 c4657 = this.f17608;
        if (!Objects.equals(c4657.f17458, c1471)) {
            c4657.f17458 = c1471;
            int i = c1471 == null ? 0 : 1;
            c4657.f17464 = i;
            AbstractC3731.m7843("Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.", i == 1 || i == 0);
        }
        C4682 c4682 = this.f17598;
        boolean z2 = c4682.f17593;
        m9318(c4657.m9269(c4682.f17583, z2), c4682.f17587, c4682.f17580, z2);
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final void m9369() {
        this.f17618.m6070(1);
        throw null;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m9370() {
        m9373();
        m9332(true);
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final long m9371(C4675 c4675) {
        if (c4675 == null) {
            return 0L;
        }
        long j = c4675.f17529;
        if (!c4675.f17535) {
            return j;
        }
        int i = 0;
        while (true) {
            C3163[] c3163Arr = this.f17605;
            if (i >= c3163Arr.length) {
                return j;
            }
            if (c3163Arr[i].m6970(c4675) != null) {
                AbstractC4671 m6970 = c3163Arr[i].m6970(c4675);
                Objects.requireNonNull(m6970);
                long j2 = m6970.f17505;
                if (j2 == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                j = Math.max(j2, j);
            }
            i++;
        }
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final void m9372() {
        for (int i = 0; i < this.f17605.length; i++) {
            AbstractC4671 abstractC4671 = this.f17639[i];
            synchronized (abstractC4671.f17504) {
                abstractC4671.f17510 = null;
            }
            C3163 c3163 = this.f17605[i];
            AbstractC4671 abstractC46712 = (AbstractC4671) c3163.f12094;
            AbstractC3731.m7857(abstractC46712.f17508 == 0);
            abstractC46712.mo5947();
            c3163.f12092 = false;
            AbstractC4671 abstractC46713 = (AbstractC4671) c3163.f12097;
            if (abstractC46713 != null) {
                AbstractC3731.m7857(abstractC46713.f17508 == 0);
                abstractC46713.mo5947();
                c3163.f12093 = false;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:65:? A[RETURN, SYNTHETIC] */
    /* renamed from: ᵔٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9373() {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p392.C4683.m9373():void");
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m9374() {
        AbstractC4671 abstractC4671;
        if (this.f17607 && m9328()) {
            for (C3163 c3163 : this.f17605) {
                int m6968 = c3163.m6968();
                if (c3163.m6976()) {
                    int i = c3163.f12095;
                    boolean z = i == 4 || i == 2;
                    int i2 = i != 4 ? 0 : 1;
                    if (z) {
                        abstractC4671 = (AbstractC4671) c3163.f12094;
                    } else {
                        abstractC4671 = (AbstractC4671) c3163.f12097;
                        abstractC4671.getClass();
                    }
                    c3163.m6975(abstractC4671, this.f17647);
                    c3163.m6967(z);
                    c3163.f12095 = i2;
                }
                this.f17625 -= m6968 - c3163.m6968();
            }
            this.f17634 = -9223372036854775807L;
        }
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void m9375(int i) {
        C4682 c4682 = this.f17598;
        m9318(i, c4682.f17587, c4682.f17580, c4682.f17593);
    }

    /* renamed from: ⁱˉ, reason: contains not printable characters */
    public final void m9376(AbstractC1445 abstractC1445, C4987 c4987, AbstractC1445 abstractC14452, C4987 c49872, long j, boolean z) {
        boolean m9360 = m9360(abstractC1445, c4987);
        Object obj = c4987.f18631;
        if (!m9360) {
            C1485 c1485 = c4987.m9838() ? C1485.f5835 : this.f17598.f17581;
            C4677 c4677 = this.f17647;
            if (c4677.mo771().equals(c1485)) {
                return;
            }
            this.f17615.m7751(16);
            c4677.mo759(c1485);
            m9322(this.f17598.f17581, c1485.f5838, false, false);
            return;
        }
        C1467 c1467 = this.f17646;
        int i = abstractC1445.mo4225(obj, c1467).f5744;
        C1466 c1466 = this.f17643;
        abstractC1445.m4226(i, c1466);
        C1452 c1452 = c1466.f5731;
        C4691 c4691 = this.f17628;
        c4691.getClass();
        c4691.f17718 = AbstractC3712.m7757(c1452.f5651);
        c4691.f17722 = AbstractC3712.m7757(c1452.f5650);
        c4691.f17711 = AbstractC3712.m7757(c1452.f5647);
        float f = c1452.f5648;
        if (f == -3.4028235E38f) {
            f = c4691.f17724;
        }
        c4691.f17725 = f;
        float f2 = c1452.f5649;
        if (f2 == -3.4028235E38f) {
            f2 = c4691.f17723;
        }
        c4691.f17719 = f2;
        if (f == 1.0f && f2 == 1.0f) {
            c4691.f17718 = -9223372036854775807L;
        }
        c4691.m9406();
        if (j != -9223372036854775807L) {
            c4691.f17726 = m9333(abstractC1445, obj, j);
            c4691.m9406();
            return;
        }
        if (!Objects.equals(!abstractC14452.m4217() ? abstractC14452.mo4221(abstractC14452.mo4225(c49872.f18631, c1467).f5744, c1466, 0L).f5741 : null, c1466.f5741) || z) {
            c4691.f17726 = -9223372036854775807L;
            c4691.m9406();
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m9377() {
        for (C3163 c3163 : this.f17605) {
            C4669 c4669 = this.f17635 ? this.f17637 : null;
            ((AbstractC4671) c3163.f12094).mo780(18, c4669);
            AbstractC4671 abstractC4671 = (AbstractC4671) c3163.f12097;
            if (abstractC4671 != null) {
                abstractC4671.mo780(18, c4669);
            }
        }
    }

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final void m9378(long j) {
        boolean z = this.f17635;
        long j2 = f17595;
        if (z) {
            this.f17637.getClass();
            r2 = this.f17598.f17583 != 3 ? j2 : 1000L;
            for (C3163 c3163 : this.f17605) {
                long j3 = this.f17622;
                long j4 = this.f17600;
                AbstractC4671 abstractC4671 = (AbstractC4671) c3163.f12097;
                AbstractC4671 abstractC46712 = (AbstractC4671) c3163.f12094;
                long mo778 = C3163.m6964(abstractC46712) ? abstractC46712.mo778(j3, j4) : Long.MAX_VALUE;
                if (abstractC4671 != null && abstractC4671.f17508 != 0) {
                    mo778 = Math.min(mo778, abstractC4671.mo778(j3, j4));
                }
                r2 = Math.min(r2, AbstractC3712.m7755(mo778));
            }
            if (this.f17598.m9298()) {
                C4675 c4675 = this.f17617.f17693;
                C4675 c46752 = c4675 != null ? c4675.f17533 : null;
                if (c46752 != null) {
                    if ((((float) AbstractC3712.m7757(r2)) * this.f17598.f17581.f5838) + ((float) this.f17622) >= ((float) c46752.m9282())) {
                        r2 = Math.min(r2, j2);
                    }
                }
            }
        } else if (this.f17598.f17583 != 3 || m9317()) {
            r2 = j2;
        }
        this.f17615.f14471.sendEmptyMessageAtTime(2, j + r2);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m9379(C4681 c4681, int i) {
        this.f17618.m6070(1);
        C2845 c2845 = this.f17599;
        if (i == -1) {
            i = ((ArrayList) c2845.f10681).size();
        }
        m9310(c2845.m6340(i, c4681.f17573, c4681.f17572), false);
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m9380() {
        m9352(this.f17627);
    }

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public final void m9381(boolean z) {
        this.f17642 = z;
        AbstractC1445 abstractC1445 = this.f17598.f17591;
        C4689 c4689 = this.f17617;
        c4689.f17704 = z;
        int m9402 = c4689.m9402(abstractC1445);
        if ((m9402 & 1) != 0) {
            m9332(true);
        } else if ((m9402 & 2) != 0) {
            m9374();
        }
        m9319(false);
    }

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public final void m9382(C4680 c4680) {
        this.f17644 = c4680;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m9383(boolean[] zArr, long j) {
        C3163[] c3163Arr;
        long j2;
        C4675 c4675 = this.f17617.f17696;
        C5057 c5057 = c4675.f17534;
        int i = 0;
        while (true) {
            c3163Arr = this.f17605;
            if (i >= c3163Arr.length) {
                break;
            }
            if (!c5057.m9961(i)) {
                c3163Arr[i].m6973();
            }
            i++;
        }
        int i2 = 0;
        while (i2 < c3163Arr.length) {
            if (c5057.m9961(i2) && c3163Arr[i2].m6970(c4675) == null) {
                j2 = j;
                m9357(c4675, i2, zArr[i2], j2);
            } else {
                j2 = j;
            }
            i2++;
            j = j2;
        }
    }

    @Override // p420.InterfaceC4946
    /* renamed from: ﾞᴵ */
    public final void mo6998(InterfaceC4947 interfaceC4947) {
        this.f17615.m7753(9, (InterfaceC4945) interfaceC4947).m7816();
    }
}

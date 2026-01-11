package p392;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import p055.C1471;
import p076.AbstractC1659;
import p076.C1658;
import p095.InterfaceC1882;
import p137.AbstractC2305;
import p305.C3711;
import p305.C3716;
import ʽٴ.ˈ;
import ʾﾞ.ﹳٴ;

/* renamed from: ⁱי.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4657 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public C4683 f17457;

    /* renamed from: ˈ, reason: contains not printable characters */
    public C1471 f17458;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public C1658 f17461;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Handler f17462;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC1882 f17463;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f17464;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public float f17460 = 1.0f;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f17459 = 0;

    public C4657(Context context, Looper looper, C4683 c4683) {
        this.f17463 = ˈ.ʽﹳ(new C4648(context, 0));
        this.f17457 = c4683;
        this.f17462 = new Handler(looper);
    }

    /* JADX WARN: Type inference failed for: r11v7, types: [ʾﾞ.ﹳٴ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v8, types: [ʾﾞ.ﹳٴ, java.lang.Object] */
    /* renamed from: ʽ, reason: contains not printable characters */
    public final int m9269(int i, boolean z) {
        int i2;
        ﹳٴ r12;
        boolean z2 = false;
        if (i == 1 || (i2 = this.f17464) != 1) {
            m9271();
            m9270(0);
            return 1;
        }
        if (!z) {
            int i3 = this.f17459;
            if (i3 == 1) {
                return -1;
            }
            if (i3 == 3) {
                return 0;
            }
        } else if (this.f17459 != 2) {
            C1658 c1658 = this.f17461;
            if (c1658 == null) {
                if (c1658 == null) {
                    ?? obj = new Object();
                    ((ﹳٴ) obj).ʽ = C1471.f5756;
                    ((ﹳٴ) obj).ⁱˊ = i2;
                    r12 = obj;
                } else {
                    ?? obj2 = new Object();
                    ((ﹳٴ) obj2).ⁱˊ = c1658.f6739;
                    ((ﹳٴ) obj2).ʽ = c1658.f6736;
                    ((ﹳٴ) obj2).ﹳٴ = c1658.f6737;
                    r12 = obj2;
                }
                C1471 c1471 = this.f17458;
                if (c1471 != null && c1471.f5758 == 1) {
                    z2 = true;
                }
                c1471.getClass();
                r12.ʽ = c1471;
                r12.ﹳٴ = z2;
                AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener = new AudioManager.OnAudioFocusChangeListener() { // from class: ⁱי.ⁱˊ
                    @Override // android.media.AudioManager.OnAudioFocusChangeListener
                    public final void onAudioFocusChange(int i4) {
                        C4657 c4657 = C4657.this;
                        c4657.getClass();
                        if (i4 == -3 || i4 == -2) {
                            c4657.m9270(4);
                            return;
                        }
                        if (i4 == -1) {
                            C4683 c4683 = c4657.f17457;
                            if (c4683 != null) {
                                C3711 c3711 = c4683.f17615;
                                c3711.getClass();
                                C3716 m7749 = C3711.m7749();
                                m7749.f14491 = c3711.f14471.obtainMessage(33, -1, 0);
                                m7749.m7816();
                            }
                            c4657.m9271();
                            c4657.m9270(1);
                            return;
                        }
                        if (i4 != 1) {
                            AbstractC2305.m5373(i4, "Unknown focus change type: ", "AudioFocusManager");
                            return;
                        }
                        c4657.m9270(2);
                        C4683 c46832 = c4657.f17457;
                        if (c46832 != null) {
                            C3711 c37112 = c46832.f17615;
                            c37112.getClass();
                            C3716 m77492 = C3711.m7749();
                            m77492.f14491 = c37112.f14471.obtainMessage(33, 1, 0);
                            m77492.m7816();
                        }
                    }
                };
                Handler handler = this.f17462;
                handler.getClass();
                this.f17461 = new C1658(r12.ⁱˊ, onAudioFocusChangeListener, handler, (C1471) r12.ʽ, r12.ﹳٴ);
            }
            if (AbstractC1659.m4539((AudioManager) this.f17463.get(), this.f17461) == 1) {
                m9270(2);
                return 1;
            }
            m9270(1);
            return -1;
        }
        return 1;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m9270(int i) {
        if (this.f17459 == i) {
            return;
        }
        this.f17459 = i;
        float f = i == 4 ? 0.2f : 1.0f;
        if (this.f17460 == f) {
            return;
        }
        this.f17460 = f;
        C4683 c4683 = this.f17457;
        if (c4683 != null) {
            c4683.f17615.m7752(34);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m9271() {
        int i = this.f17459;
        if (i == 1 || i == 0 || this.f17461 == null) {
            return;
        }
        AbstractC1659.m4543((AudioManager) this.f17463.get(), this.f17461);
    }
}

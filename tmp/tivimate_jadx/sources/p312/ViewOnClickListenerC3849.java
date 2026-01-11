package p312;

import android.view.View;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.media3.common.PlaybackException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import p055.C1454;
import p055.C1456;
import p055.C1463;
import p055.C1469;
import p055.C1471;
import p055.C1475;
import p055.C1476;
import p055.C1480;
import p055.C1482;
import p055.C1483;
import p055.C1485;
import p055.InterfaceC1487;
import p055.InterfaceC1488;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3711;
import p305.C3716;
import p388.C4620;
import p392.C4644;
import p392.C4668;
import ʽⁱ.ᵎﹶ;
import ᐧˎ.ˉʿ;

/* renamed from: ᐧⁱ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewOnClickListenerC3849 implements InterfaceC1487, InterfaceC3850, View.OnClickListener, PopupWindow.OnDismissListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ C3860 f14897;

    public ViewOnClickListenerC3849(C3860 c3860) {
        this.f14897 = c3860;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C3860 c3860 = this.f14897;
        ImageView imageView = c3860.f15007;
        View view2 = c3860.f15000;
        View view3 = c3860.f14981;
        View view4 = c3860.f14957;
        C3840 c3840 = c3860.f14966;
        ᵎﹶ r6 = c3860.f15025;
        if (r6 == null) {
            return;
        }
        c3840.m8007();
        if (c3860.f14997 == view) {
            ᵎﹶ r62 = r6;
            if (r62.ᐧﹶ(9)) {
                r62.ʿـ();
                return;
            }
            return;
        }
        if (c3860.f14958 == view) {
            ᵎﹶ r63 = r6;
            if (r63.ᐧﹶ(7)) {
                r63.ⁱי();
                return;
            }
            return;
        }
        if (c3860.f14976 == view) {
            if (((C4644) r6).m9259() != 4) {
                ᵎﹶ r64 = r6;
                if (r64.ᐧﹶ(12)) {
                    C4644 c4644 = (C4644) r64;
                    c4644.m9241();
                    r64.ﹳⁱ(12, c4644.f17369);
                    return;
                }
                return;
            }
            return;
        }
        if (c3860.f15012 == view) {
            ᵎﹶ r65 = r6;
            if (r65.ᐧﹶ(11)) {
                C4644 c46442 = (C4644) r65;
                c46442.m9241();
                r65.ﹳⁱ(11, -c46442.f17411);
                return;
            }
            return;
        }
        if (c3860.f15026 == view) {
            if (AbstractC3712.m7790(r6, c3860.f14960)) {
                AbstractC3712.m7796(r6);
                return;
            }
            ᵎﹶ r66 = r6;
            if (r66.ᐧﹶ(1)) {
                ((C4644) r66).m9221(false);
                return;
            }
            return;
        }
        if (c3860.f14970 == view) {
            if (r6.ᐧﹶ(15)) {
                C4644 c46443 = (C4644) r6;
                c46443.m9241();
                int i = c46443.f17353;
                int i2 = c3860.f14986;
                for (int i3 = 1; i3 <= 2; i3++) {
                    int i4 = (i + i3) % 3;
                    if (i4 != 0) {
                        if (i4 != 1) {
                            if (i4 == 2 && (i2 & 2) != 0) {
                            }
                        } else if ((i2 & 1) == 0) {
                        }
                    }
                    i = i4;
                }
                c46443.m9253(i);
                return;
            }
            return;
        }
        if (c3860.f15017 != view) {
            if (view4 == view) {
                c3840.m8011();
                c3860.m8055(c3860.f15019, view4);
                return;
            }
            if (view3 == view) {
                c3840.m8011();
                c3860.m8055(c3860.f14971, view3);
                return;
            } else if (view2 == view) {
                c3840.m8011();
                c3860.m8055(c3860.f14972, view2);
                return;
            } else {
                if (imageView == view) {
                    c3840.m8011();
                    c3860.m8055(c3860.f15020, imageView);
                    return;
                }
                return;
            }
        }
        if (r6.ᐧﹶ(14)) {
            C4644 c46444 = (C4644) r6;
            c46444.m9241();
            boolean z = !c46444.f17374;
            ˉʿ r0 = c46444.f17365;
            c46444.m9241();
            if (c46444.f17374 != z) {
                c46444.f17374 = z;
                C3711 c3711 = c46444.f17406.f17615;
                c3711.getClass();
                C3716 m7749 = C3711.m7749();
                m7749.f14491 = c3711.f14471.obtainMessage(12, z ? 1 : 0, 0);
                m7749.m7816();
                r0.ˈ(9, new C4668(0, z));
                c46444.m9249();
                r0.ʽ();
            }
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        C3860 c3860 = this.f14897;
        if (c3860.f15002) {
            c3860.f14966.m8007();
        }
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ʻٴ */
    public final /* synthetic */ void mo2822(float f) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ʼʼ */
    public final /* synthetic */ void mo2823(int i) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ʼˈ */
    public final /* synthetic */ void mo2824(boolean z) {
    }

    @Override // p312.InterfaceC3850
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void mo8020(long j, long j2, long j3) {
        C3860 c3860 = this.f14897;
        TextView textView = c3860.f15033;
        if (textView != null) {
            textView.setText(AbstractC3712.m7788(c3860.f14955, c3860.f14990, j));
        }
        if (c3860.m8058(c3860.f15025)) {
            C3860.m8044(c3860, c3860.f15025, j);
        }
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ʼᐧ */
    public final /* synthetic */ void mo2826(C1463 c1463) {
    }

    @Override // p312.InterfaceC3850
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo8021(long j) {
        C3860 c3860 = this.f14897;
        c3860.f15034 = true;
        TextView textView = c3860.f15033;
        if (textView != null) {
            textView.setText(AbstractC3712.m7788(c3860.f14955, c3860.f14990, j));
        }
        c3860.f14966.m8011();
        InterfaceC1488 interfaceC1488 = c3860.f15025;
        if (interfaceC1488 == null || !c3860.f14985) {
            return;
        }
        if (c3860.m8046(interfaceC1488)) {
            try {
                Method method = c3860.f15013;
                method.getClass();
                method.invoke(c3860.f15025, Boolean.TRUE);
                return;
            } catch (IllegalAccessException | InvocationTargetException e) {
                throw new RuntimeException(e);
            }
        }
        if (c3860.m8061(c3860.f15025)) {
            try {
                Method method2 = c3860.f14978;
                method2.getClass();
                method2.invoke(c3860.f15025, Boolean.TRUE);
                return;
            } catch (IllegalAccessException | InvocationTargetException e2) {
                throw new RuntimeException(e2);
            }
        }
        StringBuilder sb = new StringBuilder("Time bar scrubbing is enabled, but player is not an ExoPlayer or CompositionPlayer instance, so ignoring (because we can't enable scrubbing mode). player.class=");
        InterfaceC1488 interfaceC14882 = c3860.f15025;
        interfaceC14882.getClass();
        sb.append(interfaceC14882.getClass());
        AbstractC3731.m7850("PlayerControlView", sb.toString());
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ʽʽ */
    public final /* synthetic */ void mo2828(int i) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ʽﹳ */
    public final /* synthetic */ void mo2829(int i, boolean z) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ʾᵎ */
    public final /* synthetic */ void mo2831(C1475 c1475) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˆʾ */
    public final /* synthetic */ void mo2832(int i) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˆﾞ */
    public final /* synthetic */ void mo2833(int i, C1456 c1456, C1456 c14562) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˈ */
    public final /* synthetic */ void mo2834(int i) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˈʿ */
    public final /* synthetic */ void mo2835(C1482 c1482) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˉʿ */
    public final /* synthetic */ void mo2837(boolean z) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˉˆ */
    public final /* synthetic */ void mo2838(boolean z) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˉٴ */
    public final /* synthetic */ void mo2839(PlaybackException playbackException) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˏי */
    public final /* synthetic */ void mo2843(int i, boolean z) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˑٴ */
    public final /* synthetic */ void mo2844(C4620 c4620) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˑﹳ */
    public final /* synthetic */ void mo2845(C1485 c1485) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ٴᵢ */
    public final void mo2850(C1483 c1483) {
        boolean m4293 = c1483.m4293(4, 5, 13);
        C3860 c3860 = this.f14897;
        if (m4293) {
            c3860.m8062();
        }
        if (c1483.m4293(4, 5, 7, 13)) {
            c3860.m8056();
        }
        if (c1483.m4293(8, 13)) {
            c3860.m8054();
        }
        if (c1483.m4293(9, 13)) {
            c3860.m8045();
        }
        if (c1483.m4293(8, 9, 11, 0, 16, 17, 13)) {
            c3860.m8047();
        }
        if (c1483.m4293(11, 0, 13)) {
            c3860.m8057();
        }
        if (c1483.m4293(12, 13)) {
            c3860.m8063();
        }
        if (c1483.m4293(2, 13)) {
            c3860.m8049();
        }
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ٴﹶ */
    public final /* synthetic */ void mo2851(C1454 c1454) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ᵎˊ */
    public final /* synthetic */ void mo2854(int i, int i2) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ᵎⁱ */
    public final /* synthetic */ void mo2855(boolean z) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ᵎﹶ */
    public final /* synthetic */ void mo2856(C1480 c1480, int i) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ᵔʾ */
    public final /* synthetic */ void mo2857() {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ᵔᵢ */
    public final /* synthetic */ void mo2860(C1476 c1476) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ᵔﹳ */
    public final /* synthetic */ void mo2861(C1471 c1471) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ᵢˏ */
    public final /* synthetic */ void mo2862(PlaybackException playbackException) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ⁱˊ */
    public final /* synthetic */ void mo2863(int i) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ﹳٴ */
    public final /* synthetic */ void mo2865(C1469 c1469) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ﹳᐧ */
    public final /* synthetic */ void mo2866(List list) {
    }

    @Override // p312.InterfaceC3850
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void mo8022(boolean z, long j) {
        C3860 c3860 = this.f14897;
        c3860.f15034 = false;
        InterfaceC1488 interfaceC1488 = c3860.f15025;
        if (interfaceC1488 != null) {
            if (!z) {
                C3860.m8044(c3860, interfaceC1488, j);
            }
            if (c3860.m8046(c3860.f15025)) {
                try {
                    Method method = c3860.f15013;
                    method.getClass();
                    method.invoke(c3860.f15025, Boolean.FALSE);
                } catch (IllegalAccessException | InvocationTargetException e) {
                    throw new RuntimeException(e);
                }
            } else if (c3860.m8061(c3860.f15025)) {
                try {
                    Method method2 = c3860.f14978;
                    method2.getClass();
                    method2.invoke(c3860.f15025, Boolean.FALSE);
                } catch (IllegalAccessException | InvocationTargetException e2) {
                    throw new RuntimeException(e2);
                }
            }
        }
        c3860.f14966.m8007();
    }
}

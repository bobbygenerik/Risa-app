package p312;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.media3.ui.DefaultTimeBar;
import androidx.recyclerview.widget.RecyclerView;
import ar.tvplayer.tv.R;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import p017.AbstractC0951;
import p017.AbstractC0993;
import p017.AbstractC1004;
import p017.C0956;
import p053.C1432;
import p055.AbstractC1445;
import p055.AbstractC1449;
import p055.C1448;
import p055.C1453;
import p055.C1454;
import p055.C1463;
import p055.C1466;
import p055.C1467;
import p055.C1485;
import p055.C1492;
import p055.C1495;
import p055.InterfaceC1488;
import p179.AbstractC2727;
import p283.RunnableC3568;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p392.C4644;
import p392.C4682;
import ʽⁱ.ᵎﹶ;
import ᐧˎ.ˉʿ;

/* renamed from: ᐧⁱ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3860 extends FrameLayout {

    /* renamed from: ﾞˏ, reason: contains not printable characters */
    public static final float[] f14953;

    /* renamed from: ʻʿ, reason: contains not printable characters */
    public final Drawable f14954;

    /* renamed from: ʻˋ, reason: contains not printable characters */
    public final StringBuilder f14955;

    /* renamed from: ʻᴵ, reason: contains not printable characters */
    public final String f14956;

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public final View f14957;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final ImageView f14958;

    /* renamed from: ʼـ, reason: contains not printable characters */
    public final String f14959;

    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public boolean f14960;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final ViewOnClickListenerC3849 f14961;

    /* renamed from: ʽˑ, reason: contains not printable characters */
    public boolean f14962;

    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public final Drawable f14963;

    /* renamed from: ʽⁱ, reason: contains not printable characters */
    public final Drawable f14964;

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public final Drawable f14965;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C3840 f14966;

    /* renamed from: ʾﾞ, reason: contains not printable characters */
    public final Drawable f14967;

    /* renamed from: ʿ, reason: contains not printable characters */
    public final TextView f14968;

    /* renamed from: ʿـ, reason: contains not printable characters */
    public final Drawable f14969;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final ImageView f14970;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final C3854 f14971;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final C3842 f14972;

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public final TextView f14973;

    /* renamed from: ˈـ, reason: contains not printable characters */
    public int f14974;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final Class f14975;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final View f14976;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public final TextView f14977;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final Method f14978;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final Method f14979;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final int f14980;

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public final View f14981;

    /* renamed from: ˋˊ, reason: contains not printable characters */
    public boolean f14982;

    /* renamed from: ˋـ, reason: contains not printable characters */
    public final long[] f14983;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final PopupWindow f14984;

    /* renamed from: ˎʾ, reason: contains not printable characters */
    public boolean f14985;

    /* renamed from: ˎˉ, reason: contains not printable characters */
    public int f14986;

    /* renamed from: ˎᐧ, reason: contains not printable characters */
    public final String f14987;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public final ImageView f14988;

    /* renamed from: ˑ, reason: contains not printable characters */
    public final Drawable f14989;

    /* renamed from: ˑʼ, reason: contains not printable characters */
    public final Formatter f14990;

    /* renamed from: ˑˆ, reason: contains not printable characters */
    public int f14991;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final C3872 f14992;

    /* renamed from: י, reason: contains not printable characters */
    public final Drawable f14993;

    /* renamed from: יˉ, reason: contains not printable characters */
    public boolean f14994;

    /* renamed from: יﹳ, reason: contains not printable characters */
    public final String f14995;

    /* renamed from: ـˊ, reason: contains not printable characters */
    public final String f14996;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final ImageView f14997;

    /* renamed from: ـᵎ, reason: contains not printable characters */
    public final RunnableC3568 f14998;

    /* renamed from: ـᵢ, reason: contains not printable characters */
    public final String f14999;

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public final View f15000;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final CopyOnWriteArrayList f15001;

    /* renamed from: ٴʿ, reason: contains not printable characters */
    public boolean f15002;

    /* renamed from: ٴᴵ, reason: contains not printable characters */
    public final String f15003;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final Class f15004;

    /* renamed from: ٴﹳ, reason: contains not printable characters */
    public final C1467 f15005;

    /* renamed from: ᐧˎ, reason: contains not printable characters */
    public final float f15006;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public final ImageView f15007;

    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public final Drawable f15008;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public final ImageView f15009;

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public final ImageView f15010;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Resources f15011;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final View f15012;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final Method f15013;

    /* renamed from: ᵎʻ, reason: contains not printable characters */
    public final C1466 f15014;

    /* renamed from: ᵎʿ, reason: contains not printable characters */
    public final Drawable f15015;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final RecyclerView f15016;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public final ImageView f15017;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final Method f15018;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final C1432 f15019;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final C3842 f15020;

    /* renamed from: ᵔⁱ, reason: contains not printable characters */
    public long f15021;

    /* renamed from: ᵢˋ, reason: contains not printable characters */
    public boolean[] f15022;

    /* renamed from: ⁱˉ, reason: contains not printable characters */
    public final float f15023;

    /* renamed from: ⁱי, reason: contains not printable characters */
    public final String f15024;

    /* renamed from: ⁱᴵ, reason: contains not printable characters */
    public InterfaceC1488 f15025;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final ImageView f15026;

    /* renamed from: ﹳᵢ, reason: contains not printable characters */
    public long[] f15027;

    /* renamed from: ﹳⁱ, reason: contains not printable characters */
    public final String f15028;

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public final InterfaceC3875 f15029;

    /* renamed from: ﹶ, reason: contains not printable characters */
    public final Drawable f15030;

    /* renamed from: ﹶʽ, reason: contains not printable characters */
    public final boolean[] f15031;

    /* renamed from: ﹶˎ, reason: contains not printable characters */
    public boolean f15032;

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public final TextView f15033;

    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public boolean f15034;

    static {
        AbstractC1449.m4241("media3.ui");
        f14953 = new float[]{0.25f, 0.5f, 0.75f, 1.0f, 1.25f, 1.5f, 2.0f};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Can't wrap try/catch for region: R(57:1|(4:3|4|5|6)(1:117)|7|8|9|10|11|12|(3:13|14|15)|16|17|18|19|(5:20|21|22|23|24)|25|(1:27)|28|(1:30)(1:100)|31|(1:33)|34|(1:36)|37|(1:39)|40|(1:42)|43|(1:45)(1:(1:98)(1:99))|46|(1:48)|49|(1:51)|52|(1:54)|55|(1:57)|58|(1:60)(1:96)|61|(1:63)(2:92|(1:94)(1:95))|64|(1:66)|67|(1:69)(2:88|(1:90)(1:91))|70|(1:72)|73|(1:75)|76|(1:78)|79|(1:81)|82|(1:84)|85|86|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x022d, code lost:
    
        r5 = null;
        r7 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x025a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x02a2  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x02d9  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0343  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0360  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0378  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x03e5  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0409  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0422  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0446  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0458  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x046a  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0494  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0656  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0433  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x039c  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02de  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C3860(android.content.Context r50, android.util.AttributeSet r51) {
        /*
            Method dump skipped, instructions count: 1636
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p312.C3860.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlaybackSpeed(float f) {
        ᵎﹶ r0 = this.f15025;
        if (r0 == null || !r0.ᐧﹶ(13)) {
            return;
        }
        C4644 c4644 = (C4644) this.f15025;
        c4644.m9241();
        C1485 c1485 = new C1485(f, c4644.f17415.f17581.f5837);
        c4644.m9241();
        if (c4644.f17415.f17581.equals(c1485)) {
            return;
        }
        C4682 m9300 = c4644.f17415.m9300(c1485);
        c4644.f17388++;
        c4644.f17406.f17615.m7753(4, c1485).m7816();
        c4644.m9237(m9300, 0, false, 5, -9223372036854775807L, -1, false);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static boolean m8042(InterfaceC1488 interfaceC1488, C1466 c1466) {
        AbstractC1445 m9254;
        int mo4222;
        ᵎﹶ r8 = (ᵎﹶ) interfaceC1488;
        if (!r8.ᐧﹶ(17) || (mo4222 = (m9254 = ((C4644) r8).m9254()).mo4222()) <= 1 || mo4222 > 100) {
            return false;
        }
        for (int i = 0; i < mo4222; i++) {
            if (m9254.mo4221(i, c1466, 0L).f5733 == -9223372036854775807L) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m8044(C3860 c3860, InterfaceC1488 interfaceC1488, long j) {
        if (c3860.f14994) {
            ᵎﹶ r8 = (ᵎﹶ) interfaceC1488;
            if (r8.ᐧﹶ(17) && r8.ᐧﹶ(10)) {
                AbstractC1445 m9254 = ((C4644) r8).m9254();
                int mo4222 = m9254.mo4222();
                int i = 0;
                while (true) {
                    long m7755 = AbstractC3712.m7755(m9254.mo4221(i, c3860.f15014, 0L).f5733);
                    if (j < m7755) {
                        break;
                    }
                    if (i == mo4222 - 1) {
                        j = m7755;
                        break;
                    } else {
                        j -= m7755;
                        i++;
                    }
                }
                r8.ـˊ(j, false, i);
            }
        } else {
            ᵎﹶ r82 = (ᵎﹶ) interfaceC1488;
            if (r82.ᐧﹶ(5)) {
                r82.ᵎʿ(5, j);
            }
        }
        c3860.m8056();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return m8051(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    public InterfaceC1488 getPlayer() {
        return this.f15025;
    }

    public int getRepeatToggleModes() {
        return this.f14986;
    }

    public boolean getShowShuffleButton() {
        return this.f14966.m8009(this.f15017);
    }

    public boolean getShowSubtitleButton() {
        return this.f14966.m8009(this.f15007);
    }

    public int getShowTimeoutMs() {
        return this.f14974;
    }

    public boolean getShowVrButton() {
        return this.f14966.m8009(this.f15009);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        C3840 c3840 = this.f14966;
        c3840.f14874.addOnLayoutChangeListener(c3840.f14857);
        this.f14962 = true;
        if (m8050()) {
            c3840.m8007();
        }
        m8052();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C3840 c3840 = this.f14966;
        c3840.f14874.removeOnLayoutChangeListener(c3840.f14857);
        this.f14962 = false;
        removeCallbacks(this.f14998);
        c3840.m8011();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        View view = this.f14966.f14873;
        if (view != null) {
            view.layout(0, 0, i3 - i, i4 - i2);
        }
    }

    public void setAnimationEnabled(boolean z) {
        this.f14966.f14854 = z;
    }

    @Deprecated
    public void setOnFullScreenModeChangedListener(InterfaceC3867 interfaceC3867) {
        boolean z = interfaceC3867 != null;
        ImageView imageView = this.f14988;
        if (imageView != null) {
            if (z) {
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(8);
            }
        }
        boolean z2 = interfaceC3867 != null;
        ImageView imageView2 = this.f15010;
        if (imageView2 == null) {
            return;
        }
        if (z2) {
            imageView2.setVisibility(0);
        } else {
            imageView2.setVisibility(8);
        }
    }

    public void setPlayer(InterfaceC1488 interfaceC1488) {
        AbstractC3731.m7857(Looper.myLooper() == Looper.getMainLooper());
        AbstractC3731.m7849(interfaceC1488 == null || ((C4644) interfaceC1488).f17354 == Looper.getMainLooper());
        InterfaceC1488 interfaceC14882 = this.f15025;
        if (interfaceC14882 == interfaceC1488) {
            return;
        }
        ViewOnClickListenerC3849 viewOnClickListenerC3849 = this.f14961;
        if (interfaceC14882 != null) {
            ((C4644) interfaceC14882).m9251(viewOnClickListenerC3849);
        }
        this.f15025 = interfaceC1488;
        if (interfaceC1488 != null) {
            ˉʿ r5 = ((C4644) interfaceC1488).f17365;
            viewOnClickListenerC3849.getClass();
            r5.ﹳٴ(viewOnClickListenerC3849);
        }
        m8052();
    }

    public void setProgressUpdateListener(InterfaceC3873 interfaceC3873) {
    }

    public void setRepeatToggleModes(int i) {
        this.f14986 = i;
        ᵎﹶ r0 = this.f15025;
        if (r0 != null && r0.ᐧﹶ(15)) {
            C4644 c4644 = (C4644) this.f15025;
            c4644.m9241();
            int i2 = c4644.f17353;
            if (i == 0 && i2 != 0) {
                ((C4644) this.f15025).m9253(0);
            } else if (i == 1 && i2 == 2) {
                ((C4644) this.f15025).m9253(1);
            } else if (i == 2 && i2 == 1) {
                ((C4644) this.f15025).m9253(2);
            }
        }
        this.f14966.m8008(this.f14970, i != 0);
        m8054();
    }

    public void setShowFastForwardButton(boolean z) {
        this.f14966.m8008(this.f14976, z);
        m8047();
    }

    @Deprecated
    public void setShowMultiWindowTimeBar(boolean z) {
        this.f14982 = z;
        m8057();
    }

    public void setShowNextButton(boolean z) {
        this.f14966.m8008(this.f14997, z);
        m8047();
    }

    public void setShowPlayButtonIfPlaybackIsSuppressed(boolean z) {
        this.f14960 = z;
        m8062();
    }

    public void setShowPreviousButton(boolean z) {
        this.f14966.m8008(this.f14958, z);
        m8047();
    }

    public void setShowRewindButton(boolean z) {
        this.f14966.m8008(this.f15012, z);
        m8047();
    }

    public void setShowShuffleButton(boolean z) {
        this.f14966.m8008(this.f15017, z);
        m8045();
    }

    public void setShowSubtitleButton(boolean z) {
        this.f14966.m8008(this.f15007, z);
    }

    public void setShowTimeoutMs(int i) {
        this.f14974 = i;
        if (m8050()) {
            this.f14966.m8007();
        }
    }

    public void setShowVrButton(boolean z) {
        this.f14966.m8008(this.f15009, z);
    }

    public void setTimeBarMinUpdateInterval(int i) {
        this.f14991 = AbstractC3712.m7758(i, 16, 1000);
    }

    public void setTimeBarScrubbingEnabled(boolean z) {
        this.f14985 = z;
    }

    public void setVrButtonListener(View.OnClickListener onClickListener) {
        ImageView imageView = this.f15009;
        if (imageView != null) {
            imageView.setOnClickListener(onClickListener);
            m8060(imageView, onClickListener != null);
        }
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final void m8045() {
        ImageView imageView;
        if (m8064() && this.f14962 && (imageView = this.f15017) != null) {
            ᵎﹶ r1 = this.f15025;
            if (!this.f14966.m8009(imageView)) {
                m8060(imageView, false);
                return;
            }
            String str = this.f14996;
            Drawable drawable = this.f14967;
            if (r1 == null || !r1.ᐧﹶ(14)) {
                m8060(imageView, false);
                imageView.setImageDrawable(drawable);
                imageView.setContentDescription(str);
                return;
            }
            m8060(imageView, true);
            C4644 c4644 = (C4644) r1;
            c4644.m9241();
            if (c4644.f17374) {
                drawable = this.f14964;
            }
            imageView.setImageDrawable(drawable);
            c4644.m9241();
            if (c4644.f17374) {
                str = this.f14956;
            }
            imageView.setContentDescription(str);
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean m8046(InterfaceC1488 interfaceC1488) {
        Class cls;
        return (interfaceC1488 == null || (cls = this.f14975) == null || !cls.isAssignableFrom(interfaceC1488.getClass())) ? false : true;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void m8047() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        long j;
        long j2;
        if (m8064() && this.f14962) {
            ᵎﹶ r0 = this.f15025;
            if (r0 != null) {
                z2 = (this.f14982 && m8042(r0, this.f15014)) ? r0.ᐧﹶ(10) : r0.ᐧﹶ(5);
                ᵎﹶ r02 = r0;
                z3 = r02.ᐧﹶ(7);
                z4 = r02.ᐧﹶ(11);
                z5 = r02.ᐧﹶ(12);
                z = r02.ᐧﹶ(9);
            } else {
                z = false;
                z2 = false;
                z3 = false;
                z4 = false;
                z5 = false;
            }
            Resources resources = this.f15011;
            View view = this.f15012;
            if (z4) {
                InterfaceC1488 interfaceC1488 = this.f15025;
                if (interfaceC1488 != null) {
                    C4644 c4644 = (C4644) interfaceC1488;
                    c4644.m9241();
                    j2 = c4644.f17411;
                } else {
                    j2 = 5000;
                }
                int i = (int) (j2 / 1000);
                TextView textView = this.f14968;
                if (textView != null) {
                    textView.setText(String.valueOf(i));
                }
                if (view != null) {
                    view.setContentDescription(resources.getQuantityString(R.plurals.1n5, i, Integer.valueOf(i)));
                }
            }
            View view2 = this.f14976;
            if (z5) {
                InterfaceC1488 interfaceC14882 = this.f15025;
                if (interfaceC14882 != null) {
                    C4644 c46442 = (C4644) interfaceC14882;
                    c46442.m9241();
                    j = c46442.f17369;
                } else {
                    j = 15000;
                }
                int i2 = (int) (j / 1000);
                TextView textView2 = this.f14977;
                if (textView2 != null) {
                    textView2.setText(String.valueOf(i2));
                }
                if (view2 != null) {
                    view2.setContentDescription(resources.getQuantityString(R.plurals.5fn, i2, Integer.valueOf(i2)));
                }
            }
            m8060(this.f14958, z3);
            m8060(view, z4);
            m8060(view2, z5);
            m8060(this.f14997, z);
            InterfaceC3875 interfaceC3875 = this.f15029;
            if (interfaceC3875 != null) {
                interfaceC3875.setEnabled(z2);
            }
        }
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final void m8048() {
        RecyclerView recyclerView = this.f15016;
        recyclerView.measure(0, 0);
        int width = getWidth();
        int i = this.f14980;
        int min = Math.min(recyclerView.getMeasuredWidth(), width - (i * 2));
        PopupWindow popupWindow = this.f14984;
        popupWindow.setWidth(min);
        popupWindow.setHeight(Math.min(getHeight() - (i * 2), recyclerView.getMeasuredHeight()));
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final void m8049() {
        C3842 c3842 = this.f15020;
        c3842.getClass();
        List list = Collections.EMPTY_LIST;
        c3842.f14884 = list;
        C3842 c38422 = this.f14972;
        c38422.getClass();
        c38422.f14884 = list;
        ᵎﹶ r1 = this.f15025;
        ImageView imageView = this.f15007;
        if (r1 != null && r1.ᐧﹶ(30) && this.f15025.ᐧﹶ(29)) {
            C1454 m9236 = ((C4644) this.f15025).m9236();
            C0956 m8065 = m8065(m9236, 1);
            c38422.f14884 = m8065;
            C3860 c3860 = c38422.f14886;
            InterfaceC1488 interfaceC1488 = c3860.f15025;
            C1432 c1432 = c3860.f15019;
            interfaceC1488.getClass();
            C1463 m9234 = ((C4644) interfaceC1488).m9234();
            if (!m8065.isEmpty()) {
                if (c38422.m8018(m9234)) {
                    int i = 0;
                    while (true) {
                        if (i >= m8065.f3903) {
                            break;
                        }
                        C3877 c3877 = (C3877) m8065.get(i);
                        if (c3877.f15098.f5654[c3877.f15097]) {
                            ((String[]) c1432.f5599)[1] = c3877.f15096;
                            break;
                        }
                        i++;
                    }
                } else {
                    ((String[]) c1432.f5599)[1] = c3860.getResources().getString(R.string.51b);
                }
            } else {
                ((String[]) c1432.f5599)[1] = c3860.getResources().getString(R.string.48o);
            }
            if (this.f14966.m8009(imageView)) {
                c3842.m8017(m8065(m9236, 3));
            } else {
                c3842.m8017(C0956.f3901);
            }
        }
        m8060(imageView, c3842.mo611() > 0);
        C1432 c14322 = this.f15019;
        m8060(this.f14957, c14322.m4197(1) || c14322.m4197(0));
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final boolean m8050() {
        C3840 c3840 = this.f14966;
        return c3840.f14872 == 0 && c3840.f14874.m8064();
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean m8051(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        ᵎﹶ r1 = this.f15025;
        if (r1 == null || !(keyCode == 90 || keyCode == 89 || keyCode == 85 || keyCode == 79 || keyCode == 126 || keyCode == 127 || keyCode == 87 || keyCode == 88)) {
            return false;
        }
        if (keyEvent.getAction() == 0) {
            if (keyCode != 90) {
                if (keyCode == 89) {
                    ᵎﹶ r9 = r1;
                    if (r9.ᐧﹶ(11)) {
                        C4644 c4644 = (C4644) r9;
                        c4644.m9241();
                        r9.ﹳⁱ(11, -c4644.f17411);
                    }
                }
                if (keyEvent.getRepeatCount() == 0) {
                    if (keyCode == 79 || keyCode == 85) {
                        if (AbstractC3712.m7790(r1, this.f14960)) {
                            AbstractC3712.m7796(r1);
                        } else {
                            ᵎﹶ r12 = r1;
                            if (r12.ᐧﹶ(1)) {
                                ((C4644) r12).m9221(false);
                            }
                        }
                    } else if (keyCode == 87) {
                        ᵎﹶ r13 = r1;
                        if (r13.ᐧﹶ(9)) {
                            r13.ʿـ();
                        }
                    } else if (keyCode == 88) {
                        ᵎﹶ r14 = r1;
                        if (r14.ᐧﹶ(7)) {
                            r14.ⁱי();
                        }
                    } else if (keyCode == 126) {
                        AbstractC3712.m7796(r1);
                    } else if (keyCode == 127) {
                        String str = AbstractC3712.f14481;
                        ᵎﹶ r15 = r1;
                        if (r15.ᐧﹶ(1)) {
                            ((C4644) r15).m9221(false);
                        }
                    }
                }
            } else if (((C4644) r1).m9259() != 4) {
                ᵎﹶ r16 = r1;
                if (r16.ᐧﹶ(12)) {
                    C4644 c46442 = (C4644) r16;
                    c46442.m9241();
                    r16.ﹳⁱ(12, c46442.f17369);
                }
            }
        }
        return true;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m8052() {
        m8062();
        m8047();
        m8054();
        m8045();
        m8049();
        m8063();
        m8057();
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m8053(boolean z) {
        if (this.f15032 == z) {
            return;
        }
        this.f15032 = z;
        String str = this.f15003;
        Drawable drawable = this.f15030;
        String str2 = this.f14999;
        Drawable drawable2 = this.f14954;
        ImageView imageView = this.f14988;
        if (imageView != null) {
            if (z) {
                imageView.setImageDrawable(drawable2);
                imageView.setContentDescription(str2);
            } else {
                imageView.setImageDrawable(drawable);
                imageView.setContentDescription(str);
            }
        }
        ImageView imageView2 = this.f15010;
        if (imageView2 == null) {
            return;
        }
        if (z) {
            imageView2.setImageDrawable(drawable2);
            imageView2.setContentDescription(str2);
        } else {
            imageView2.setImageDrawable(drawable);
            imageView2.setContentDescription(str);
        }
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final void m8054() {
        ImageView imageView;
        if (m8064() && this.f14962 && (imageView = this.f14970) != null) {
            if (this.f14986 == 0) {
                m8060(imageView, false);
                return;
            }
            ᵎﹶ r1 = this.f15025;
            String str = this.f14959;
            Drawable drawable = this.f14993;
            if (r1 == null || !r1.ᐧﹶ(15)) {
                m8060(imageView, false);
                imageView.setImageDrawable(drawable);
                imageView.setContentDescription(str);
                return;
            }
            m8060(imageView, true);
            C4644 c4644 = (C4644) r1;
            c4644.m9241();
            int i = c4644.f17353;
            if (i == 0) {
                imageView.setImageDrawable(drawable);
                imageView.setContentDescription(str);
            } else if (i == 1) {
                imageView.setImageDrawable(this.f14965);
                imageView.setContentDescription(this.f14987);
            } else {
                if (i != 2) {
                    return;
                }
                imageView.setImageDrawable(this.f14989);
                imageView.setContentDescription(this.f14995);
            }
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m8055(AbstractC2727 abstractC2727, View view) {
        this.f15016.setAdapter(abstractC2727);
        m8048();
        this.f15002 = false;
        PopupWindow popupWindow = this.f14984;
        popupWindow.dismiss();
        this.f15002 = true;
        int width = getWidth() - popupWindow.getWidth();
        int i = this.f14980;
        popupWindow.showAsDropDown(view, width - i, (-popupWindow.getHeight()) - i);
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final void m8056() {
        long j;
        long j2;
        if (m8064() && this.f14962) {
            ᵎﹶ r0 = this.f15025;
            if (r0 == null || !r0.ᐧﹶ(16)) {
                j = 0;
                j2 = 0;
            } else {
                long j3 = this.f15021;
                C4644 c4644 = (C4644) r0;
                c4644.m9241();
                j = c4644.m9245(c4644.f17415) + j3;
                j2 = c4644.m9223() + this.f15021;
            }
            TextView textView = this.f15033;
            if (textView != null && !this.f15034) {
                textView.setText(AbstractC3712.m7788(this.f14955, this.f14990, j));
            }
            InterfaceC3875 interfaceC3875 = this.f15029;
            if (interfaceC3875 != null) {
                ((DefaultTimeBar) interfaceC3875).m801(j, 0L);
                if (m8058(r0)) {
                    j2 = j;
                }
                interfaceC3875.setBufferedPosition(j2);
            }
            RunnableC3568 runnableC3568 = this.f14998;
            removeCallbacks(runnableC3568);
            int m9259 = r0 == null ? 1 : ((C4644) r0).m9259();
            if (r0 != null) {
                C4644 c46442 = (C4644) r0;
                if (c46442.m9259() == 3 && c46442.m9248()) {
                    c46442.m9241();
                    if (c46442.f17415.f17587 == 0) {
                        long min = Math.min(interfaceC3875 != null ? interfaceC3875.getPreferredUpdateDelay() : 1000L, 1000 - (j % 1000));
                        C4644 c46443 = (C4644) r0;
                        c46443.m9241();
                        postDelayed(runnableC3568, AbstractC3712.m7767(c46443.f17415.f17581.f5838 > 0.0f ? ((float) min) / r0 : 1000L, this.f14991, 1000L));
                        return;
                    }
                }
            }
            if (m9259 == 4 || m9259 == 1) {
                return;
            }
            postDelayed(runnableC3568, 1000L);
        }
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final void m8057() {
        boolean z;
        long j;
        int i;
        int i2;
        boolean z2;
        boolean[] zArr;
        boolean z3;
        ᵎﹶ r1 = this.f15025;
        if (r1 == null) {
            return;
        }
        boolean z4 = this.f14982;
        C1466 c1466 = this.f15014;
        boolean z5 = false;
        boolean z6 = true;
        this.f14994 = z4 && m8042(r1, c1466);
        long j2 = 0;
        this.f15021 = 0L;
        ᵎﹶ r2 = r1;
        AbstractC1445 m9254 = r2.ᐧﹶ(17) ? ((C4644) r1).m9254() : AbstractC1445.f5630;
        long j3 = -9223372036854775807L;
        if (m9254.m4217()) {
            z = true;
            if (r2.ᐧﹶ(16)) {
                long j4 = r2.ᴵʼ();
                if (j4 != -9223372036854775807L) {
                    j = AbstractC3712.m7757(j4);
                    i = 0;
                }
            }
            j = 0;
            i = 0;
        } else {
            int m9238 = ((C4644) r1).m9238();
            boolean z7 = this.f14994;
            int i3 = z7 ? 0 : m9238;
            int mo4222 = z7 ? m9254.mo4222() - 1 : m9238;
            i = 0;
            long j5 = 0;
            while (true) {
                if (i3 > mo4222) {
                    break;
                }
                long j6 = j2;
                if (i3 == m9238) {
                    this.f15021 = AbstractC3712.m7755(j5);
                }
                m9254.m4226(i3, c1466);
                if (c1466.f5733 == j3) {
                    AbstractC3731.m7857(this.f14994 ^ z6);
                    break;
                }
                int i4 = c1466.f5738;
                while (i4 <= c1466.f5734) {
                    C1467 c1467 = this.f15005;
                    m9254.mo4231(i4, c1467, z5);
                    long j7 = j3;
                    C1448 c1448 = c1467.f5747;
                    c1448.getClass();
                    int i5 = c1448.f5643;
                    int i6 = z5;
                    while (i6 < i5) {
                        c1467.m4269(i6);
                        long j8 = c1467.f5746;
                        if (j8 >= j6) {
                            long[] jArr = this.f15027;
                            i2 = m9238;
                            if (i == jArr.length) {
                                int length = jArr.length == 0 ? 1 : jArr.length * 2;
                                this.f15027 = Arrays.copyOf(jArr, length);
                                this.f15022 = Arrays.copyOf(this.f15022, length);
                            }
                            this.f15027[i] = AbstractC3712.m7755(j8 + j5);
                            boolean[] zArr2 = this.f15022;
                            C1492 m4240 = c1467.f5747.m4240(i6);
                            int i7 = m4240.f5894;
                            if (i7 == -1) {
                                zArr = zArr2;
                                z2 = true;
                                z3 = true;
                            } else {
                                int i8 = 0;
                                while (i8 < i7) {
                                    zArr = zArr2;
                                    int i9 = m4240.f5891[i8];
                                    if (i9 != 0) {
                                        C1492 c1492 = m4240;
                                        z2 = true;
                                        if (i9 != 1) {
                                            i8++;
                                            zArr2 = zArr;
                                            m4240 = c1492;
                                        }
                                    } else {
                                        z2 = true;
                                    }
                                    z3 = z2;
                                    break;
                                }
                                zArr = zArr2;
                                z2 = true;
                                z3 = false;
                            }
                            zArr[i] = !z3;
                            i++;
                        } else {
                            i2 = m9238;
                            z2 = true;
                        }
                        i6++;
                        z6 = z2;
                        m9238 = i2;
                        j6 = 0;
                    }
                    i4++;
                    j3 = j7;
                    z5 = false;
                    j6 = 0;
                }
                j5 += c1466.f5733;
                i3++;
                z6 = z6;
                z5 = false;
                j2 = 0;
            }
            z = z6;
            j = j5;
        }
        long m7755 = AbstractC3712.m7755(j);
        TextView textView = this.f14973;
        if (textView != null) {
            textView.setText(AbstractC3712.m7788(this.f14955, this.f14990, m7755));
        }
        InterfaceC3875 interfaceC3875 = this.f15029;
        if (interfaceC3875 != null) {
            interfaceC3875.setDuration(m7755);
            long[] jArr2 = this.f14983;
            int length2 = jArr2.length;
            int i10 = i + length2;
            long[] jArr3 = this.f15027;
            if (i10 > jArr3.length) {
                this.f15027 = Arrays.copyOf(jArr3, i10);
                this.f15022 = Arrays.copyOf(this.f15022, i10);
            }
            System.arraycopy(jArr2, 0, this.f15027, i, length2);
            System.arraycopy(this.f15031, 0, this.f15022, i, length2);
            long[] jArr4 = this.f15027;
            boolean[] zArr3 = this.f15022;
            DefaultTimeBar defaultTimeBar = (DefaultTimeBar) interfaceC3875;
            if (i10 != 0 && (jArr4 == null || zArr3 == null)) {
                z = false;
            }
            AbstractC3731.m7849(z);
            defaultTimeBar.m798();
        }
        m8056();
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final boolean m8058(InterfaceC1488 interfaceC1488) {
        try {
            if (m8046(interfaceC1488)) {
                Method method = this.f14979;
                method.getClass();
                Object invoke = method.invoke(interfaceC1488, null);
                invoke.getClass();
                if (((Boolean) invoke).booleanValue()) {
                    return true;
                }
            }
            if (!m8061(interfaceC1488)) {
                return false;
            }
            Method method2 = this.f15018;
            method2.getClass();
            Object invoke2 = method2.invoke(interfaceC1488, null);
            invoke2.getClass();
            return ((Boolean) invoke2).booleanValue();
        } catch (IllegalAccessException e) {
            e = e;
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            e = e2;
            throw new RuntimeException(e);
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m8059() {
        C3840 c3840 = this.f14966;
        int i = c3840.f14872;
        if (i == 3 || i == 2) {
            return;
        }
        c3840.m8011();
        if (!c3840.f14854) {
            c3840.m8004(2);
        } else if (c3840.f14872 == 1) {
            c3840.f14860.start();
        } else {
            c3840.f14869.start();
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m8060(View view, boolean z) {
        if (view == null) {
            return;
        }
        view.setEnabled(z);
        view.setAlpha(z ? this.f15023 : this.f15006);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final boolean m8061(InterfaceC1488 interfaceC1488) {
        Class cls;
        return (interfaceC1488 == null || (cls = this.f15004) == null || !cls.isAssignableFrom(interfaceC1488.getClass())) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0053, code lost:
    
        if (((p392.C4644) r1).m9254().m4217() == false) goto L26;
     */
    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8062() {
        /*
            r5 = this;
            boolean r0 = r5.m8064()
            if (r0 == 0) goto L5a
            boolean r0 = r5.f14962
            if (r0 != 0) goto Lb
            goto L5a
        Lb:
            android.widget.ImageView r0 = r5.f15026
            if (r0 == 0) goto L5a
            ʽⁱ.ᵔٴ r1 = r5.f15025
            boolean r2 = r5.f14960
            boolean r1 = p305.AbstractC3712.m7790(r1, r2)
            if (r1 == 0) goto L1c
            android.graphics.drawable.Drawable r2 = r5.f14963
            goto L1e
        L1c:
            android.graphics.drawable.Drawable r2 = r5.f15008
        L1e:
            if (r1 == 0) goto L24
            r1 = 2131951773(0x7f13009d, float:1.953997E38)
            goto L27
        L24:
            r1 = 2131951772(0x7f13009c, float:1.9539968E38)
        L27:
            r0.setImageDrawable(r2)
            android.content.res.Resources r2 = r5.f15011
            java.lang.String r1 = r2.getString(r1)
            r0.setContentDescription(r1)
            ʽⁱ.ᵔٴ r1 = r5.f15025
            if (r1 == 0) goto L56
            r2 = r1
            ʽⁱ.ᵎﹶ r2 = (ʽⁱ.ᵎﹶ) r2
            r3 = 1
            boolean r4 = r2.ᐧﹶ(r3)
            if (r4 == 0) goto L56
            r4 = 17
            boolean r2 = r2.ᐧﹶ(r4)
            if (r2 == 0) goto L57
            ⁱי.ʼʼ r1 = (p392.C4644) r1
            ʽⁱ.ʼˈ r1 = r1.m9254()
            boolean r1 = r1.m4217()
            if (r1 != 0) goto L56
            goto L57
        L56:
            r3 = 0
        L57:
            r5.m8060(r0, r3)
        L5a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p312.C3860.m8062():void");
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m8063() {
        C3854 c3854;
        InterfaceC1488 interfaceC1488 = this.f15025;
        if (interfaceC1488 == null) {
            return;
        }
        C4644 c4644 = (C4644) interfaceC1488;
        c4644.m9241();
        float f = c4644.f17415.f17581.f5838;
        float f2 = Float.MAX_VALUE;
        int i = 0;
        int i2 = 0;
        while (true) {
            c3854 = this.f14971;
            float[] fArr = c3854.f14904;
            if (i >= fArr.length) {
                break;
            }
            float abs = Math.abs(f - fArr[i]);
            if (abs < f2) {
                i2 = i;
                f2 = abs;
            }
            i++;
        }
        c3854.f14906 = i2;
        String str = c3854.f14903[i2];
        C1432 c1432 = this.f15019;
        ((String[]) c1432.f5599)[0] = str;
        m8060(this.f14957, c1432.m4197(1) || c1432.m4197(0));
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final boolean m8064() {
        return getVisibility() == 0;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C0956 m8065(C1454 c1454, int i) {
        AbstractC1004.m3282(4, "initialCapacity");
        Object[] objArr = new Object[4];
        AbstractC0993 abstractC0993 = c1454.f5658;
        int i2 = 0;
        for (int i3 = 0; i3 < abstractC0993.size(); i3++) {
            C1453 c1453 = (C1453) abstractC0993.get(i3);
            if (c1453.f5655.f5766 == i) {
                for (int i4 = 0; i4 < c1453.f5656; i4++) {
                    if (c1453.m4243(i4)) {
                        C1495 c1495 = c1453.f5655.f5767[i4];
                        if ((c1495.f5919 & 2) == 0) {
                            C3877 c3877 = new C3877(c1454, i3, i4, this.f14992.m8070(c1495));
                            int i5 = i2 + 1;
                            int m3234 = AbstractC0951.m3234(objArr.length, i5);
                            if (m3234 > objArr.length) {
                                objArr = Arrays.copyOf(objArr, m3234);
                            }
                            objArr[i2] = c3877;
                            i2 = i5;
                        }
                    }
                }
            }
        }
        return AbstractC0993.m3259(i2, objArr);
    }
}

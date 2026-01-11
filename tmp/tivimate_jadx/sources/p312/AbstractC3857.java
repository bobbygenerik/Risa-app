package p312;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.ui.AspectRatioFrameLayout;
import androidx.media3.ui.SubtitleView;
import ar.tvplayer.tv.R;
import ar.tvplayer.tv.player.ui.CustomPlayerView;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import p017.AbstractC0993;
import p055.C1469;
import p055.C1494;
import p055.InterfaceC1462;
import p055.InterfaceC1488;
import p305.AbstractC3731;
import p392.C4644;
import ʽⁱ.ᵎﹶ;

/* renamed from: ᐧⁱ.ˊʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3857 extends FrameLayout {

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public boolean f14917;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public InterfaceC1488 f14918;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final View f14919;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ViewOnClickListenerC3868 f14920;

    /* renamed from: ʿ, reason: contains not printable characters */
    public int f14921;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public boolean f14922;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final FrameLayout f14923;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final Handler f14924;

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public boolean f14925;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final View f14926;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public int f14927;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public Drawable f14928;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final ImageView f14929;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C3869 f14930;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final Object f14931;

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public boolean f14932;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final Method f14933;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public boolean f14934;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final Class f14935;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public boolean f14936;

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public boolean f14937;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final View f14938;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final ImageView f14939;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public boolean f14940;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public int f14941;

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public boolean f14942;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final AspectRatioFrameLayout f14943;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public int f14944;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final boolean f14945;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final TextView f14946;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public CharSequence f14947;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final SubtitleView f14948;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final C3860 f14949;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final FrameLayout f14950;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public InterfaceC3863 f14951;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x029d  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x02f9  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x02b5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AbstractC3857(android.content.Context r24, android.util.AttributeSet r25) {
        /*
            Method dump skipped, instructions count: 803
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p312.AbstractC3857.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    private void setImage(Drawable drawable) {
        ImageView imageView = this.f14939;
        if (imageView == null) {
            return;
        }
        imageView.setImageDrawable(drawable);
        m8039();
    }

    private void setImageOutput(InterfaceC1488 interfaceC1488) {
        Class cls = this.f14935;
        if (cls == null || !cls.isAssignableFrom(interfaceC1488.getClass())) {
            return;
        }
        try {
            Method method = this.f14933;
            method.getClass();
            Object obj = this.f14931;
            obj.getClass();
            method.invoke(interfaceC1488, obj);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m8023(CustomPlayerView customPlayerView, Bitmap bitmap) {
        customPlayerView.setImage(new BitmapDrawable(customPlayerView.getResources(), bitmap));
        if (customPlayerView.m8028()) {
            return;
        }
        ImageView imageView = customPlayerView.f14939;
        if (imageView != null) {
            imageView.setVisibility(0);
            customPlayerView.m8039();
        }
        customPlayerView.m8038();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        C3869 c3869;
        super.dispatchDraw(canvas);
        if (Build.VERSION.SDK_INT == 34 && (c3869 = this.f14930) != null && this.f14917) {
            c3869.m8068();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        ᵎﹶ r0 = this.f14918;
        if (r0 != null && r0.ᐧﹶ(16) && ((C4644) this.f14918).m9246()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        int keyCode = keyEvent.getKeyCode();
        boolean z = keyCode == 19 || keyCode == 270 || keyCode == 22 || keyCode == 271 || keyCode == 20 || keyCode == 269 || keyCode == 21 || keyCode == 268 || keyCode == 23;
        C3860 c3860 = this.f14949;
        if (z && m8032() && !c3860.m8050()) {
            m8034(true);
            return true;
        }
        if ((m8032() && c3860.m8051(keyEvent)) || super.dispatchKeyEvent(keyEvent)) {
            m8034(true);
            return true;
        }
        if (z && m8032()) {
            m8034(true);
        }
        return false;
    }

    public List<C1494> getAdOverlayInfos() {
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.f14950;
        if (frameLayout != null) {
            arrayList.add(new C1494(frameLayout));
        }
        C3860 c3860 = this.f14949;
        if (c3860 != null) {
            arrayList.add(new C1494(c3860));
        }
        return AbstractC0993.m3264(arrayList);
    }

    public ViewGroup getAdViewGroup() {
        FrameLayout frameLayout = this.f14923;
        AbstractC3731.m7851(frameLayout, "exo_ad_overlay must be present for ad playback");
        return frameLayout;
    }

    public int getArtworkDisplayMode() {
        return this.f14927;
    }

    public boolean getControllerAutoShow() {
        return this.f14940;
    }

    public boolean getControllerHideOnTouch() {
        return this.f14942;
    }

    public int getControllerShowTimeoutMs() {
        return this.f14941;
    }

    public Drawable getDefaultArtwork() {
        return this.f14928;
    }

    public int getImageDisplayMode() {
        return this.f14944;
    }

    public FrameLayout getOverlayFrameLayout() {
        return this.f14950;
    }

    public InterfaceC1488 getPlayer() {
        return this.f14918;
    }

    public int getResizeMode() {
        AspectRatioFrameLayout aspectRatioFrameLayout = this.f14943;
        AbstractC3731.m7868(aspectRatioFrameLayout);
        return aspectRatioFrameLayout.getResizeMode();
    }

    public SubtitleView getSubtitleView() {
        return this.f14948;
    }

    @Deprecated
    public boolean getUseArtwork() {
        return this.f14927 != 0;
    }

    public boolean getUseController() {
        return this.f14936;
    }

    public View getVideoSurfaceView() {
        return this.f14926;
    }

    @Override // android.view.View
    public final boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!m8032() || this.f14918 == null) {
            return false;
        }
        m8034(true);
        return true;
    }

    @Override // android.view.View
    public final boolean performClick() {
        m8040();
        return super.performClick();
    }

    public void setArtworkDisplayMode(int i) {
        AbstractC3731.m7857(i == 0 || this.f14929 != null);
        if (this.f14927 != i) {
            this.f14927 = i;
            m8037(false);
        }
    }

    public void setAspectRatioListener(InterfaceC3844 interfaceC3844) {
        AspectRatioFrameLayout aspectRatioFrameLayout = this.f14943;
        AbstractC3731.m7868(aspectRatioFrameLayout);
        aspectRatioFrameLayout.setAspectRatioListener(interfaceC3844);
    }

    public void setControllerAnimationEnabled(boolean z) {
        C3860 c3860 = this.f14949;
        AbstractC3731.m7868(c3860);
        c3860.setAnimationEnabled(z);
    }

    public void setControllerAutoShow(boolean z) {
        this.f14940 = z;
    }

    public void setControllerHideDuringAds(boolean z) {
        this.f14934 = z;
    }

    public void setControllerHideOnTouch(boolean z) {
        AbstractC3731.m7868(this.f14949);
        this.f14942 = z;
        m8030();
    }

    @Deprecated
    public void setControllerOnFullScreenModeChangedListener(InterfaceC3867 interfaceC3867) {
        C3860 c3860 = this.f14949;
        AbstractC3731.m7868(c3860);
        c3860.setOnFullScreenModeChangedListener(interfaceC3867);
    }

    public void setControllerShowTimeoutMs(int i) {
        C3860 c3860 = this.f14949;
        AbstractC3731.m7868(c3860);
        this.f14941 = i;
        if (c3860.m8050()) {
            m8027(m8024());
        }
    }

    public void setControllerVisibilityListener(InterfaceC3845 interfaceC3845) {
        if (interfaceC3845 != null) {
            setControllerVisibilityListener((InterfaceC3863) null);
        }
    }

    @Deprecated
    public void setControllerVisibilityListener(InterfaceC3863 interfaceC3863) {
        C3860 c3860 = this.f14949;
        AbstractC3731.m7868(c3860);
        CopyOnWriteArrayList copyOnWriteArrayList = c3860.f15001;
        InterfaceC3863 interfaceC38632 = this.f14951;
        if (interfaceC38632 == interfaceC3863) {
            return;
        }
        if (interfaceC38632 != null) {
            copyOnWriteArrayList.remove(interfaceC38632);
        }
        this.f14951 = interfaceC3863;
        if (interfaceC3863 != null) {
            copyOnWriteArrayList.add(interfaceC3863);
            setControllerVisibilityListener((InterfaceC3845) null);
        }
    }

    public void setCustomErrorMessage(CharSequence charSequence) {
        AbstractC3731.m7857(this.f14946 != null);
        this.f14947 = charSequence;
        m8025();
    }

    public void setDefaultArtwork(Drawable drawable) {
        if (this.f14928 != drawable) {
            this.f14928 = drawable;
            m8037(false);
        }
    }

    public void setEnableComposeSurfaceSyncWorkaround(boolean z) {
        this.f14917 = z;
    }

    public void setErrorMessageProvider(InterfaceC1462 interfaceC1462) {
        if (interfaceC1462 != null) {
            m8025();
        }
    }

    public void setFullscreenButtonClickListener(InterfaceC3853 interfaceC3853) {
        C3860 c3860 = this.f14949;
        AbstractC3731.m7868(c3860);
        c3860.setOnFullScreenModeChangedListener(this.f14920);
    }

    public void setFullscreenButtonState(boolean z) {
        C3860 c3860 = this.f14949;
        AbstractC3731.m7868(c3860);
        c3860.m8053(z);
    }

    public void setImageDisplayMode(int i) {
        AbstractC3731.m7857(this.f14939 != null);
        if (this.f14944 != i) {
            this.f14944 = i;
            m8039();
        }
    }

    public void setKeepContentOnPlayerReset(boolean z) {
        if (this.f14922 != z) {
            this.f14922 = z;
            m8037(false);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x01e9, code lost:
    
        if (r2 != false) goto L99;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setPlayer(p055.InterfaceC1488 r12) {
        /*
            Method dump skipped, instructions count: 541
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p312.AbstractC3857.setPlayer(ʽⁱ.ᵔٴ):void");
    }

    public void setRepeatToggleModes(int i) {
        C3860 c3860 = this.f14949;
        AbstractC3731.m7868(c3860);
        c3860.setRepeatToggleModes(i);
    }

    public void setShowBuffering(int i) {
        if (this.f14921 != i) {
            this.f14921 = i;
            m8035();
        }
    }

    public void setShowFastForwardButton(boolean z) {
        C3860 c3860 = this.f14949;
        AbstractC3731.m7868(c3860);
        c3860.setShowFastForwardButton(z);
    }

    @Deprecated
    public void setShowMultiWindowTimeBar(boolean z) {
        C3860 c3860 = this.f14949;
        AbstractC3731.m7868(c3860);
        c3860.setShowMultiWindowTimeBar(z);
    }

    public void setShowNextButton(boolean z) {
        C3860 c3860 = this.f14949;
        AbstractC3731.m7868(c3860);
        c3860.setShowNextButton(z);
    }

    public void setShowPlayButtonIfPlaybackIsSuppressed(boolean z) {
        C3860 c3860 = this.f14949;
        AbstractC3731.m7868(c3860);
        c3860.setShowPlayButtonIfPlaybackIsSuppressed(z);
    }

    public void setShowPreviousButton(boolean z) {
        C3860 c3860 = this.f14949;
        AbstractC3731.m7868(c3860);
        c3860.setShowPreviousButton(z);
    }

    public void setShowRewindButton(boolean z) {
        C3860 c3860 = this.f14949;
        AbstractC3731.m7868(c3860);
        c3860.setShowRewindButton(z);
    }

    public void setShowShuffleButton(boolean z) {
        C3860 c3860 = this.f14949;
        AbstractC3731.m7868(c3860);
        c3860.setShowShuffleButton(z);
    }

    public void setShowSubtitleButton(boolean z) {
        C3860 c3860 = this.f14949;
        AbstractC3731.m7868(c3860);
        c3860.setShowSubtitleButton(z);
    }

    public void setShowVrButton(boolean z) {
        C3860 c3860 = this.f14949;
        AbstractC3731.m7868(c3860);
        c3860.setShowVrButton(z);
    }

    public void setShutterBackgroundColor(int i) {
        View view = this.f14919;
        if (view != null) {
            view.setBackgroundColor(i);
        }
    }

    public void setShutterEnabled(boolean z) {
        this.f14932 = z;
    }

    public void setTimeBarScrubbingEnabled(boolean z) {
        C3860 c3860 = this.f14949;
        AbstractC3731.m7868(c3860);
        c3860.setTimeBarScrubbingEnabled(z);
    }

    @Deprecated
    public void setUseArtwork(boolean z) {
        setArtworkDisplayMode(!z ? 1 : 0);
    }

    public void setUseController(boolean z) {
        boolean z2 = true;
        C3860 c3860 = this.f14949;
        AbstractC3731.m7857((z && c3860 == null) ? false : true);
        if (!z && !hasOnClickListeners()) {
            z2 = false;
        }
        setClickable(z2);
        if (this.f14936 == z) {
            return;
        }
        this.f14936 = z;
        if (m8032()) {
            c3860.setPlayer(this.f14918);
        } else if (c3860 != null) {
            c3860.m8059();
            c3860.setPlayer(null);
        }
        m8030();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        View view = this.f14926;
        if (view instanceof SurfaceView) {
            view.setVisibility(i);
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean m8024() {
        InterfaceC1488 interfaceC1488 = this.f14918;
        if (interfaceC1488 == null) {
            return true;
        }
        int m9259 = ((C4644) interfaceC1488).m9259();
        if (!this.f14940) {
            return false;
        }
        if (this.f14918.ᐧﹶ(17) && ((C4644) this.f14918).m9254().m4217()) {
            return false;
        }
        if (m9259 != 1 && m9259 != 4) {
            InterfaceC1488 interfaceC14882 = this.f14918;
            interfaceC14882.getClass();
            if (((C4644) interfaceC14882).m9248()) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void m8025() {
        TextView textView = this.f14946;
        if (textView != null) {
            CharSequence charSequence = this.f14947;
            if (charSequence != null) {
                textView.setText(charSequence);
                textView.setVisibility(0);
                return;
            }
            InterfaceC1488 interfaceC1488 = this.f14918;
            if (interfaceC1488 != null) {
                C4644 c4644 = (C4644) interfaceC1488;
                c4644.m9241();
                ExoPlaybackException exoPlaybackException = c4644.f17415.f17594;
            }
            textView.setVisibility(8);
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean m8026() {
        ᵎﹶ r0 = this.f14918;
        return r0 != null && this.f14931 != null && r0.ᐧﹶ(30) && ((C4644) r0).m9236().m4244(4);
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m8027(boolean z) {
        if (m8032()) {
            int i = z ? 0 : this.f14941;
            C3860 c3860 = this.f14949;
            c3860.setShowTimeoutMs(i);
            C3840 c3840 = c3860.f14966;
            C3860 c38602 = c3840.f14874;
            if (!c38602.m8064()) {
                c38602.setVisibility(0);
                c38602.m8052();
                ImageView imageView = c38602.f15026;
                if (imageView != null) {
                    imageView.requestFocus();
                }
            }
            c3840.m8006();
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean m8028() {
        ᵎﹶ r0 = this.f14918;
        return r0 != null && r0.ᐧﹶ(30) && ((C4644) r0).m9236().m4244(2);
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m8029() {
        C1469 c1469;
        InterfaceC1488 interfaceC1488 = this.f14918;
        if (interfaceC1488 != null) {
            C4644 c4644 = (C4644) interfaceC1488;
            c4644.m9241();
            c1469 = c4644.f17390;
        } else {
            c1469 = C1469.f5752;
        }
        int i = c1469.f5755;
        int i2 = c1469.f5754;
        float f = this.f14945 ? 0.0f : (i2 == 0 || i == 0) ? 0.0f : (i * c1469.f5753) / i2;
        AspectRatioFrameLayout aspectRatioFrameLayout = this.f14943;
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setAspectRatio(f);
        }
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m8030() {
        C3860 c3860 = this.f14949;
        if (c3860 == null || !this.f14936) {
            setContentDescription(null);
        } else if (c3860.m8050()) {
            setContentDescription(this.f14942 ? getResources().getString(R.string.5c5) : null);
        } else {
            setContentDescription(getResources().getString(R.string.1v0));
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m8031() {
        ImageView imageView = this.f14939;
        if (imageView != null) {
            imageView.setVisibility(4);
        }
        if (imageView != null) {
            imageView.setImageResource(android.R.color.transparent);
        }
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final boolean m8032() {
        if (!this.f14936) {
            return false;
        }
        AbstractC3731.m7868(this.f14949);
        return true;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m8033(boolean z) {
        View view = this.f14919;
        if (view == null || view.getVisibility() == 0) {
            return;
        }
        view.setVisibility(0);
        if (!z) {
            view.setAlpha(1.0f);
        } else {
            view.setAlpha(0.0f);
            view.animate().alpha(1.0f).withLayer().setDuration(150L);
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m8034(boolean z) {
        if (!(m8041() && this.f14934) && m8032()) {
            C3860 c3860 = this.f14949;
            boolean z2 = c3860.m8050() && c3860.getShowTimeoutMs() <= 0;
            boolean m8024 = m8024();
            if (z || z2 || m8024) {
                m8027(m8024);
            }
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public abstract void m8035();

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final boolean m8036(Drawable drawable) {
        ImageView imageView = this.f14929;
        if (imageView != null && drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                float f = intrinsicWidth / intrinsicHeight;
                ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
                if (this.f14927 == 2) {
                    f = getWidth() / getHeight();
                    scaleType = ImageView.ScaleType.CENTER_CROP;
                }
                AspectRatioFrameLayout aspectRatioFrameLayout = this.f14943;
                if (aspectRatioFrameLayout != null) {
                    aspectRatioFrameLayout.setAspectRatio(f);
                }
                imageView.setScaleType(scaleType);
                imageView.setImageDrawable(drawable);
                imageView.setVisibility(0);
                return true;
            }
        }
        return false;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void m8037(boolean z) {
        Drawable drawable;
        ᵎﹶ r0 = this.f14918;
        boolean z2 = false;
        boolean z3 = (r0 == null || !r0.ᐧﹶ(30) || ((C4644) r0).m9236().f5658.isEmpty()) ? false : true;
        boolean z4 = this.f14922;
        ImageView imageView = this.f14929;
        if (!z4 && (!z3 || z)) {
            if (imageView != null) {
                imageView.setImageResource(android.R.color.transparent);
                imageView.setVisibility(4);
            }
            m8038();
            m8031();
        }
        if (z3) {
            boolean m8028 = m8028();
            boolean m8026 = m8026();
            if (!m8028 && !m8026) {
                m8038();
                m8031();
            }
            ImageView imageView2 = this.f14939;
            View view = this.f14919;
            boolean z5 = (view == null || view.getVisibility() != 4 || imageView2 == null || (drawable = imageView2.getDrawable()) == null || drawable.getAlpha() == 0) ? false : true;
            if (m8026 && !m8028 && z5) {
                m8038();
                if (imageView2 != null) {
                    imageView2.setVisibility(0);
                    m8039();
                }
            } else if (m8028 && !m8026 && z5) {
                m8031();
            }
            if (!m8028 && !m8026 && this.f14927 != 0) {
                AbstractC3731.m7868(imageView);
                if (r0 != null && r0.ᐧﹶ(18)) {
                    C4644 c4644 = (C4644) r0;
                    c4644.m9241();
                    byte[] bArr = c4644.f17395.f5832;
                    if (bArr != null) {
                        z2 = m8036(new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length)));
                    }
                }
                if (z2 || m8036(this.f14928)) {
                    return;
                }
            }
            if (imageView != null) {
                imageView.setImageResource(android.R.color.transparent);
                imageView.setVisibility(4);
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m8038() {
        if (!this.f14932 || this.f14937) {
            return;
        }
        m8033(true);
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m8039() {
        Drawable drawable;
        AspectRatioFrameLayout aspectRatioFrameLayout;
        ImageView imageView = this.f14939;
        if (imageView == null || (drawable = imageView.getDrawable()) == null) {
            return;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            return;
        }
        float f = intrinsicWidth / intrinsicHeight;
        ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
        if (this.f14944 == 1) {
            f = getWidth() / getHeight();
            scaleType = ImageView.ScaleType.CENTER_CROP;
        }
        if (imageView.getVisibility() == 0 && (aspectRatioFrameLayout = this.f14943) != null) {
            aspectRatioFrameLayout.setAspectRatio(f);
        }
        imageView.setScaleType(scaleType);
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m8040() {
        if (!m8032() || this.f14918 == null) {
            return;
        }
        C3860 c3860 = this.f14949;
        if (!c3860.m8050()) {
            m8034(true);
        } else if (this.f14942) {
            c3860.m8059();
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean m8041() {
        ᵎﹶ r0 = this.f14918;
        return r0 != null && r0.ᐧﹶ(16) && ((C4644) this.f14918).m9246() && ((C4644) this.f14918).m9248();
    }
}
